using System;

namespace Lisp
{
    public class TagbodyGoException : Exception
    {
        public int TagId { get; }

        public TagbodyGoException(int tagId)
        {
            TagId = tagId;
        }
    }
}
