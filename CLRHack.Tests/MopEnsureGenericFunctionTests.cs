using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopEnsureGenericFunctionTests
    {
        private sealed class CustomGenericFunctionMetaobject : GenericFunctionMetaobject
        {
        }

        [Fact]
        public void EnsureGenericFunction_IsIdempotentForSameName()
        {
            var name = new Symbol("TEST-GF-IDEMPOTENT", Package.CommonLispUser);
            var gf1 = MopRuntime.EnsureGenericFunction(name);
            var gf2 = MopRuntime.EnsureGenericFunction(name);

            Assert.Same(gf1, gf2);
            Assert.True(MopRuntime.TryFindGenericFunction(name, out var found));
            Assert.Same(gf1, found);
        }

        [Fact]
        public void EnsureGenericFunction_UpdatesSymbolFunctionCellWithCallableAdapter()
        {
            var name = new Symbol("TEST-GF-CALLABLE", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.SetDiscriminatingFunction(args => $"argc:{args.Length}");

            var closure = Closure.RequireClosure(name.Function, name.Name);
            Assert.Equal("argc:2", closure.Invoke("a", "b"));
        }

        [Fact]
        public void EnsureGenericFunctionUsingClass_ThrowsOnClassMismatch()
        {
            var name = new Symbol("TEST-GF-MISMATCH", Package.CommonLispUser);
            var gf = MopRuntime.EnsureGenericFunction(name, genericFunctionClass: typeof(StandardGenericFunctionMetaobject));

            Assert.Throws<InvalidOperationException>(() =>
                MopRuntime.EnsureGenericFunctionUsingClass(
                    gf,
                    name,
                    genericFunctionClass: typeof(CustomGenericFunctionMetaobject)));
        }

        [Fact]
        public void EnsureGenericFunction_ThrowsForInvalidMethodClass()
        {
            var name = new Symbol("TEST-GF-BAD-METHOD-CLASS", Package.CommonLispUser);

            Assert.Throws<ArgumentException>(() =>
                MopRuntime.EnsureGenericFunction(name, methodClass: typeof(string)));
        }
    }
}
