using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class PrinterTests : System.IDisposable
    {
        private readonly object? originalLevel;
        private readonly object? originalLength;

        public PrinterTests()
        {
            originalLevel = CL.StrPrintLevelStr;
            originalLength = CL.StrPrintLengthStr;
        }

        public void Dispose()
        {
            CL.StrPrintLevelStr = originalLevel;
            CL.StrPrintLengthStr = originalLength;
        }

        [Fact]
        public void TestPrintLevel()
        {
            var list = AdtList.Of(1, AdtList.Of(2, AdtList.Of(3, 4)));
            
            CL.StrPrintLevelStr = CL.Nil;
            Assert.Equal("(1 (2 (3 4)))", list.ToString());

            CL.StrPrintLevelStr = 0;
            Assert.Equal("#", list.ToString());

            CL.StrPrintLevelStr = 1;
            Assert.Equal("(1 #)", list.ToString());

            CL.StrPrintLevelStr = 2;
            Assert.Equal("(1 (2 #))", list.ToString());
        }

        [Fact]
        public void TestPrintLength()
        {
            var list = AdtList.Of(1, 2, 3, 4, 5);

            CL.StrPrintLengthStr = CL.Nil;
            Assert.Equal("(1 2 3 4 5)", list.ToString());

            CL.StrPrintLengthStr = 0;
            Assert.Equal("(...)", list.ToString());

            CL.StrPrintLengthStr = 2;
            Assert.Equal("(1 2 ...)", list.ToString());

            CL.StrPrintLengthStr = 5;
            Assert.Equal("(1 2 3 4 5)", list.ToString());
        }

        [Fact]
        public void TestGenericPrintLevel()
        {
            var list = Lisp.Generic.AdtList.Of(1, 2, 3);
            
            CL.StrPrintLevelStr = 0;
            Assert.Equal("#", list.ToString());

            CL.StrPrintLevelStr = 1;
            Assert.Equal("(1 2 3)", list.ToString());
        }

        [Fact]
        public void TestGenericPrintLength()
        {
            var list = Lisp.Generic.AdtList.Of(1, 2, 3, 4, 5);

            CL.StrPrintLengthStr = 2;
            Assert.Equal("(1 2 ...)", list.ToString());
        }
        
        [Fact]
        public void TestDottedListPrintLength()
        {
            var list = AdtList.Cons(1, AdtList.Cons(2, 3));
            
            CL.StrPrintLengthStr = 1;
            Assert.Equal("(1 ...)", list.ToString());
            
            CL.StrPrintLengthStr = 2;
            Assert.Equal("(1 2 . 3)", list.ToString());
        }
    }
}
