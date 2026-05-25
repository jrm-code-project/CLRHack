using System;

namespace Lisp
{
    public class BlockExitException : Exception
    {
        public object BlockId { get; }
        public object Value { get; }
        public object[] CapturedValues { get; }

        public BlockExitException(object blockId, object value, object[] capturedValues)
        {
            BlockId = blockId;
            Value = value;
            CapturedValues = capturedValues;
        }
    }
}
