using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopGenericFunctionCallableTests
    {
        [Fact]
        public void StandardGenericFunction_ClosureAdapter_UsesDiscriminatingFunction()
        {
            var gf = new StandardGenericFunctionMetaobject();
            gf.SetDiscriminatingFunction(args => $"argc:{args.Length};first:{(args.Length > 0 ? args[0] : "nil")}");

            var closure = gf.Callable;
            var result0 = closure.Invoke();
            var result2 = closure.Invoke("x", 42);

            Assert.Equal("argc:0;first:nil", result0);
            Assert.Equal("argc:2;first:x", result2);
        }

        [Fact]
        public void StandardGenericFunction_ClosureAdapter_SupportsMoreThanEightArgsViaParamsInvoke()
        {
            var gf = new StandardGenericFunctionMetaobject();
            gf.SetDiscriminatingFunction(args => args.Length);

            var closure = gf.Callable;
            var args = new object[] { 0, 1, 2, 3, 4, 5, 6, 7, 8 };
            var result = closure.Invoke(args);

            Assert.Equal(9, result);
        }

        [Fact]
        public void ClosureRequireClosure_AcceptsGenericFunctionAdapter()
        {
            var gf = new StandardGenericFunctionMetaobject();
            gf.SetDiscriminatingFunction(args => "ok");

            var resolved = Closure.RequireClosure(gf.Callable, "MOP-GF");
            Assert.Same(gf.Callable, resolved);
            Assert.Equal("ok", resolved.Invoke());
        }
    }
}
