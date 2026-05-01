using System;

namespace Lisp
{
    public class CatchThrowException : Exception
    {
        public object Tag { get; }
        public object Value { get; }

        public CatchThrowException(object tag, object value)
        {
            Tag = tag;
            Value = value;
        }
    }
}
