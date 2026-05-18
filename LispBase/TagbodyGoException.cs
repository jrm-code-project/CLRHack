using System;

namespace Lisp
{
    public class TagbodyGoException : Exception
    {
        public object TagbodyId { get; private set; }
        public object Label { get; private set; }

        public TagbodyGoException(object tagbodyId, object label) : base("Non-local go to tagbody label.")
        {
            TagbodyId = tagbodyId;
            Label = label;
        }
    }
}
