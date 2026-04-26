using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class SyntaxTests
    {
        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.Read();
        }

        [Fact]
        public void TestSingleEscape()
        {
            var result = ReadString("foo\\ bar");
            Assert.IsType<Symbol>(result);
            Assert.Equal("FOO BAR", ((Symbol)result!).Name);
            
            var result2 = ReadString("foo\\b\\a\\r");
            Assert.Equal("FOObar", ((Symbol)result2!).Name);
        }

        [Fact]
        public void TestMultipleEscape()
        {
            var result = ReadString("|foo bar|");
            Assert.IsType<Symbol>(result);
            Assert.Equal("foo bar", ((Symbol)result!).Name);
        }

        [Fact]
        public void TestMixedEscape()
        {
            var result = ReadString("foo|BAR|baz\\ quux");
            Assert.IsType<Symbol>(result);
            Assert.Equal("FOOBARBAZ QUUX", ((Symbol)result!).Name);
        }

        [Fact]
        public void TestCharacterLiterals()
        {
            Assert.Equal('a', ReadString("#\\a"));
            Assert.Equal('A', ReadString("#\\A"));
            Assert.Equal(' ', ReadString("#\\Space"));
            Assert.Equal('\n', ReadString("#\\Newline"));
            Assert.Equal('(', ReadString("#\\("));
        }

        [Fact]
        public void TestRadixLiterals()
        {
            Assert.Equal(255, ReadString("#xff"));
            Assert.Equal(255, ReadString("#XFF"));
            Assert.Equal(8, ReadString("#o10"));
            Assert.Equal(3, ReadString("#b11"));
        }

        [Fact]
        public void TestFunctionQuote()
        {
            var result = ReadString("#'foo");
            Assert.IsType<List>(result);
            var list = (List)result;
            Assert.Equal("FUNCTION", ((Symbol)list.First()).Name);
            Assert.Equal("FOO", ((Symbol)((List)list.Rest()).First()).Name);
        }

        [Fact]
        public void TestBackquoteAndComma()
        {
            var result = ReadString("`(a ,b ,@c)");
            Assert.IsType<List>(result);
            var list = (List)result;
            Assert.Equal("BACKQUOTE", ((Symbol)list.First()).Name);
            
            var inner = (List)((List)list.Rest()).First();
            Assert.Equal("A", ((Symbol)inner.First()).Name);
            
            var restOfInner = (List)inner.Rest();
            var commaB = (List)restOfInner.First();
            Assert.Equal("COMMA", ((Symbol)commaB.First()).Name);
            Assert.Equal("B", ((Symbol)((List)commaB.Rest()).First()).Name);
            
            var restOfRestOfInner = (List)restOfInner.Rest();
            var commaAtC = (List)restOfRestOfInner.First();
            Assert.Equal("COMMA-AT", ((Symbol)commaAtC.First()).Name);
            Assert.Equal("C", ((Symbol)((List)commaAtC.Rest()).First()).Name);
        }
    }
}
