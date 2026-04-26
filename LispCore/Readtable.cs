using System;
using System.Collections.Generic;
using System.Globalization;

namespace Lisp
{
    /// <summary>
    /// Defines the case-conversion behavior of the Lisp reader.
    /// </summary>
    public enum ReadtableCase
    {
        Upcase,
        Downcase,
        Preserve,
        Invert
    }

    /// <summary>
    /// Defines the syntactic type of a character for the Lisp reader.
    /// </summary>
    public enum SyntaxType
    {
        Invalid,
        Constituent,
        Whitespace,
        TerminatingMacro,
        NonTerminatingMacro,
        SingleEscape,
        MultipleEscape
    }

    /// <summary>
    /// A delegate representing a reader macro function.
    /// </summary>
    /// <param name="reader">The reader instance.</param>
    /// <param name="c">The character that triggered the macro.</param>
    /// <returns>The object read by the macro, or null if no object was produced.</returns>
    public delegate object? ReaderMacroDelegate(Reader reader, char c);

    /// <summary>
    /// A delegate representing a dispatch reader macro function.
    /// </summary>
    /// <param name="reader">The reader instance.</param>
    /// <param name="c">The dispatch character (e.g., '#').</param>
    /// <param name="subChar">The sub-character (e.g., 'x').</param>
    /// <param name="param">The optional numeric parameter.</param>
    /// <returns>The object read by the macro, or null if no object was produced.</returns>
    public delegate object? DispatchMacroDelegate(Reader reader, char c, char subChar, int? param);

    /// <summary>
    /// A readtable holds the mapping from every character to its syntax type and macro functions.
    /// </summary>
    public class Readtable
    {
        private readonly Dictionary<char, SyntaxType> syntaxTypes = new Dictionary<char, SyntaxType>();
        private readonly Dictionary<UnicodeCategory, SyntaxType> categorySyntaxTypes = new Dictionary<UnicodeCategory, SyntaxType>();
        private readonly Dictionary<char, ReaderMacroDelegate> macroFunctions = new Dictionary<char, ReaderMacroDelegate>();
        private readonly Dictionary<char, Dictionary<char, DispatchMacroDelegate>> dispatchTables = new Dictionary<char, Dictionary<char, DispatchMacroDelegate>>();
        
        private static readonly Readtable standardReadtable;

        /// <summary>
        /// Controls the case-conversion behavior of the reader.
        /// </summary>
        public ReadtableCase Case { get; set; } = ReadtableCase.Upcase;

        /// <summary>
        /// Gets the standard, default readtable. This returns a COPY of the standard readtable.
        /// </summary>
        public static Readtable StandardReadtable => standardReadtable.Copy();

        /// <summary>
        /// Gets or sets the current readtable via the *READTABLE* symbol.
        /// </summary>
        public static Readtable Current
        {
            get
            {
                if (CL._StrReadtableStr != null && CL._StrReadtableStr.BoundP)
                    return (Readtable)CL.StrReadtableStr!;
                return standardReadtable;
                }
                set
                {
                if (CL._StrReadtableStr != null)
                    CL.StrReadtableStr = value;
            }
        }

        static Readtable()
        {
            standardReadtable = new Readtable();
            InitializeStandardSyntax(standardReadtable);
        }

        public Readtable() { }

        /// <summary>
        /// Creates a copy of this readtable. (CLHS: copy-readtable)
        /// </summary>
        public Readtable Copy()
        {
            var other = new Readtable();
            foreach (var kvp in syntaxTypes) other.syntaxTypes[kvp.Key] = kvp.Value;
            foreach (var kvp in categorySyntaxTypes) other.categorySyntaxTypes[kvp.Key] = kvp.Value;
            foreach (var kvp in macroFunctions) other.macroFunctions[kvp.Key] = kvp.Value;
            foreach (var kvp in dispatchTables)
            {
                other.dispatchTables[kvp.Key] = new Dictionary<char, DispatchMacroDelegate>(kvp.Value);
            }
            other.Case = this.Case;
            return other;
        }

        public SyntaxType GetSyntax(char c)
        {
            if (syntaxTypes.TryGetValue(c, out var type)) return type;
            var category = char.GetUnicodeCategory(c);
            if (categorySyntaxTypes.TryGetValue(category, out var categoryType)) return categoryType;
            return SyntaxType.Constituent;
        }

        public void SetSyntax(char c, SyntaxType type) => syntaxTypes[c] = type;
        public void SetSyntax(UnicodeCategory category, SyntaxType type) => categorySyntaxTypes[category] = type;

        /// <summary>
        /// Sets a macro character and its associated function. (CLHS: set-macro-character)
        /// </summary>
        public void SetMacroCharacter(char c, ReaderMacroDelegate function, bool nonTerminatingP = false)
        {
            SetSyntax(c, nonTerminatingP ? SyntaxType.NonTerminatingMacro : SyntaxType.TerminatingMacro);
            macroFunctions[c] = function;
        }

        /// <summary>
        /// Gets the macro function for a character. (CLHS: get-macro-character)
        /// </summary>
        public (ReaderMacroDelegate? function, bool nonTerminatingP) GetMacroCharacter(char c)
        {
            var type = GetSyntax(c);
            if (type == SyntaxType.TerminatingMacro || type == SyntaxType.NonTerminatingMacro)
            {
                macroFunctions.TryGetValue(c, out var func);
                return (func, type == SyntaxType.NonTerminatingMacro);
            }
            return (null, false);
        }

        /// <summary>
        /// Makes a character a dispatch macro character. (CLHS: make-dispatch-macro-character)
        /// </summary>
        public void MakeDispatchMacroCharacter(char c, bool nonTerminatingP = false)
        {
            SetSyntax(c, nonTerminatingP ? SyntaxType.NonTerminatingMacro : SyntaxType.TerminatingMacro);
            dispatchTables[c] = new Dictionary<char, DispatchMacroDelegate>();
            // The actual dispatching logic will be in the Reader class, but we need a marker function here
            // or we can just use a special delegate.
            macroFunctions[c] = (reader, ch) => reader.HandleDispatchMacro(ch);
        }

        /// <summary>
        /// Sets a dispatch macro function for a sub-character. (CLHS: set-dispatch-macro-character)
        /// </summary>
        public void SetDispatchMacroCharacter(char dispChar, char subChar, DispatchMacroDelegate function)
        {
            if (!dispatchTables.TryGetValue(dispChar, out var table))
                throw new InvalidOperationException($"Character '{dispChar}' is not a dispatch macro character.");
            table[char.ToUpper(subChar)] = function;
        }

        /// <summary>
        /// Gets a dispatch macro function. (CLHS: get-dispatch-macro-character)
        /// </summary>
        public DispatchMacroDelegate? GetDispatchMacroCharacter(char dispChar, char subChar)
        {
            if (dispatchTables.TryGetValue(dispChar, out var table))
            {
                table.TryGetValue(char.ToUpper(subChar), out var func);
                return func;
            }
            return null;
        }

        private static void InitializeStandardSyntax(Readtable table)
        {
            table.SetSyntax(' ', SyntaxType.Whitespace);
            table.SetSyntax('\t', SyntaxType.Whitespace);
            table.SetSyntax('\n', SyntaxType.Whitespace);
            table.SetSyntax('\r', SyntaxType.Whitespace);
            table.SetSyntax('\f', SyntaxType.Whitespace);

            table.SetSyntax('(', SyntaxType.TerminatingMacro);
            table.SetSyntax(')', SyntaxType.TerminatingMacro);
            table.SetSyntax('\'', SyntaxType.TerminatingMacro);
            table.SetSyntax(';', SyntaxType.TerminatingMacro);
            table.SetSyntax('"', SyntaxType.TerminatingMacro);
            table.SetSyntax('`', SyntaxType.TerminatingMacro);
            table.SetSyntax(',', SyntaxType.TerminatingMacro);
            table.SetSyntax(':', SyntaxType.Constituent);
            table.SetSyntax('\\', SyntaxType.SingleEscape);
            table.SetSyntax('|', SyntaxType.MultipleEscape);

            table.SetMacroCharacter('(', (r, c) => r.ReadList());
            table.SetMacroCharacter(')', (r, c) => Reader.CloseParenMarker);
            table.SetMacroCharacter('\'', (r, c) => r.ReadQuote());
            table.SetMacroCharacter('`', (r, c) => r.ReadBackquote());
            table.SetMacroCharacter(',', (r, c) => r.ReadComma());
            table.SetMacroCharacter(';', (r, c) => { r.ReadLineComment(); return null; });
            table.SetMacroCharacter('"', (r, c) => r.ReadString());

            table.SetSyntax('#', SyntaxType.NonTerminatingMacro);
            table.MakeDispatchMacroCharacter('#', nonTerminatingP: true);
            
            table.SetDispatchMacroCharacter('#', '+', (r, c, s, p) => r.HandleConditional(true));
            table.SetDispatchMacroCharacter('#', '-', (r, c, s, p) => r.HandleConditional(false));
            table.SetDispatchMacroCharacter('#', '(', (r, c, s, p) => r.HandleVector());
            table.SetDispatchMacroCharacter('#', '*', (r, c, s, p) => r.HandleBitVector());
            table.SetDispatchMacroCharacter('#', 'C', (r, c, s, p) => r.HandleComplex());
            table.SetDispatchMacroCharacter('#', '\\', (r, c, s, p) => r.HandleCharacter());
            table.SetDispatchMacroCharacter('#', 'X', (r, c, s, p) => r.HandleRadix(16));
            table.SetDispatchMacroCharacter('#', 'O', (r, c, s, p) => r.HandleRadix(8));
            table.SetDispatchMacroCharacter('#', 'B', (r, c, s, p) => r.HandleRadix(2));
            table.SetDispatchMacroCharacter('#', ':', (r, c, s, p) => r.HandleUninternedSymbol());
            table.SetDispatchMacroCharacter('#', '.', (r, c, s, p) => r.HandleReadTimeEvaluation());
            table.SetDispatchMacroCharacter('#', '\'', (r, c, s, p) => r.HandleFunction());
            table.SetDispatchMacroCharacter('#', '|', (r, c, s, p) => { r.HandleBlockComment(); return null; });
            table.SetDispatchMacroCharacter('#', 'A', (r, c, s, p) => r.HandleArray(p));
        }
    }
}
