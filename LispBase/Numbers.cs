using System;
using System.Numerics;

namespace Lisp
{
    public struct Rational : IComparable<Rational>, IEquatable<Rational>
    {
        public BigInteger Numerator { get; }
        public BigInteger Denominator { get; }

        public Rational(BigInteger numerator, BigInteger denominator)
        {
            if (denominator == 0)
                throw new DivideByZeroException("Denominator cannot be zero.");

            if (denominator < 0)
            {
                numerator = -numerator;
                denominator = -denominator;
            }

            BigInteger common = BigInteger.GreatestCommonDivisor(BigInteger.Abs(numerator), denominator);
            Numerator = numerator / common;
            Denominator = denominator / common;
        }

        public override string ToString()
        {
            if (Denominator == 1) return Numerator.ToString();
            return $"{Numerator}/{Denominator}";
        }

        public bool Equals(Rational other)
        {
            return Numerator == other.Numerator && Denominator == other.Denominator;
        }

        public override bool Equals(object? obj)
        {
            return obj is Rational other && Equals(other);
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(Numerator, Denominator);
        }

        public int CompareTo(Rational other)
        {
            return (Numerator * other.Denominator).CompareTo(other.Numerator * Denominator);
        }

        public static bool operator ==(Rational left, Rational right) => left.Equals(right);
        public static bool operator !=(Rational left, Rational right) => !left.Equals(right);
    }

    public struct Complex : IEquatable<Complex>
    {
        public object Real { get; }
        public object Imaginary { get; }

        public Complex(object real, object imaginary)
        {
            Real = real;
            Imaginary = imaginary;
        }

        public override string ToString()
        {
            return $"#C({Real} {Imaginary})";
        }

        public bool Equals(Complex other)
        {
            return Equals(Real, other.Real) && Equals(Imaginary, other.Imaginary);
        }

        public override bool Equals(object? obj)
        {
            return obj is Complex other && Equals(other);
        }

        public override int GetHashCode()
        {
            return HashCode.Combine(Real, Imaginary);
        }

        public static bool operator ==(Complex left, Complex right) => left.Equals(right);
        public static bool operator !=(Complex left, Complex right) => !left.Equals(right);
    }
}
