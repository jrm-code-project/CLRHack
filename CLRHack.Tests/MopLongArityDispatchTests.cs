using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopLongArityDispatchTests
    {
        [Fact]
        public void GenericFunctionCallable_SupportsMoreThanEightArguments()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-LONG-ARITY-1");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            for (var i = 0; i < 9; i++)
            {
                gf.LambdaList.Add($"A{i}");
            }

            var method = new StandardMethodMetaobject();
            for (var i = 0; i < 9; i++)
            {
                method.LambdaList.Add($"A{i}");
            }

            method.Function = new Func<object[], object>(args => args.Length);
            MopRuntime.AddMethod(gf, method);

            var closure = Closure.RequireClosure(name.Function, name.Name);
            var result = closure.Invoke(1, 2, 3, 4, 5, 6, 7, 8, 9);

            Assert.Equal(9, result);
        }

        [Fact]
        public void GenericFunctionApply_SupportsMoreThanEightArguments()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-LONG-ARITY-2");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            for (var i = 0; i < 9; i++)
            {
                gf.LambdaList.Add($"B{i}");
            }

            var method = new StandardMethodMetaobject();
            for (var i = 0; i < 9; i++)
            {
                method.LambdaList.Add($"B{i}");
            }

            method.Function = new Func<object[], object>(args => args[8]);
            MopRuntime.AddMethod(gf, method);

            var listArgs = AdtList.Of(1, 2, 3, 4, 5, 6, 7, 8, 99);
            var result = Closure.Apply(name.Function, listArgs);

            Assert.Equal(99, result);
        }
    }
}
