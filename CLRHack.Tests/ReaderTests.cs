using System.IO;
using Lisp;
using Xunit;
using System.Collections.Generic;
using System.Numerics;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class ReaderTests : System.IDisposable
    {
        private readonly object? originalFeatures;

        public ReaderTests()
        {
            originalFeatures = CL.StrFeaturesStr;
            CL.StrFeaturesStr = List.Empty;
        }

        public void Dispose()
        {
            CL.StrFeaturesStr = originalFeatures;
        }

        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.ReadSingleObject();
        }

        [Fact]
        public void TestReadInteger()
        {
            var result = ReadString("123");
            Assert.Equal(123, result);
        }

        [Fact]
        public void TestReadSymbol()
        {
            var result = ReadString("FOO");
            Assert.IsType<Symbol>(result);
            var symbol = (Symbol)result;
            Assert.Equal("FOO", symbol.Name);
        }

        [Fact]
        public void TestReadSimpleList()
        {
            var result = ReadString("(1 2 FOO)");
            Assert.IsType<List>(result);
            var list = (List)result;
            Assert.Equal(1, list.First());
            Assert.Equal(2, ((List)list.Rest()).First());
            Assert.IsType<Symbol>(((List)((List)list.Rest()).Rest()).First());
            Assert.Equal("FOO", ((Symbol)((List)((List)list.Rest()).Rest()).First()).Name);
        }

        [Fact]
        public void TestReadNestedList()
        {
            var result = ReadString("((1) (2 3))");
            Assert.IsType<List>(result);
            var outerList = (List)result;

            var firstInner = (List)outerList.First();
            Assert.Equal(1, firstInner.First());

            var secondInner = (List)((List)outerList.Rest()).First();
            Assert.Equal(2, secondInner.First());
            Assert.Equal(3, ((List)secondInner.Rest()).First());
        }

        [Fact]
        public void TestReadQuote()
        {
            var result = ReadString("'FOO");
            Assert.IsType<List>(result);
            var list = (List)result;
            Assert.Equal("QUOTE", ((Symbol)list.First()).Name);
            Assert.Equal("FOO", ((Symbol)((List)list.Rest()).First()).Name);
        }

        [Fact]
        public void TestReadComment()
        {
            var result = ReadString("; this is a comment\n42");
            Assert.Equal(42, result);
        }

        [Fact]
        public void TestUnmatchedParenthesisError()
        {
            Assert.Throws<EndOfStreamException>(() => ReadString("(1 2"));
            Assert.Throws<InvalidOperationException>(() => ReadString("1 2)"));
        }

        [Fact]
        public void TestReadFile()
        {
            // Setup
            var feature = Package.Current!.Intern("HAS-FEATURE");
            CL.StrFeaturesStr = ((List)CL.StrFeaturesStr!).Cons(feature);
            
            var readtable = Readtable.StandardReadtable;
            readtable.Case = ReadtableCase.Upcase;
            var objects = new List<object>();

            // Act
            using (var fileStream = File.OpenText("/mnt/c/Users/JosephMarshall/AppData/Roaming/source/repos/CLRHack/s-code.lisp"))
            {
                var reader = new Reader(fileStream, readtable);
                object? form;
                while (true)
                {
                    form = reader.Read(eofErrorP: false);
                    if (form == null) break;
                    objects.Add(form);
                }
            }

            // Assert
            Assert.Equal(9, objects.Count);

            // 1. Case folding test
            var defunForm = (List)objects[0];
            Assert.Equal("DEFUN", ((Symbol)defunForm.First()).Name);
            Assert.Equal("TEST-CASE", ((Symbol)((List)defunForm.Rest()).First()).Name);
            Assert.Equal("A-PARAMETER", ((Symbol)((List)((List)((List)defunForm.Rest()).Rest()).First()).First()).Name);

            // 2. Conditional reading
            var featurePresentForm = (List)objects[1];
            Assert.Equal("DEFUN", ((Symbol)featurePresentForm.First()).Name);
            Assert.Equal("FEATURE-PRESENT", ((Symbol)((List)featurePresentForm.Rest()).First()).Name);

            // 3. String
            Assert.Equal("This is a string with an escaped \" quote.", objects[2]);

            // 4. Escaped Symbol
            var escapedSymbol = (Symbol)objects[3];
            Assert.Equal("An escaped symbol with spaces and CaSe", escapedSymbol.Name);

            // 5. Vector
            var vector = (object[])objects[4];
            Assert.Equal(4, vector.Length);
            Assert.Equal(1, vector[0]);
            Assert.Equal("vector", vector[2]);

            // 6. 2D Array
            var array = (object[,])objects[5];
            Assert.Equal(2, array.Rank);
            Assert.Equal(2, array.GetLength(0));
            Assert.Equal(2, array.GetLength(1));
            Assert.Equal(3, array[1, 0]);

            // 7. Float
            Assert.Equal(123.45, objects[6]);

            // 8. Long Integer
            Assert.Equal(9876543210L, objects[7]);

            // 9. Bignum
            Assert.Equal(BigInteger.Parse("123456789012345678901234567890"), objects[8]);
        }
    }
}
