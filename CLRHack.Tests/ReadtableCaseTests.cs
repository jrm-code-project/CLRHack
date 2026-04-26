using System.IO;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class ReadtableCaseTests
    {
        private Symbol ReadSymbol(string input, ReadtableCase caseSetting)
        {
            var readtable = new Readtable
            {
                Case = caseSetting
            };
            var reader = new Reader(new StringReader(input), readtable);
            return (Symbol)reader.Read()!;
        }

        [Fact]
        public void TestUpcaseDefault()
        {
            var s = ReadSymbol("MixedCase-Symbol", ReadtableCase.Upcase);
            Assert.Equal("MIXEDCASE-SYMBOL", s.Name);
        }

        [Fact]
        public void TestDowncase()
        {
            var s = ReadSymbol("MixedCase-Symbol", ReadtableCase.Downcase);
            Assert.Equal("mixedcase-symbol", s.Name);
        }

        [Fact]
        public void TestPreserve()
        {
            var s = ReadSymbol("MixedCase-Symbol", ReadtableCase.Preserve);
            Assert.Equal("MixedCase-Symbol", s.Name);
        }

        [Fact]
        public void TestInvertAllUpper()
        {
            var s = ReadSymbol("ALL-UPPER", ReadtableCase.Invert);
            Assert.Equal("all-upper", s.Name);
        }

        [Fact]
        public void TestInvertAllLower()
        {
            var s = ReadSymbol("all-lower", ReadtableCase.Invert);
            Assert.Equal("ALL-LOWER", s.Name);
        }

        [Fact]
        public void TestInvertMixedIsPreserved()
        {
            var s = ReadSymbol("Mixed-Case", ReadtableCase.Invert);
            Assert.Equal("Mixed-Case", s.Name);
        }
    }
}
