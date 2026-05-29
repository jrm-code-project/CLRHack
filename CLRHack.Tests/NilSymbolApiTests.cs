using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class NilSymbolApiTests
    {
        [Fact]
        public void SymbolpTreatsNullAsNilSymbol()
        {
            MopRuntime.Initialize();
            var (symbolpSym, status) = Package.CommonLisp.FindSymbol("SYMBOLP");
            Assert.Equal(SymbolStatus.External, status);
            Assert.NotNull(symbolpSym);

            var fn = Assert.IsAssignableFrom<Closure>(symbolpSym!.Function);
            Assert.Same(CL.T, fn.Invoke((object?)null));
            Assert.Null(fn.Invoke(42));
        }

        [Fact]
        public void SymbolNameAcceptsNullAsNil()
        {
            MopRuntime.Initialize();
            var (symbolNameSym, status) = Package.CommonLisp.FindSymbol("SYMBOL-NAME");
            Assert.Equal(SymbolStatus.External, status);
            Assert.NotNull(symbolNameSym);

            var fn = Assert.IsAssignableFrom<Closure>(symbolNameSym!.Function);
            Assert.Equal("NIL", fn.Invoke((object?)null));
            Assert.Equal("T", fn.Invoke(CL._T));
        }

        [Fact]
        public void SymbolPackageAcceptsNullAsNil()
        {
            MopRuntime.Initialize();
            var (symbolPackageSym, status) = Package.CommonLisp.FindSymbol("SYMBOL-PACKAGE");
            Assert.Equal(SymbolStatus.External, status);
            Assert.NotNull(symbolPackageSym);

            var fn = Assert.IsAssignableFrom<Closure>(symbolPackageSym!.Function);
            Assert.Same(Package.CommonLisp, fn.Invoke((object?)null));
            Assert.Same(Package.CommonLisp, fn.Invoke(CL._T));
        }
    }
}
