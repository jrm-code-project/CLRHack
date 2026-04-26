using System;
using System.Collections.Generic;
using System.Linq;

namespace Lisp
{
    public enum SymbolStatus
    {
        None,
        Internal,
        External,
        Inherited
    }

    public class Package
    {
        // Global registry of all packages
        private static readonly Dictionary<string, Package> allPackages = new Dictionary<string, Package>();

        private readonly Dictionary<string, Symbol> presentSymbols = new Dictionary<string, Symbol>();
        private readonly HashSet<string> externalSymbolNames = new HashSet<string>();
        private readonly HashSet<string> shadowingSymbolNames = new HashSet<string>();
        private readonly System.Collections.Generic.List<Package> usedPackages = new System.Collections.Generic.List<Package>();
        private readonly System.Collections.Generic.List<string> nicknames = new System.Collections.Generic.List<string>();

        public static Package CommonLisp;
        public static Package CommonLispUser;
        public static Package Keyword;
        public static Package System;
        private static Package? initialCurrent;
        public static Package? Current
        {
            get
            {
                var sym = CommonLisp?.FindSymbol("*PACKAGE*").symbol;
                if (sym != null && sym.BoundP)
                    return sym.Value as Package;
                return initialCurrent;
            }
            set
            {
                var sym = CommonLisp?.FindSymbol("*PACKAGE*").symbol;
                if (sym != null) sym.Value = value;
                else initialCurrent = value;
            }
        }

        public string Name { get; private set; }
        public IReadOnlyList<string> Nicknames => nicknames;
        public IReadOnlyList<Package> UsedPackages => usedPackages;

        static Package()
        {
            CommonLisp = new Package("COMMON-LISP", new[] { "CL" });
            // CL.Initialize(); // Removed to avoid circular dependency
            Keyword = new Package("KEYWORD");
            CommonLispUser = new Package("COMMON-LISP-USER", new[] { "CL-USER" });
            CommonLispUser.UsePackage(CommonLisp);
            System = new Package("SYSTEM", new[] { "SYS" });
            System.UsePackage(CommonLisp);
            Current = CommonLispUser;
        }

        public Package(string name, IEnumerable<string>? nicknames = null)
        {
            Name = name.ToUpper();
            allPackages[Name] = this;
            if (nicknames != null)
            {
                foreach (var nick in nicknames)
                {
                    AddNickname(nick);
                }
            }
        }

        public void AddNickname(string nickname)
        {
            var upperNick = nickname.ToUpper();
            if (allPackages.ContainsKey(upperNick))
            {
                if (allPackages[upperNick] == this) return;
                throw new InvalidOperationException($"Package name or nickname '{nickname}' already exists.");
            }
            
            nicknames.Add(upperNick);
            allPackages[upperNick] = this;
        }

        public void UsePackage(Package packageToUse)
        {
            if (packageToUse == this) return;
            if (!usedPackages.Contains(packageToUse))
            {
                // Check for name conflicts
                foreach (var sym in packageToUse.ExternalSymbols)
                {
                    var (existing, status) = FindSymbol(sym.Name);
                    if (existing != null && existing != sym && status != SymbolStatus.Internal && status != SymbolStatus.External)
                    {
                        // Conflict only if the existing symbol is NOT present (i.e., it's inherited from another package)
                        // If it's already present, it shadows the new one.
                        throw new InvalidOperationException($"Name conflict: Symbol '{sym.Name}' is already accessible in package '{Name}'.");
                    }
                }
                usedPackages.Add(packageToUse);
            }
        }

        public void UnusePackage(Package packageToUnuse)
        {
            usedPackages.Remove(packageToUnuse);
        }

        public void Shadow(string symbolName)
        {
            shadowingSymbolNames.Add(symbolName);
        }

        public Symbol Intern(string symbolName)
        {
            var (symbol, status) = FindSymbol(symbolName);
            if (status != SymbolStatus.None)
            {
                return symbol!;
            }

            Symbol newSymbol;
            if (this == Keyword)
            {
                newSymbol = new Keyword(symbolName, this);
                presentSymbols[symbolName] = newSymbol;
                Export(newSymbol);
            }
            else
            {
                newSymbol = new Symbol(symbolName, this);
                presentSymbols[symbolName] = newSymbol;
            }
            
            return newSymbol;
        }

        public (Symbol? symbol, SymbolStatus status) FindSymbol(string name)
        {
            // 1. Check present symbols
            if (presentSymbols.TryGetValue(name, out var symbol))
            {
                if (externalSymbolNames.Contains(name))
                    return (symbol, SymbolStatus.External);
                return (symbol, SymbolStatus.Internal);
            }

            // 2. Check inherited symbols
            if (shadowingSymbolNames.Contains(name))
            {
                return (null, SymbolStatus.None);
            }

            foreach (var usedPackage in usedPackages)
            {
                var (usedSymbol, status) = usedPackage.FindSymbol(name);
                if (status == SymbolStatus.External)
                {
                    return (usedSymbol, SymbolStatus.Inherited);
                }
            }

            return (null, SymbolStatus.None);
        }

        public void Export(Symbol symbol)
        {

            var name = symbol.Name;
            var (existing, status) = FindSymbol(name);
            
            if (status == SymbolStatus.None || status == SymbolStatus.Inherited)
            {
                Import(symbol);
            }

            externalSymbolNames.Add(name);
        }

        public void Unexport(Symbol symbol)
        {
            externalSymbolNames.Remove(symbol.Name);
        }

        public void Import(Symbol symbol)
        {
            var name = symbol.Name;
            var (existing, status) = FindSymbol(name);

            if (status != SymbolStatus.None && existing != symbol)
            {
                throw new InvalidOperationException($"Name conflict: Symbol '{name}' is already accessible in package '{Name}'.");
            }

            presentSymbols[name] = symbol;
        }

        public void ShadowingImport(Symbol symbol)
        {
            var name = symbol.Name;
            shadowingSymbolNames.Add(name);
            presentSymbols[name] = symbol;
        }

        public bool Unintern(Symbol symbol)
        {
            var name = symbol.Name;
            bool wasPresent = presentSymbols.Remove(name);
            externalSymbolNames.Remove(name);
            shadowingSymbolNames.Remove(name);
            return wasPresent;
        }

        public IEnumerable<Symbol> ExternalSymbols => externalSymbolNames.Select(name => presentSymbols[name]);

        public IEnumerable<Symbol> AllSymbols
        {
            get
            {
                foreach (var sym in presentSymbols.Values) yield return sym;
                foreach (var usedPackage in usedPackages)
                {
                    foreach (var sym in usedPackage.ExternalSymbols)
                    {
                        if (!presentSymbols.ContainsKey(sym.Name) && !shadowingSymbolNames.Contains(sym.Name))
                        {
                            yield return sym;
                        }
                    }
                }
            }
        }

        public static Package? Find(string name)
        {
            if (allPackages.TryGetValue(name.ToUpper(), out var package))
            {
                return package;
            }
            return null;
        }

        public static Package Create(string name, IEnumerable<string>? nicknames = null)
        {
            return new Package(name, nicknames);
        }

        public static IEnumerable<Package> ListAllPackages()
        {
            return allPackages.Values.Distinct();
        }

        public void Rename(string newName, IEnumerable<string>? newNicknames = null)
        {
            var oldName = Name;
            var upperNewName = newName.ToUpper();
            
            if (upperNewName != oldName && allPackages.ContainsKey(upperNewName))
                throw new InvalidOperationException($"Package name '{newName}' already exists.");

            // Remove old name and nicknames from registry
            allPackages.Remove(oldName);
            foreach (var nick in nicknames) allPackages.Remove(nick);

            Name = upperNewName;
            nicknames.Clear();
            allPackages[Name] = this;

            if (newNicknames != null)
            {
                foreach (var nick in newNicknames) AddNickname(nick);
            }
        }

        public static void Delete(Package package)
        {
            allPackages.Remove(package.Name);
            foreach (var nick in package.nicknames) allPackages.Remove(nick);
            
            // Remove from used-by lists of other packages
            foreach (var p in allPackages.Values)
            {
                p.usedPackages.Remove(package);
            }
        }
    }
}
