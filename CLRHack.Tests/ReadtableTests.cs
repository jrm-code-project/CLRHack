using Xunit;
using Lisp;
using System.Globalization;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class ReadtableTests
    {
        [Fact]
        public void TestStandardWhitespace()
        {
            var rt = Readtable.StandardReadtable;
            Assert.Equal(SyntaxType.Whitespace, rt.GetSyntax(' '));
            Assert.Equal(SyntaxType.Whitespace, rt.GetSyntax('\t'));
            Assert.Equal(SyntaxType.Whitespace, rt.GetSyntax('\n'));
            Assert.Equal(SyntaxType.Whitespace, rt.GetSyntax('\r'));
        }

        [Fact]
        public void TestStandardTerminatingMacros()
        {
            var rt = Readtable.StandardReadtable;
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax('('));
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax(')'));
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax('\''));
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax(';'));
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax('"'));
        }

        [Fact]
        public void TestStandardEscapeCharacters()
        {
            var rt = Readtable.StandardReadtable;
            Assert.Equal(SyntaxType.SingleEscape, rt.GetSyntax('\\'));
            Assert.Equal(SyntaxType.MultipleEscape, rt.GetSyntax('|'));
        }

        [Fact]
        public void TestDefaultConstituentCharacters()
        {
            var rt = Readtable.StandardReadtable;
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('a'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('Z'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('0'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('9'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('-'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('*'));
        }

        [Fact]
        public void TestReadtableCopyIsIndependent()
        {
            var rt1 = Readtable.StandardReadtable;
            var rt2 = rt1.Copy();

            rt2.SetSyntax('a', SyntaxType.Whitespace);

            Assert.Equal(SyntaxType.Constituent, rt1.GetSyntax('a'));
            Assert.Equal(SyntaxType.Whitespace, rt2.GetSyntax('a'));
        }
        
        [Fact]
        public void TestStandardReadtableIsACopy()
        {
            var rt1 = Readtable.StandardReadtable;
            rt1.SetSyntax('a', SyntaxType.Whitespace);

            var rt2 = Readtable.StandardReadtable;

            Assert.Equal(SyntaxType.Constituent, rt2.GetSyntax('a'));
            Assert.Equal(SyntaxType.Whitespace, rt1.GetSyntax('a'));
        }

        [Fact]
        public void TestSetSyntaxForUnicodeCategory()
        {
            var rt = new Readtable();
            rt.SetSyntax(UnicodeCategory.DashPunctuation, SyntaxType.Constituent);
            
            // Both '-' (Hyphen-Minus) and '—' (Em Dash) are DashPunctuation
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('-'));
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('—'));
        }

        [Fact]
        public void TestCharacterSyntaxOverridesCategorySyntax()
        {
            var rt = new Readtable();
            rt.SetSyntax(UnicodeCategory.CurrencySymbol, SyntaxType.Constituent);
            rt.SetSyntax('$', SyntaxType.TerminatingMacro);

            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('€')); // Euro symbol
            Assert.Equal(SyntaxType.Constituent, rt.GetSyntax('£')); // Pound symbol
            Assert.Equal(SyntaxType.TerminatingMacro, rt.GetSyntax('$')); // Dollar symbol is overridden
        }
    }
}
