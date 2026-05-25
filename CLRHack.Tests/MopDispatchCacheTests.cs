using System;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopDispatchCacheTests
    {
        [Fact]
        public void DispatchCache_MemoizesByClassAndEql()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-CACHE-1");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = new Func<object[], object>(args => args[0]);
            MopRuntime.AddMethod(gf, method);

            Assert.Equal(0, gf.DispatchCacheSize);

            // 1. Class-based memoization: same class should share cache entry
            _ = gf.Callable.Invoke(42);
            Assert.Equal(1, gf.DispatchCacheSize);

            _ = gf.Callable.Invoke(43);
            Assert.Equal(1, gf.DispatchCacheSize); // Shared because both are (implicitly) same class

            // 2. Different classes (implicitly handled by ResolveClassOfObject fallbacks)
            _ = gf.Callable.Invoke("foo");
            Assert.Equal(2, gf.DispatchCacheSize);

            // 3. EQL specializer should force caching on value
            var eqlMethod = new StandardMethodMetaobject();
            eqlMethod.LambdaList.Add("x");
            eqlMethod.Specializers.Add(new EqlSpecializerMetaobject(42));
            eqlMethod.Function = new Func<object[], object>(_ => "eql");
            MopRuntime.AddMethod(gf, eqlMethod);

            Assert.Equal(0, gf.DispatchCacheSize);

            _ = gf.Callable.Invoke(42);
            Assert.Equal(1, gf.DispatchCacheSize);

            _ = gf.Callable.Invoke(43);
            Assert.Equal(2, gf.DispatchCacheSize); // Different because position 0 is now EQL-specialized
        }

        [Fact]
        public void AddMethod_InvalidatesDispatchCache()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-CACHE-2");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var baseMethod = new StandardMethodMetaobject();
            baseMethod.LambdaList.Add("x");
            baseMethod.Function = new Func<object[], object>(_ => "base");
            MopRuntime.AddMethod(gf, baseMethod);

            _ = gf.Callable.Invoke("v");
            Assert.Equal(1, gf.DispatchCacheSize);

            var eqlMethod = new StandardMethodMetaobject();
            eqlMethod.LambdaList.Add("x");
            eqlMethod.Specializers.Add(new EqlSpecializerMetaobject("v"));
            eqlMethod.Function = new Func<object[], object>(_ => "new");
            MopRuntime.AddMethod(gf, eqlMethod);

            Assert.Equal(0, gf.DispatchCacheSize);
            Assert.Equal("new", gf.Callable.Invoke("v"));
        }

        [Fact]
        public void RemoveMethod_InvalidatesDispatchCache()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-CACHE-3");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = new Func<object[], object>(_ => "ok");
            MopRuntime.AddMethod(gf, method);

            _ = gf.Callable.Invoke("x");
            Assert.Equal(1, gf.DispatchCacheSize);

            MopRuntime.RemoveMethod(gf, method);
            Assert.Equal(0, gf.DispatchCacheSize);
        }

        [Fact]
        public void EnsureClass_ChangeInvalidatesGenericFunctionCaches()
        {
            var gfName = Package.CommonLispUser.Intern("TEST-MOP-CACHE-4-GF");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(gfName);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = new Func<object[], object>(_ => "ok");
            MopRuntime.AddMethod(gf, method);

            _ = gf.Callable.Invoke(1);
            Assert.Equal(1, gf.DispatchCacheSize);

            var className = Package.CommonLispUser.Intern("TEST-MOP-CACHE-4-CLASS");
            _ = MopRuntime.EnsureClass(className);
            _ = MopRuntime.EnsureClass(className, documentation: "redefined");

            Assert.Equal(0, gf.DispatchCacheSize);
        }
    }
}
