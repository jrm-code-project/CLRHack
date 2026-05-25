using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopEnsureClassTests
    {
        [Fact]
        public void EnsureClass_CreatesAndRegistersClass()
        {
            var name = new Symbol("TEST-ENSURE-CLASS-1", Package.CommonLispUser);
            var cls = MopRuntime.EnsureClass(name, documentation: "doc");

            Assert.IsType<StandardClassMetaobject>(cls);
            Assert.Same(cls, MopRuntime.FindClass(name));
            Assert.Equal("doc", cls.Documentation);
        }

        [Fact]
        public void EnsureClass_IsIdempotentWithDefaultMetaclass()
        {
            var name = new Symbol("TEST-ENSURE-CLASS-2", Package.CommonLispUser);
            var c1 = MopRuntime.EnsureClass(name);
            var c2 = MopRuntime.EnsureClass(name);

            Assert.Same(c1, c2);
        }

        [Fact]
        public void EnsureClass_CreatesForwardReferencedSuperclassForMissingName()
        {
            var className = new Symbol("TEST-ENSURE-CLASS-3", Package.CommonLispUser);
            var missingSuper = new Symbol("TEST-ENSURE-CLASS-MISSING-SUPER", Package.CommonLispUser);

            var cls = MopRuntime.EnsureClass(className, directSuperclasses: new object[] { missingSuper });

            Assert.Single(cls.DirectSuperclasses);
            var super = cls.DirectSuperclasses[0];
            Assert.IsType<ForwardReferencedClassMetaobject>(super);
            Assert.Same(super, MopRuntime.FindClass(missingSuper));
            Assert.Contains(cls, super.DirectSubclasses);
        }

        [Fact]
        public void EnsureClassUsingClass_PromotesForwardReferenceToConcreteMetaclass()
        {
            var className = new Symbol("TEST-ENSURE-CLASS-4", Package.CommonLispUser);
            var fwd = MopRuntime.EnsureClass(className, metaclass: typeof(ForwardReferencedClassMetaobject));

            Assert.IsType<ForwardReferencedClassMetaobject>(fwd);

            var concrete = MopRuntime.EnsureClassUsingClass(
                fwd,
                className,
                metaclass: typeof(StandardClassMetaobject),
                documentation: "concrete");

            Assert.IsType<StandardClassMetaobject>(concrete);
            Assert.NotSame(fwd, concrete);
            Assert.Same(concrete, MopRuntime.FindClass(className));
            Assert.Equal("concrete", concrete.Documentation);
        }

        [Fact]
        public void EnsureClass_ThrowsWhenValidateSuperclassFails()
        {
            var name = new Symbol("TEST-ENSURE-CLASS-5", Package.CommonLispUser);
            var invalidSuper = new StandardClassMetaobject();

            Assert.Throws<InvalidOperationException>(() =>
                MopRuntime.EnsureClass(
                    name,
                    metaclass: typeof(BuiltInClassMetaobject),
                    directSuperclasses: new object[] { invalidSuper }));
        }

        [Fact]
        public void ValidateSuperclass_RecognizesBaselineCompatibilityPolicy()
        {
            var standard = new StandardClassMetaobject();
            var builtin = new BuiltInClassMetaobject();
            var forward = new ForwardReferencedClassMetaobject();

            Assert.True(MopRuntime.ValidateSuperclass(standard, standard));
            Assert.True(MopRuntime.ValidateSuperclass(standard, builtin));
            Assert.True(MopRuntime.ValidateSuperclass(standard, forward));
            Assert.False(MopRuntime.ValidateSuperclass(builtin, standard));
            Assert.True(MopRuntime.ValidateSuperclass(builtin, builtin));
        }
    }
}
