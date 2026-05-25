using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopAddRemoveMethodTests
    {
        [Fact]
        public void AddMethod_AssociatesMethodAndUpdatesCallableBehavior()
        {
            var name = new Symbol("TEST-GF-ADD-METHOD", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = (Func<object[], object>)(args => $"M:{args[0]}");

            MopRuntime.AddMethod(gf, method);

            Assert.Single(gf.Methods);
            Assert.Same(gf, method.GenericFunction);
            var closure = Closure.RequireClosure(name.Function, name.Name);
            Assert.Equal("M:42", closure.Invoke(42));
        }

        [Fact]
        public void AddMethod_ReplacesExistingMethodWithSameSpecializersAndQualifiers()
        {
            var name = new Symbol("TEST-GF-REPLACE-METHOD", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Add("x");

            var m1 = new StandardMethodMetaobject();
            m1.LambdaList.Add("x");
            m1.Specializers.Add(new StandardClassMetaobject("T"));
            m1.Function = (Func<object[], object>)(_ => "old");

            var m2 = new StandardMethodMetaobject();
            m2.LambdaList.Add("x");
            m2.Specializers.Add(m1.Specializers[0]);
            m2.Function = (Func<object[], object>)(_ => "new");

            MopRuntime.AddMethod(gf, m1);
            MopRuntime.AddMethod(gf, m2);

            Assert.Single(gf.Methods);
            Assert.Same(m2, gf.Methods[0]);
            Assert.Null(m1.GenericFunction);
            Assert.Equal("new", gf.Callable.Invoke("v"));
        }

        [Fact]
        public void AddMethod_ThrowsWhenMethodIsBoundToAnotherGenericFunction()
        {
            var gf1 = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(new Symbol("TEST-GF-BIND-1", Package.CommonLispUser));
            var gf2 = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(new Symbol("TEST-GF-BIND-2", Package.CommonLispUser));

            gf1.LambdaList.Add("x");
            gf2.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = (Func<object[], object>)(_ => "ok");

            MopRuntime.AddMethod(gf1, method);
            Assert.Throws<InvalidOperationException>(() => MopRuntime.AddMethod(gf2, method));
        }

        [Fact]
        public void RemoveMethod_DetachesMethodAndCausesNoMethodsFailure()
        {
            var name = new Symbol("TEST-GF-REMOVE-METHOD", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = (Func<object[], object>)(_ => "ok");

            MopRuntime.AddMethod(gf, method);
            MopRuntime.RemoveMethod(gf, method);

            Assert.Empty(gf.Methods);
            Assert.Null(method.GenericFunction);
            Assert.Throws<InvalidOperationException>(() => gf.Callable.Invoke("x"));
        }

        [Fact]
        public void AddMethod_ThrowsOnLambdaListCongruenceMismatch()
        {
            var name = new Symbol("TEST-GF-LAMBDA-MISMATCH", Package.CommonLispUser);
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Add("x");
            gf.LambdaList.Add("y");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = (Func<object[], object>)(_ => "bad");

            Assert.Throws<InvalidOperationException>(() => MopRuntime.AddMethod(gf, method));
        }
    }
}
