using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class DottedListTests
    {
        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.Read();
        }

        [Fact]
        public void TestSimpleDottedList()
        {
            var result = ReadString("(1 . 2)");
            
            Assert.True(result is List, "Result should be a list");
            var list = (List)result!;
            
            Assert.Equal(1, list.First());
            Assert.Equal(2, list.Rest()); 
        }

        [Fact]
        public void TestLongDottedList()
        {
            var result = ReadString("(1 2 3 . 4)");
            Assert.True(result is List, "Result should be a list");
            var list = (List)result!;
            
            Assert.Equal(1, list.First());
            var rest1 = (List)list.Rest();
            Assert.Equal(2, rest1.First());
            var rest2 = (List)rest1.Rest();
            Assert.Equal(3, rest2.First());
            Assert.Equal(4, rest2.Rest());
        }

        [Fact]
        public void TestInvalidDottedList_MultipleDots()
        {
            Assert.Throws<InvalidOperationException>(() => ReadString("(1 . 2 . 3)"));
        }

        [Fact]
        public void TestInvalidDottedList_NoCdr()
        {
            Assert.Throws<InvalidOperationException>(() => ReadString("(1 . )"));
        }

        [Fact]
        public void TestInvalidDottedList_NoCar()
        {
            Assert.Throws<InvalidOperationException>(() => ReadString("( . 2)"));
        }
        
        [Fact]
        public void TestInvalidDottedList_TooManyAfterDot()
        {
            Assert.Throws<InvalidOperationException>(() => ReadString("(1 . 2 3)"));
        }
    }
}