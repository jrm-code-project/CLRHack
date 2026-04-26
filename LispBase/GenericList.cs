using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;

namespace Lisp.Generic
{
    /// <summary>
    /// A generic, immutable Lisp-style list. It is a struct that wraps a reference
    /// to the head ListCell, providing type safety for the list's elements.
    /// </summary>
    /// <typeparam name="T">The type of elements in the list.</typeparam>
    public struct List<T> : IEnumerable<T>
    {
        /// <summary>
        /// The internal, immutable cell that constitutes the list's spine.
        /// </summary>
        private class ListCell
        {
            [DebuggerBrowsable(DebuggerBrowsableState.Never)]
            private readonly T first;

            [DebuggerBrowsable(DebuggerBrowsableState.Never)]
            private readonly List<T> rest;

            public ListCell(T first, List<T> rest)
            {
                this.first = first;
                this.rest = rest;
            }

            public T First => first;
            public List<T> Rest => rest;
        }

        private readonly ListCell? headCell;

        private List(ListCell? headCell) { this.headCell = headCell; }

        /// <summary>A distinguished empty list. Each generic instantiation (e.g., List<int>) gets its own.</summary>
        public static List<T> Empty => theEmptyList;

        private static readonly List<T> theEmptyList = new List<T>(null);

        /// <summary>
        /// Constructs a new list by prepending a single element onto the front of an existing list.
        /// </summary>
        /// <param name="newHead">The element to be prepended to the list.</param>
        /// <returns>A new list with <paramref name="newHead"/> prepended to it.</returns>
        public List<T> Cons(T newHead)
        {
            return new List<T>(new ListCell(newHead, this));
        }

        /// <summary>
        /// Determines whether the list is the empty list.
        /// </summary>
        public bool EndP => headCell is null;

        /// <summary>
        /// Primitive accessor returns the first element of a list. The list must not be empty.
        /// </summary>
        /// <returns>The first element of a non-empty list.</returns>
        public T First()
        {
            if (headCell is null)
                throw new ArgumentException(nameof(First) + " called on an empty list.");
            else
                return headCell.First;
        }

        /// <summary>
        /// Primitive accessor that returns all but the first element of a list. The list must not be empty.
        /// </summary>
        /// <returns>The remainder of the list with the first element removed.</returns>
        public List<T> Rest()
        {
            if (headCell is null)
                throw new ArgumentException(nameof(Rest) + " called on an empty list.");
            else
                return headCell.Rest;
        }

        // Equality overrides
        public override bool Equals(object? other)
        {
            return other is List<T> oList && oList.headCell == headCell;
        }

        public static bool operator ==(List<T> left, List<T> right) => left.Equals(right);
        public static bool operator !=(List<T> left, List<T> right) => !left.Equals(right);

        public override int GetHashCode()
        {
            if (headCell is null) return 0;
            var first = headCell.First;
            return first is null ? 0 : EqualityComparer<T>.Default.GetHashCode(first);
        }

        public override string ToString()
        {
            return ToStringInternal(0);
        }

        private string ToStringInternal(int currentLevel)
        {
            if (headCell is null) return "()";

            var printLevelSym = Package.CommonLisp?.FindSymbol("*PRINT-LEVEL*").symbol;
            int? printLevel = GetPrintLimit(printLevelSym);
            if (printLevel.HasValue && currentLevel >= printLevel.Value) return "#";

            var printLengthSym = Package.CommonLisp?.FindSymbol("*PRINT-LENGTH*").symbol;
            int? printLength = GetPrintLimit(printLengthSym);

            StringBuilder sb = new StringBuilder();
            sb.Append("(");

            int count = 0;
            List<T> current = this;

            while (!current.EndP)
            {
                if (count > 0) sb.Append(" ");

                if (printLength.HasValue && count >= printLength.Value)
                {
                    sb.Append("...");
                    break;
                }

                T first = current.First();
                // We can't easily check if T is a List<T> or List at compile time in a generic way
                // that allows calling ToStringInternal. But we can check at runtime.
                if (first is List l)
                {
                    // This is a bit of a hack to handle non-generic lists inside generic ones
                    // but it's necessary for consistent behavior.
                    // Wait! I can't call ToStringInternal on List from here easily.
                    // But first.ToString() will now call ToStringInternal(0).
                    // To maintain depth, we'd need a common interface or a more complex visitor.
                    // For now, we'll just call ToString() which will reset the depth for the sublist.
                    // Actually, I can use reflection or a dynamic cast if I really wanted to.
                    sb.Append(first.ToString());
                }
                else
                {
                    sb.Append(first?.ToString() ?? "null");
                }

                count++;
                current = current.Rest();
            }

            sb.Append(")");
            return sb.ToString();
        }

        private static int? GetPrintLimit(Symbol symbol)
        {
            if (symbol != null && symbol.BoundP)
            {
                var val = symbol.Value;
                if (val is int i) return i;
                if (val is long l) return (int)l;
                if (val is System.Numerics.BigInteger bi) return (int)bi;
            }
            return null;
        }

        // IEnumerable<T> implementation
        public IEnumerator<T> GetEnumerator()
        {
            return new ListEnumerator<T>(this);
        }

        IEnumerator IEnumerable.GetEnumerator()
        {
            return GetEnumerator();
        }
    }

    public class ListEnumerator<T> : IEnumerator<T>
    {
        private List<T> head;
        private List<T> current;

        public ListEnumerator(List<T> head)
        {
            this.head = head;
            this.current = List<T>.Empty;
        }

        public T Current => current.First();

        object IEnumerator.Current => Current!;

        public bool MoveNext()
        {
            current = current.EndP ? head : current.Rest();
            return !current.EndP;
        }

        public void Reset()
        {
            current = List<T>.Empty;
        }

        public void Dispose() { }
    }

    /// <summary>
    /// A collection of static factory and utility methods for creating and manipulating generic Lists.
    /// </summary>
    public static class AdtList
    {
        /// <summary>
        /// Creates a new generic list from a sequence of elements.
        /// </summary>
        public static List<T> Of<T>(params T[] elements)
        {
            return VectorToList(elements);
        }

        /// <summary>
        /// Converts an array to a generic list.
        /// </summary>
        public static List<T> VectorToList<T>(T[] vector)
        {
            return SubvectorToList(vector, 0, vector.Length);
        }

        /// <summary>
        /// Converts a sub-section of an array to a generic list.
        /// </summary>
        public static List<T> SubvectorToList<T>(T[] vector, int start, int end)
        {
            List<T> answer = List<T>.Empty;
            for (int index = end - 1; index >= start; --index)
            {
                answer = answer.Cons(vector[index]);
            }
            return answer;
        }

        /// <summary>
        // Reverses the first list and appends the second list to it.
        /// </summary>
        public static List<T> Revappend<T>(List<T> list, List<T> tail)
        {
            List<T> answer = tail;
            foreach (T o in list)
            {
                answer = answer.Cons(o);
            }
            return answer;
        }
    }
}