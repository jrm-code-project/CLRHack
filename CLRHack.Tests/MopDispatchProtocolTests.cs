using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopDispatchProtocolTests
    {
        [Fact]
        public void ComputeApplicableMethods_FiltersByEqlSpecializerAndMostRecentFirst()
        {
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(new Symbol("TEST-GF-DISPATCH-1", Package.CommonLispUser));
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var baseMethod = new StandardMethodMetaobject();
            baseMethod.LambdaList.Add("x");
            baseMethod.Function = (Func<object[], object>)(_ => "base");

            var eqlMethod = new StandardMethodMetaobject();
            eqlMethod.LambdaList.Add("x");
            eqlMethod.Specializers.Add(new EqlSpecializerMetaobject(42));
            eqlMethod.Function = (Func<object[], object>)(_ => "eql");

            MopRuntime.AddMethod(gf, baseMethod);
            MopRuntime.AddMethod(gf, eqlMethod);

            var for42 = MopRuntime.ComputeApplicableMethods(gf, new object[] { 42 });
            Assert.Equal(2, for42.Count);
            Assert.Same(eqlMethod, for42[0]);
            Assert.Same(baseMethod, for42[1]);

            var for99 = MopRuntime.ComputeApplicableMethods(gf, new object[] { 99 });
            Assert.Single(for99);
            Assert.Same(baseMethod, for99[0]);
        }

        [Fact]
        public void ComputeEffectiveMethod_SelectsFirstApplicableMethod()
        {
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(new Symbol("TEST-GF-DISPATCH-2", Package.CommonLispUser));
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var m1 = new StandardMethodMetaobject();
            m1.LambdaList.Add("x");
            m1.Function = (Func<object[], object>)(_ => "m1");

            var m2 = new StandardMethodMetaobject();
            m2.LambdaList.Add("x");
            m2.Function = (Func<object[], object>)(_ => "m2");

            MopRuntime.AddMethod(gf, m1);
            MopRuntime.AddMethod(gf, m2);

            var applicable = MopRuntime.ComputeApplicableMethods(gf, new object[] { "v" });
            var effective = MopRuntime.ComputeEffectiveMethod(gf, applicable);
            Assert.Equal("m2", effective(new object[] { "v" }));
        }

        [Fact]
        public void ComputeDiscriminatingFunction_DrivesCallableBehavior()
        {
            var name = new Symbol("TEST-GF-DISPATCH-3", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var fallback = new StandardMethodMetaobject();
            fallback.LambdaList.Add("x");
            fallback.Function = (Func<object[], object>)(_ => "fallback");

            var eql = new StandardMethodMetaobject();
            eql.LambdaList.Add("x");
            eql.Specializers.Add(new EqlSpecializerMetaobject("hit"));
            eql.Function = (Func<object[], object>)(_ => "hit");

            MopRuntime.AddMethod(gf, fallback);
            MopRuntime.AddMethod(gf, eql);

            Assert.Equal("hit", gf.Callable.Invoke("hit"));
            Assert.Equal("fallback", gf.Callable.Invoke("miss"));
        }

        [Fact]
        public void ComputeEffectiveMethod_ThrowsWhenNoApplicableMethods()
        {
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(new Symbol("TEST-GF-DISPATCH-4", Package.CommonLispUser));
            var effective = MopRuntime.ComputeEffectiveMethod(gf, Array.Empty<MethodMetaobject>());
            Assert.Throws<InvalidOperationException>(() => effective(Array.Empty<object>()));
        }
    }
}
