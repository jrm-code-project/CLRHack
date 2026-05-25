using System;
using System.Collections.Generic;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopMethodCombinationTests
    {
        [Fact]
        public void FindMethodCombination_ReturnsStandardForNullAndStandardDesignator()
        {
            var byNull = MopRuntime.FindMethodCombination();
            var bySymbol = MopRuntime.FindMethodCombination(Package.CommonLisp.Intern("STANDARD"));

            Assert.NotNull(byNull);
            Assert.Same(byNull, bySymbol);
            Assert.Equal("STANDARD", byNull.Name);
        }

        [Fact]
        public void FindMethodCombination_ReturnsNullForUnknownWhenErrorpFalse()
        {
            var result = MopRuntime.FindMethodCombination("UNKNOWN", errorp: false);
            Assert.Null(result);
        }

        [Fact]
        public void ComputeEffectiveMethod_ImplementsBeforePrimaryAfterOrdering()
        {
            MopRuntime.EnsureClass("T");
            MopRuntime.EnsureClass("STRING");

            var name = Package.CommonLispUser.Intern("TEST-METHOD-COMBINATION-ORDER");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var trace = new List<string>();

            var beforeOld = new StandardMethodMetaobject();
            beforeOld.Qualifiers.Add(Package.CommonLisp.Intern("BEFORE"));
            beforeOld.LambdaList.Add("x");
            beforeOld.Specializers.Add(MopRuntime.FindClass("T")); // Less specific
            beforeOld.Function = new Func<object[], object>(_ =>
            {
                trace.Add("before-old");
                return null;
            });

            var beforeNew = new StandardMethodMetaobject();
            beforeNew.Qualifiers.Add(Package.CommonLisp.Intern("BEFORE"));
            beforeNew.LambdaList.Add("x");
            beforeNew.Specializers.Add(MopRuntime.FindClass("STRING")); // More specific
            beforeNew.Function = new Func<object[], object>(_ =>
            {
                trace.Add("before-new");
                return null;
            });

            var primary = new StandardMethodMetaobject();
            primary.LambdaList.Add("x");
            primary.Specializers.Add(MopRuntime.FindClass("T"));
            primary.Function = new Func<object[], object>(_ =>
            {
                trace.Add("primary");
                return "primary-result";
            });

            var afterOld = new StandardMethodMetaobject();
            afterOld.Qualifiers.Add(Package.CommonLisp.Intern("AFTER"));
            afterOld.LambdaList.Add("x");
            afterOld.Specializers.Add(MopRuntime.FindClass("T")); // Less specific (runs later in reverse)
            afterOld.Function = new Func<object[], object>(_ =>
            {
                trace.Add("after-old");
                return null;
            });

            var afterNew = new StandardMethodMetaobject();
            afterNew.Qualifiers.Add(Package.CommonLisp.Intern("AFTER"));
            afterNew.LambdaList.Add("x");
            afterNew.Specializers.Add(MopRuntime.FindClass("STRING")); // More specific (runs earlier in reverse)
            afterNew.Function = new Func<object[], object>(_ =>
            {
                trace.Add("after-new");
                return null;
            });

            MopRuntime.AddMethod(gf, beforeOld);
            MopRuntime.AddMethod(gf, primary);
            MopRuntime.AddMethod(gf, afterOld);
            MopRuntime.AddMethod(gf, beforeNew);
            MopRuntime.AddMethod(gf, afterNew);

            var result = gf.Callable.Invoke("arg");

            Assert.Equal("primary-result", result);
            Assert.Equal(new[] { "before-new", "before-old", "primary", "after-old", "after-new" }, trace.ToArray());
        }

        [Fact]
        public void AroundMethod_TakesPrecedenceOverPrimaryMethods()
        {
            var name = Package.CommonLispUser.Intern("TEST-METHOD-COMBINATION-AROUND");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var primaryCalled = false;

            var primary = new StandardMethodMetaobject();
            primary.LambdaList.Add("x");
            primary.Function = new Func<object[], object>(_ =>
            {
                primaryCalled = true;
                return "primary";
            });

            var around = new StandardMethodMetaobject();
            around.Qualifiers.Add(Package.CommonLisp.Intern("AROUND"));
            around.LambdaList.Add("x");
            around.Function = new Func<object[], object>(_ => "around");

            MopRuntime.AddMethod(gf, primary);
            MopRuntime.AddMethod(gf, around);

            var result = gf.Callable.Invoke("arg");

            Assert.Equal("around", result);
            Assert.False(primaryCalled);
        }
    }
}
