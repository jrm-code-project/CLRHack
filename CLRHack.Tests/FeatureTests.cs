using Lisp;
using Xunit;
using System.IO;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class FeatureTests : System.IDisposable
    {
        private readonly object? originalFeatures;

        public FeatureTests()
        {
            // Save the original *features* list
            originalFeatures = CL.StrFeaturesStr;
            CL.StrFeaturesStr = List.Empty;
        }

        public void Dispose()
        {
            // Restore the original *features* list
            CL.StrFeaturesStr = originalFeatures;
        }

        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.Read(eofErrorP: false);
        }

        [Fact]
        public void TestPlusWhenFeatureIsPresent()
        {
            var feature = Package.Current!.Intern("MY-FEATURE");
            CL.StrFeaturesStr = ((List)CL.StrFeaturesStr!).Cons(feature);
            
            var result = ReadString("#+MY-FEATURE 1 2");
            Assert.Equal(1, result);
        }

        [Fact]
        public void TestPlusWhenFeatureIsAbsent()
        {
            var result = ReadString("#+MY-FEATURE 1 2");
            Assert.Equal(2, result);
        }

        [Fact]
        public void TestMinusWhenFeatureIsPresent()
        {
            var feature = Package.Current!.Intern("MY-FEATURE");
            CL.StrFeaturesStr = ((List)CL.StrFeaturesStr!).Cons(feature);
            
            var result = ReadString("#-MY-FEATURE 1 2");
            Assert.Equal(2, result);
        }

        [Fact]
        public void TestMinusWhenFeatureIsAbsent()
        {
            var result = ReadString("#-MY-FEATURE 1 2");
            Assert.Equal(1, result);
        }

        [Fact]
        public void TestNestedConditionals()
        {
            var f1 = Package.Current!.Intern("F1");
            CL.StrFeaturesStr = ((List)CL.StrFeaturesStr!).Cons(f1);
            
            // F2 is absent
            var result = ReadString("#+F1 #+F2 10 20 30");
            Assert.Equal(20, result);
        }
    }
}