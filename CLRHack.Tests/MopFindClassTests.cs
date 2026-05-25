using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopFindClassTests
    {
        [Fact]
        public void SetClassName_BindsClassAndFindClassReturnsIt()
        {
            var className = new Symbol("TEST-CLASS-NAME-BIND", Package.CommonLispUser);
            var cls = new StandardClassMetaobject();

            MopRuntime.SetClassName(cls, className);

            Assert.Same(className, MopRuntime.ClassName(cls));
            Assert.Same(cls, MopRuntime.FindClass(className));
            Assert.True(MopRuntime.TryFindClass(className, out var found));
            Assert.Same(cls, found);
        }

        [Fact]
        public void SetClassName_RebindsNameAndRemovesOldBinding()
        {
            var oldName = new Symbol("TEST-CLASS-NAME-OLD", Package.CommonLispUser);
            var newName = new Symbol("TEST-CLASS-NAME-NEW", Package.CommonLispUser);
            var cls = new StandardClassMetaobject();

            MopRuntime.SetClassName(cls, oldName);
            MopRuntime.SetClassName(cls, newName);

            Assert.Same(cls, MopRuntime.FindClass(newName));
            Assert.Null(MopRuntime.FindClass(oldName, errorp: false));
        }

        [Fact]
        public void SetClassName_ThrowsWhenDifferentClassAlreadyUsesName()
        {
            var className = new Symbol("TEST-CLASS-NAME-CONFLICT", Package.CommonLispUser);
            var a = new StandardClassMetaobject();
            var b = new StandardClassMetaobject();

            MopRuntime.SetClassName(a, className);

            Assert.Throws<InvalidOperationException>(() => MopRuntime.SetClassName(b, className));
        }

        [Fact]
        public void FindClass_ReturnsNullWhenMissingAndErrorpFalse()
        {
            var missing = new Symbol("TEST-CLASS-NAME-MISSING", Package.CommonLispUser);
            Assert.Null(MopRuntime.FindClass(missing, errorp: false));
        }
    }
}
