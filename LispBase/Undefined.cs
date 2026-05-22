namespace Lisp
{
    public class Undefined
    {
        public static readonly object Value = new Undefined();
        public object value;

        private Undefined()
        {
            value = this;
        }

        public override string ToString()
        {
            return "#<UNDEFINED>";
        }
    }
}
