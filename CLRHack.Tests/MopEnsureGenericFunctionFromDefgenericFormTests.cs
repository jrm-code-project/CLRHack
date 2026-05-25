using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopEnsureGenericFunctionFromDefgenericFormTests
    {
        [Fact]
        public void EnsureGenericFunctionFromDefgenericForm_CreatesGenericFunctionWithOptions()
        {
            var name = Package.CommonLispUser.Intern("TEST-DEFERIC-BRIDGE-1");
            var lambdaList = AdtList.Of(Package.CommonLispUser.Intern("X"), Package.CommonLispUser.Intern("Y"));
            var options = AdtList.Of(
                AdtList.Of(Package.Keyword.Intern("DOCUMENTATION"), "gf-doc"),
                AdtList.Of(Package.Keyword.Intern("METHOD-CLASS"), Package.CommonLisp.Intern("STANDARD-METHOD")),
                AdtList.Of(Package.Keyword.Intern("GENERIC-FUNCTION-CLASS"), Package.CommonLisp.Intern("STANDARD-GENERIC-FUNCTION")));

            var adapter = (GenericFunctionClosureAdapter)MopRuntime.EnsureGenericFunctionFromDefgenericForm(name, lambdaList, options);
            var result = adapter.GenericFunction;

            Assert.Same(result, MopRuntime.EnsureGenericFunction(name));
            Assert.Equal("gf-doc", result.Documentation);
            Assert.Equal(typeof(StandardMethodMetaobject), result.MethodClass);
            Assert.Equal(2, result.LambdaList.Count);
        }

        [Fact]
        public void EnsureGenericFunctionFromDefgenericForm_ReinitializesDocumentation()
        {
            var name = Package.CommonLispUser.Intern("TEST-DEFERIC-BRIDGE-2");
            var lambdaList = AdtList.Of(Package.CommonLispUser.Intern("A"));

            _ = MopRuntime.EnsureGenericFunctionFromDefgenericForm(
                name,
                lambdaList,
                AdtList.Of(AdtList.Of(Package.Keyword.Intern("DOCUMENTATION"), "old")));

            var adapter = (GenericFunctionClosureAdapter)MopRuntime.EnsureGenericFunctionFromDefgenericForm(
                name,
                lambdaList,
                AdtList.Of(AdtList.Of(Package.Keyword.Intern("DOCUMENTATION"), "new")));
            var updated = adapter.GenericFunction;

            Assert.Equal("new", updated.Documentation);
            Assert.Single(updated.LambdaList);
        }
    }
}
