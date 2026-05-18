using System;
using Xunit;
using Lisp;

namespace LispBaseTests
{
    public class InteropTests
    {
        [Fact]
        public void InstanceCall_NullInstance_ThrowsArgumentNullException()
        {
            Assert.Throws<ArgumentNullException>(() => Interop.InstanceCall("ToString", null, new object[0]));
        }
    }
}
