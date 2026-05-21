namespace Lisp
{
    public class ValueCell
    {
        public object Value;

        public ValueCell(object initialValue)
        {
            Value = initialValue;
        }

        public override string ToString()
        {
            return $"#<ValueCell {Value}>";
        }
    }
}
