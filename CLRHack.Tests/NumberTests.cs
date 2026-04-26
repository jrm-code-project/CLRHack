using System;
using System.IO;
using System.Numerics;
using Xunit;
using Lisp;
using LispComplex = Lisp.Complex;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class NumberTests
    {
        private object? ReadString(string input)
        {
            var reader = new Reader(new StringReader(input));
            return reader.Read();
        }

        [Fact]
        public void TestRationalParsing()
        {
            var result1 = ReadString("1/2");
            Assert.IsType<Rational>(result1);
            var r1 = (Rational)result1;
            Assert.Equal(new BigInteger(1), r1.Numerator);
            Assert.Equal(new BigInteger(2), r1.Denominator);

            var result2 = ReadString("-3/4");
            Assert.IsType<Rational>(result2);
            var r2 = (Rational)result2;
            Assert.Equal(new BigInteger(-3), r2.Numerator);
            Assert.Equal(new BigInteger(4), r2.Denominator);

            var result3 = ReadString("4/2");
            Assert.Equal(2, result3); // Canonicalized to integer

            var result4 = ReadString("0/5");
            Assert.Equal(0, result4); // Canonicalized to integer
        }

        [Fact]
        public void TestRationalParsingWithBase()
        {
            var oldBase = CL.StrReadBaseStr;
            CL.StrReadBaseStr = 16;
            try
            {
                var result = ReadString("A/10");
                Assert.IsType<Rational>(result);
                var r = (Rational)result;
                // Simplified: 10/16 -> 5/8
                Assert.Equal(new BigInteger(5), r.Numerator);
                Assert.Equal(new BigInteger(8), r.Denominator);
            }
            finally
            {
                CL.StrReadBaseStr = oldBase;
            }
        }

        [Fact]
        public void TestComplexParsing()
        {
            var result1 = ReadString("#C(1 2)");
            Assert.IsType<LispComplex>(result1);
            var c1 = (LispComplex)result1;
            Assert.Equal(1, c1.Real);
            Assert.Equal(2, c1.Imaginary);

            var result2 = ReadString("#C(1/2 -3/4)");
            Assert.IsType<LispComplex>(result2);
            var c2 = (LispComplex)result2;
            
            Assert.IsType<Rational>(c2.Real);
            Assert.IsType<Rational>(c2.Imaginary);
            
            var rReal = (Rational)c2.Real;
            var rImag = (Rational)c2.Imaginary;
            Assert.Equal(new BigInteger(1), rReal.Numerator);
            Assert.Equal(new BigInteger(2), rReal.Denominator);
            Assert.Equal(new BigInteger(-3), rImag.Numerator);
            Assert.Equal(new BigInteger(4), rImag.Denominator);
        }

        [Fact]
        public void TestComplexParsingWithFloats()
        {
            var result = ReadString("#C(1.5 -0.5)");
            Assert.IsType<LispComplex>(result);
            var c = (LispComplex)result;
            Assert.Equal(1.5, c.Real);
            Assert.Equal(-0.5, c.Imaginary);
        }

        [Fact]
        public void TestInvalidRational()
        {
            // Should be interned as a symbol if not a valid rational
            var result = ReadString("1/2/3");
            Assert.IsType<Symbol>(result);
            Assert.Equal("1/2/3", ((Symbol)result).Name);
        }

        [Fact]
        public void TestInvalidComplex()
        {
            Assert.Throws<InvalidOperationException>(() => ReadString("#C(1)"));
            Assert.Throws<InvalidOperationException>(() => ReadString("#C(1 2 3)"));
            Assert.Throws<InvalidOperationException>(() => ReadString("#C 1"));
        }
    }
}