using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopEqlSpecializerInterningTests
    {
        [Fact]
        public void InternEqlSpecializer_ReusesSameMetaobjectForSameIdentity()
        {
            var key = new object();

            var s1 = MopRuntime.InternEqlSpecializer(key);
            var s2 = MopRuntime.InternEqlSpecializer(key);

            Assert.Same(s1, s2);
            Assert.Same(key, MopRuntime.EqlSpecializerObject(s1));
        }

        [Fact]
        public void InternEqlSpecializer_DistinguishesDifferentObjects()
        {
            var k1 = new object();
            var k2 = new object();

            var s1 = MopRuntime.InternEqlSpecializer(k1);
            var s2 = MopRuntime.InternEqlSpecializer(k2);

            Assert.NotSame(s1, s2);
            Assert.Same(k1, MopRuntime.EqlSpecializerObject(s1));
            Assert.Same(k2, MopRuntime.EqlSpecializerObject(s2));
        }

        [Fact]
        public void InternEqlSpecializer_ReusesByObjectEqualsContractForImmediateValues()
        {
            var s1 = MopRuntime.InternEqlSpecializer(42);
            var s2 = MopRuntime.InternEqlSpecializer(42);
            var s3 = MopRuntime.InternEqlSpecializer("abc");
            var s4 = MopRuntime.InternEqlSpecializer("abc");

            Assert.Same(s1, s2);
            Assert.Same(s3, s4);
            Assert.Equal(42, MopRuntime.EqlSpecializerObject(s1));
            Assert.Equal("abc", MopRuntime.EqlSpecializerObject(s3));
        }

        [Fact]
        public void InternEqlSpecializer_AllowsNullAndInternsIt()
        {
            var s1 = MopRuntime.InternEqlSpecializer(null);
            var s2 = MopRuntime.InternEqlSpecializer(null);

            Assert.Same(s1, s2);
            Assert.Null(MopRuntime.EqlSpecializerObject(s1));
        }

        [Fact]
        public void EqlSpecializerObject_ThrowsOnNullSpecializer()
        {
            Assert.Throws<ArgumentNullException>(() => MopRuntime.EqlSpecializerObject(null));
        }
    }
}
