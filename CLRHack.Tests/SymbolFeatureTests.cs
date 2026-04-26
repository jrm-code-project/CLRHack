using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class SymbolFeatureTests
    {
        [Fact]
        public void TestSymbolValueCell()
        {
            var s = new Symbol("MY-VAR", Package.CommonLispUser);
            s.Value = 123;
            Assert.Equal(123, s.Value);
        }

        [Fact]
        public void TestSymbolFunctionCell()
        {
            var s = new Symbol("MY-FUNC", Package.CommonLispUser);
            var fn = new object(); // Placeholder for a function object
            s.Function = fn;
            Assert.Same(fn, s.Function);
        }

        [Fact]
        public void TestSymbolPropertyList()
        {
            var s = new Symbol("MY-SYMBOL", Package.CommonLispUser);
            var indicator = new Symbol("INDICATOR", Package.CommonLispUser);
            s.Plist = s.Plist.Cons(100).Cons(indicator);
            
            // A simple 'get' implementation for testing
            object? Get(List plist, object ind)
            {
                while (!plist.EndP)
                {
                    if (plist.First() == ind)
                    {
                        return ((List)plist.Rest()).First();
                    }
                    plist = (List)((List)plist.Rest()).Rest();
                }
                return null;
            }

            Assert.Equal(100, Get(s.Plist, indicator));
            Assert.Null(Get(s.Plist, new Symbol("OTHER", Package.CommonLispUser)));
        }

        [Fact]
        public void TestKeywordCreation()
        {
            var k = Package.Keyword.Intern("A-KEYWORD");
            Assert.IsType<Keyword>(k);
            Assert.Same(k, k.Value); // Keywords are self-evaluating
            Assert.Contains(k, Package.Keyword.ExternalSymbols);
            Assert.Equal(":A-KEYWORD", k.ToString());
        }

        [Fact]
        public void TestReaderParsesKeyword()
        {
            var reader = new System.IO.StringReader(":MY-KEYWORD");
            var lispReader = new Reader(reader);
            var result = lispReader.Read();

            Assert.IsType<Keyword>(result);
            var keyword = (Keyword)result;
            Assert.Equal("MY-KEYWORD", keyword.Name);
            Assert.Same(Package.Keyword, keyword.Package);
        }
    }
}
