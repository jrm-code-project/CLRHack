using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class PackageFeatureTests
    {
        [Fact]
        public void TestFindPackage()
        {
            var cl = Package.Find("COMMON-LISP");
            Assert.NotNull(cl);
            Assert.Equal("COMMON-LISP", cl.Name);

            var clByNick = Package.Find("CL");
            Assert.Same(cl, clByNick);
        }

        [Fact]
        public void TestUsePackageAndFindSymbol()
        {
            var myPackage = new Package("MY-PACKAGE");
            var libPackage = new Package("LIB-PACKAGE");

            var libSymbol = libPackage.Intern("LIB-FUNCTION");
            libPackage.Export(libSymbol);

            myPackage.UsePackage(libPackage);

            var (foundSymbol, status) = myPackage.FindSymbol("LIB-FUNCTION");
            Assert.Same(libSymbol, foundSymbol);
            Assert.Equal(SymbolStatus.Inherited, status);
        }

        [Fact]
        public void TestUnexportedSymbolIsNotInherited()
        {
            var myPackage = new Package("MY-PACKAGE-2");
            var libPackage = new Package("LIB-PACKAGE-2");

            var libSymbol = libPackage.Intern("INTERNAL-FUNCTION");
            // Note: We do NOT export the symbol

            myPackage.UsePackage(libPackage);

            var (foundSymbol, status) = myPackage.FindSymbol("INTERNAL-FUNCTION");
            Assert.Null(foundSymbol);
            Assert.Equal(SymbolStatus.None, status);
        }

        [Fact]
        public void TestShadowing()
        {
            var myPackage = new Package("MY-PACKAGE-3");
            var libPackage = new Package("LIB-PACKAGE-3");

            var libSymbol = libPackage.Intern("CONFLICT-SYMBOL");
            libPackage.Export(libSymbol);

            myPackage.UsePackage(libPackage);
            myPackage.Shadow("CONFLICT-SYMBOL");

            // Shadowing prevents the symbol from being found via inheritance
            var (foundSymbol, status) = myPackage.FindSymbol("CONFLICT-SYMBOL");
            Assert.Null(foundSymbol);
            Assert.Equal(SymbolStatus.None, status);

            // Interning it creates a new, local symbol
            var mySymbol = myPackage.Intern("CONFLICT-SYMBOL");
            Assert.NotSame(libSymbol, mySymbol);
            
            var (foundAgain, statusAgain) = myPackage.FindSymbol("CONFLICT-SYMBOL");
            Assert.Same(mySymbol, foundAgain);
            Assert.Equal(SymbolStatus.Internal, statusAgain);
        }

        [Fact]
        public void TestLocalSymbolOverridesUsedSymbol()
        {
            var myPackage = new Package("MY-PACKAGE-4");
            var libPackage = new Package("LIB-PACKAGE-4");

            var libSymbol = libPackage.Intern("MY-SYMBOL");
            libPackage.Export(libSymbol);
            var mySymbol = myPackage.Intern("MY-SYMBOL");

            myPackage.UsePackage(libPackage);

            var (foundSymbol, status) = myPackage.FindSymbol("MY-SYMBOL");
            Assert.Same(mySymbol, foundSymbol);
            Assert.NotSame(libSymbol, foundSymbol);
            Assert.Equal(SymbolStatus.Internal, status);
        }
    }
}
