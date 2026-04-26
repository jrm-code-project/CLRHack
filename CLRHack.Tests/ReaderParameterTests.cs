using Lisp;
using Xunit;
using System.IO;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class ReaderParameterTests : System.IDisposable
    {
        private readonly object? originalBase;
        private readonly object? originalSuppress;

        public ReaderParameterTests()
        {
            originalBase = CL.StrReadBaseStr;
            originalSuppress = CL.StrReadSuppressStr;
        }

        public void Dispose()
        {
            CL.StrReadBaseStr = originalBase;
            CL.StrReadSuppressStr = originalSuppress;
        }

        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.ReadSingleObject();
        }

        [Fact]
        public void TestReadBase16()
        {
            CL.StrReadBaseStr = 16;
            var result = ReadString("FF");
            Assert.Equal(255, result);
            
            var result2 = ReadString("-1A");
            Assert.Equal(-26, result2);
        }

        [Fact]
        public void TestReadBase2()
        {
            CL.StrReadBaseStr = 2;
            var result = ReadString("1010");
            Assert.Equal(10, result);
            
            // In base 2, "12" is a symbol because 2 is not a valid digit
            var result2 = ReadString("12");
            Assert.IsType<Symbol>(result2);
            Assert.Equal("12", ((Symbol)result2).Name);
        }

        [Fact]
        public void TestReadSuppress()
        {
            CL.StrReadSuppressStr = CL.T;
            
            var result1 = ReadString("(1 2 3 \"foo\" bar)");
            Assert.Equal(CL.Nil, result1);
            
            var result2 = ReadString("#(1 2 3)");
            Assert.Equal(CL.Nil, result2);
            
            var result3 = ReadString("#2A((1 2) (3 4))");
            Assert.Equal(CL.Nil, result3);
            
            var result4 = ReadString("' + \"foo\"");
            Assert.Equal(CL.Nil, result4);
        }
        
        [Fact]
        public void TestReadSuppressWithConditionals()
        {
            // Even with read-suppress, conditionals should still parse the feature expression correctly
            CL.StrReadSuppressStr = CL.T;
            var oldFeatures = CL.StrFeaturesStr;
            var feature = Package.Current!.Intern("MY-FEATURE");
            CL.StrFeaturesStr = ((List)CL.StrFeaturesStr!).Cons(feature);
            
            var result = ReadString("#+MY-FEATURE 1");
            Assert.Equal(CL.Nil, result); // The 1 is read and suppressed
            
            CL.StrFeaturesStr = oldFeatures;
        }
    }
}
