using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class CLTests
    {
        [Fact]
        public void TestCLSymbolsAreInitialized()
        {
            Assert.NotNull(CL._And);
            Assert.Equal("AND", CL._And.Name);
            var (_, status) = Package.CommonLisp.FindSymbol("AND");
            Assert.Equal(SymbolStatus.External, status);
            Assert.Same(Package.CommonLisp, CL._And.Package);
            
            Assert.NotNull(CL._Pls);
            Assert.Equal("+", CL._Pls.Name);
            
            Assert.NotNull(CL._Nil);
            Assert.Equal("NIL", CL._Nil.Name);
            
            Assert.NotNull(CL._T);
            Assert.Equal("T", CL._T.Name);
        }
    }
}
