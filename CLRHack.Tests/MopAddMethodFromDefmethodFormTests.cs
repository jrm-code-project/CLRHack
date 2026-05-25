using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopAddMethodFromDefmethodFormTests
    {
        [Fact]
        public void AddMethodFromDefmethodForm_CreatesMethodAndUpdatesDispatch()
        {
            var name = Package.CommonLispUser.Intern("TEST-DEFMETHOD-BRIDGE-1");

            var fallbackSpec = AdtList.Of(Package.CommonLispUser.Intern("X"));
            var eqlSpec = AdtList.Of(AdtList.Of(
                Package.CommonLispUser.Intern("X"),
                AdtList.Of(Package.CommonLisp.Intern("EQL"), 7)));

            _ = MopRuntime.AddMethodFromDefmethodForm(
                name,
                List.Empty,
                fallbackSpec,
                new Func<object[], object>(_ => "fallback"),
                List.Empty);

            var added = (MethodMetaobject)MopRuntime.AddMethodFromDefmethodForm(
                name,
                List.Empty,
                eqlSpec,
                new Func<object[], object>(_ => "eql"),
                List.Empty);

            Assert.NotNull(added.GenericFunction);
            Assert.Single(added.Specializers);
            Assert.IsType<EqlSpecializerMetaobject>(added.Specializers[0]);

            var closure = Closure.RequireClosure(name.Function, name.Name);
            Assert.Equal("eql", closure.Invoke(7));
            Assert.Equal("fallback", closure.Invoke(8));
        }

        [Fact]
        public void AddMethodFromDefmethodForm_StoresQualifiers()
        {
            var name = Package.CommonLispUser.Intern("TEST-DEFMETHOD-BRIDGE-2");
            var qualifiers = AdtList.Of(Package.CommonLisp.Intern("AROUND"));
            var specialized = AdtList.Of(Package.CommonLispUser.Intern("X"));

            var method = (MethodMetaobject)MopRuntime.AddMethodFromDefmethodForm(
                name,
                qualifiers,
                specialized,
                new Func<object[], object>(_ => "ok"),
                List.Empty);

            Assert.Single(method.Qualifiers);
            Assert.Equal("AROUND", ((Symbol)method.Qualifiers[0]).Name);
            Assert.Single(method.LambdaList);
            Assert.Equal("ok", ((StandardGenericFunctionMetaobject)method.GenericFunction).Callable.Invoke(1));
        }

        [Fact]
        public void AddMethodFromDefmethodForm_AcceptsClosureAsMethodFunction()
        {
            var name = Package.CommonLispUser.Intern("TEST-DEFMETHOD-BRIDGE-3");
            var specialized = AdtList.Of(Package.CommonLispUser.Intern("X"));

            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(
                Package.CommonLispUser.Intern("TEST-DEFMETHOD-BRIDGE-CALLABLE"));
            gf.SetDiscriminatingFunction(_ => "closure-body");

            var closure = gf.Callable;

            _ = MopRuntime.AddMethodFromDefmethodForm(
                name,
                List.Empty,
                specialized,
                closure,
                List.Empty);

            var fn = Closure.RequireClosure(name.Function, name.Name);
            Assert.Equal("closure-body", fn.Invoke("v"));
        }
    }
}
