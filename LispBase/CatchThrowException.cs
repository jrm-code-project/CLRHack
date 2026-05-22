using System;

namespace Lisp
{
    public class CatchThrowException : Exception
    {
        public object Tag { get; }
        public object Value { get; }
        public object[] CapturedValues { get; }

        public CatchThrowException(object tag, object value)
        {
            Tag = tag;
            Value = value;
            CapturedValues = null;
        }

        public CatchThrowException(object tag, object value, object[] capturedValues)
        {
            Tag = tag;
            Value = value;
            CapturedValues = capturedValues;
        }
    }
}
