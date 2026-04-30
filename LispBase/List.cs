using System;
using System.Collections;
using System.Diagnostics;
using System.Text;

namespace Lisp
{
    /// <summary>
    /// A List is a struct rather than a class, but there is only one field in a list, which is
    /// a reference to the head ListCell.  Thus a List is only "logically" a wrapper around the
    /// first cell instead of a pointer to it.  This avoids the needless indirection that would
    /// result if List were a class.
    /// </summary>
    public struct List : IEnumerable
    {
        /// <summary>
        /// A ListCell is the representation of a List.  It differs from a Cons in 2 ways.
        /// <list type="number">
        /// <item>It is immutable, thus Lists are immutable.</item>
        /// <item>The CDR (rest) is a List, not an object or another cell. (i.e. the representation
        ///     of a list is simply the head cell, not the entire spine.)</item>
        /// </list>
        /// </summary>
        public class ListCell
        {
            /// <summary>
            /// The field that holds the first element of the list.
            /// </summary>
            [DebuggerBrowsableAttribute (DebuggerBrowsableState.Never)]
            public readonly object first;

            /// <summary>
            /// The field that holds the remaining elements of a list after the first.
            /// </summary>
            [DebuggerBrowsableAttribute (DebuggerBrowsableState.Never)]
            public readonly object rest;

            /// <summary>
            /// Constructs the concrete representation of a List.  This should eventually be turned into
            /// an abstract list by calling new List() on it.
            /// </summary>
            /// <param name="first">An object that will be the first element of the list.</param>
            /// <param name="rest">An object that will be the remainder of the list.</param>
            public ListCell (object first, object rest)
            {
                this.first = first;
                this.rest = rest;
            }

            /// <summary>
            /// A property that returns the first element of the ListCell.
            /// </summary>
            public object First => first;

            /// <summary>
            /// A property that returns the remaining elements of the List cell.
            /// </summary>
            public object Rest => rest;

            public override string ToString ()
            {
                return "(" +
                    (first is null ? "null" : first.ToString ()) +
                    " . " +
                    rest.ToString () +
                    ")";
            }
        }

        /// <summary>
        /// Field that refers to the ListCell that represents the head of the list, or null if the list is empty.
        /// Since List is a struct, this field refers to where the pointer to the ListCell will be stored.
        /// </summary>
        private readonly ListCell? headCell;

        /// <summary>
        /// Internal constructor turns representation into abstract object.
        /// But since List is a struct, this constructor doesn't actually
        /// do anything but copy the pointer.
        /// </summary>
        /// <param name="headCell">The concrete representation of the list.</param>
        internal List (ListCell? headCell) { this.headCell = headCell; }

        /// <summary>A distinguised empty list that all lists end with.  It's just a list
        /// with a null headCell.</summary>
        public static List Empty => theEmptyList;

        private static readonly List theEmptyList = new List (null);

        /// <summary>
        /// The standard way of constructing a new list by prepending a single element on to
        /// the front of an existing list.
        /// </summary>
        /// <param name="newHead">The element to be prepended to the list.</param>
        /// <returns>A new list with <paramref name="newHead"/> prepended to it.</returns>
        public List Cons (object newHead)
        {
            return new List (new ListCell (newHead, this));
        }

        /// <summary>
        /// Determines whether the list is the empty list.
        /// </summary>
        /// <returns><see langword="true"/>If list is the empty list.</returns>
        public bool EndP => headCell is null;

        /// <summary>
        /// Primitive accessor returns the first element of a list.  <paramref name="this" /> must not be the empty list.
        /// </summary>
        /// <returns>The first element of a non-empty list.</returns>
        public object First ()
        {
            if (headCell is null)
                throw new ArgumentException (nameof (First) + " called on an empty list.");
            else
                return headCell.First;
        }

        /// <summary>
        /// Primitive accessor that returns all but the first element of a list.  <paramref name="this" />
        /// must not be the empty list.
        /// </summary>
        /// <returns>The remainder of <paramref name="this" /> with the first element removed.  Result
        /// will be a (possibly empty) list, or an arbitrary object if it's a dotted list.</returns>
        public object Rest ()
        {
            if (headCell is null)
                throw new ArgumentException (nameof (Rest) + " called on an empty list.");
            else
                return headCell.Rest;
        }

        // Override appropriate methods for value types (structs).
        public override bool Equals (object? other)
        {
            return other is null ? false
                : Object.Equals (other, this) ? true
                : other is List oList ? oList.headCell == headCell
                : false;
        }

        public static bool operator == (List left, object right) => left.Equals (right);
        public static bool operator == (object left, List right) => right.Equals (left);

        public static bool operator != (List left, object right) => !left.Equals (right);
        public static bool operator != (object left, List right) => !right.Equals (left);

        public override int GetHashCode ()
        {
            return headCell is null ? 0 : headCell.First.GetHashCode ();
        }

        public override string ToString ()
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
            object current = this;

            while (current is List list && !list.EndP)
            {
                if (count > 0) sb.Append(" ");

                if (printLength.HasValue && count >= printLength.Value)
                {
                    sb.Append("...");
                    current = List.Empty;
                    break;
                }

                object first = list.First();
                if (first is List subList)
                {
                    sb.Append(subList.ToStringInternal(currentLevel + 1));
                }
                else
                {
                    sb.Append(first?.ToString() ?? "null");
                }

                count++;
                current = list.Rest();
            }

            if (!(current is List l && l.EndP))
            {
                sb.Append(" . ");
                sb.Append(current?.ToString() ?? "null");
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

        public IEnumerator GetEnumerator ()
        {
            return new ListEnumerator (this);
        }
    }

    public class ListEnumerator : IEnumerator
    {
        private List head;
        private List current;
        private bool afterEnd;

        public ListEnumerator (List head)
        {
            this.head = head;
        }

        public object Current
        {
            get
            {
                if (head.EndP || current.EndP)
                {
                    throw new InvalidOperationException ();
                }
                return current.First ();
            }
        }

        public bool MoveNext ()
        {
            if (afterEnd)
                throw new InvalidOperationException ();

            if (current.EndP)
            {
                current = head;
            }
            else
            {
                object rest = current.Rest ();
                if (rest is List nextList)
                {
                    current = nextList;
                }
                else
                {
                    // Dotted tail, stop iteration
                    current = List.Empty;
                }
            }

            if (current.EndP)
            {
                afterEnd = true;
                return false;
            }
            else
            {
                return true;
            }
        }

        public void Reset ()
        {
            current = List.Empty;
            afterEnd = false;
        }

        // Implement IDisposable, which is also implemented by IEnumerator(T).
        private bool disposedValue = false;
        public void Dispose ()
        {
            Dispose (true);
            GC.SuppressFinalize (this);
        }

        protected virtual void Dispose (bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    // Dispose of managed resources.
                }
                current = List.Empty;
                if (!head.EndP)
                {
                    head = List.Empty;
                }
            }

            disposedValue = true;
        }

        ~ListEnumerator ()
        {
            Dispose (false);
        }
    }

    public static class AdtList
    {
        public static bool EndP (List list)
        {
            return list.EndP;
        }

        public static bool EndP (object o)
        {
            return ((List) o).EndP;
        }

        public static List Cons (object car, object cdr)
        {
            return new List (new List.ListCell (car, cdr));
        }

        public static List Of (params object[] elements)
        {
            return VectorToList (elements);
        }

        public static List Revappend (List list, List tail)
        {
            List answer = tail;
            foreach (object o in list)
            {
                answer = answer.Cons (o);
            }
            return answer;
        }

        public static List SubvectorToList (object[] vector, int start, int end)
        {
            List answer = List.Empty;
            for (int index = end - 1; index >= start; --index)
            {
                answer = answer.Cons (vector[index]);
            }
            return answer;
        }

        // public static readonly List TheEmptyList = AdtList.List.Empty;

        public static List VectorToList (object[] vector)
        {
            return SubvectorToList (vector, 0, vector.Length);
        }
    }
}