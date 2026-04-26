namespace Lisp
{
    public class Keyword : Symbol
    {
        public Keyword(string name, Package package) : base(name, package)
        {
            Value = this;
            package.Export(this);
        }

        public override string ToString()
        {
            return ":" + Name;
        }
    }
}
