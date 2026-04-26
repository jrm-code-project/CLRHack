using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class SymbolComplianceTests
    {
        [Fact]
        public void TestUninternedSymbol()
        {
            var sym = new Symbol("G123");
            Assert.Null(sym.Package);
            Assert.Equal("#:G123", sym.ToString());
        }

        [Fact]
        public void TestUnboundValue()
        {
            var sym = new Symbol("SYM");
            Assert.False(sym.BoundP);
            Assert.Throws<InvalidOperationException>(() => sym.Value);
            
            sym.Value = 42;
            Assert.True(sym.BoundP);
            Assert.Equal(42, sym.Value);
            
            sym.MakeUnbound();
            Assert.False(sym.BoundP);
            Assert.Throws<InvalidOperationException>(() => sym.Value);
        }

        [Fact]
        public void TestUnboundFunction()
        {
            var sym = new Symbol("FUNC");
            Assert.False(sym.FBoundP);
            Assert.Throws<InvalidOperationException>(() => sym.Function);
            
            var fn = new object();
            sym.Function = fn;
            Assert.True(sym.FBoundP);
            Assert.Same(fn, sym.Function);
            
            sym.FMakeUnbound();
            Assert.False(sym.FBoundP);
            Assert.Throws<InvalidOperationException>(() => sym.Function);
        }

        [Fact]
        public void TestPropertyList()
        {
            var sym = new Symbol("SYM");
            var key1 = new Symbol("KEY1");
            var key2 = new Symbol("KEY2");
            
            Assert.Null(sym.Get(key1));
            
            sym.Put(key1, "VAL1");
            Assert.Equal("VAL1", sym.Get(key1));
            
            sym.Put(key2, "VAL2");
            Assert.Equal("VAL2", sym.Get(key2));
            Assert.Equal("VAL1", sym.Get(key1));
            
            // Update existing
            sym.Put(key1, "NEW-VAL1");
            Assert.Equal("NEW-VAL1", sym.Get(key1));
            
            // Remove
            Assert.True(sym.RemProp(key1));
            Assert.Null(sym.Get(key1));
            Assert.Equal("VAL2", sym.Get(key2));
            
            Assert.False(sym.RemProp(key1)); // Already gone
        }

        [Fact]
        public void TestCopySymbol()
        {
            var sym = new Symbol("SYM", Package.CommonLispUser);
            sym.Value = 100;
            var prop = new Symbol("PROP");
            sym.Put(prop, "VAL");
            
            var copy1 = sym.CopySymbol(copyProps: false);
            Assert.Equal(sym.Name, copy1.Name);
            Assert.Null(copy1.Package);
            Assert.False(copy1.BoundP);
            Assert.Null(copy1.Get(prop));
            
            var copy2 = sym.CopySymbol(copyProps: true);
            Assert.Equal(sym.Name, copy2.Name);
            Assert.Null(copy2.Package);
            Assert.True(copy2.BoundP);
            Assert.Equal(100, copy2.Value);
            Assert.Equal("VAL", copy2.Get(prop));
        }

        [Fact]
        public void TestKeywordToString()
        {
            var k = new Keyword("MY-KEY", Package.Keyword);
            Assert.Equal(":MY-KEY", k.ToString());
        }
    }
}
