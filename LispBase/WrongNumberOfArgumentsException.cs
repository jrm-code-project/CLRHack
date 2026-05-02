using System;

namespace Lisp
{
    public class WrongNumberOfArgumentsException : Exception
    {
        public int Expected { get; }
        public int Provided { get; }

        public WrongNumberOfArgumentsException(int expected, int provided) 
            : base($"Wrong number of arguments: expected {expected}, provided {provided}.") 
        {
            Expected = expected;
            Provided = provided;
        }

        public WrongNumberOfArgumentsException(string message) : base(message) { }
    }
}
