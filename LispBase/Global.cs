using System.Collections.Generic;

namespace Lisp
{
    /// <summary>
    /// Holds global variables for the Lisp environment.
    /// </summary>
    public static class Global
    {
        /// <summary>
        /// A sentinel object representing an unbound value or function cell.
        /// </summary>
        public static readonly object Unbound = new object();
    }
}