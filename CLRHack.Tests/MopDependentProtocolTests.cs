using System;
using System.Collections.Generic;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopDependentProtocolTests
    {
        [Fact]
        public void AddDependent_AndMapDependents_DeduplicatesEntries()
        {
            var gf = new StandardGenericFunctionMetaobject();
            var dep1 = new object();
            var dep2 = new object();

            _ = MopRuntime.AddDependent(gf, dep1);
            _ = MopRuntime.AddDependent(gf, dep1);
            _ = MopRuntime.AddDependent(gf, dep2);

            var observed = new List<object>();
            MopRuntime.MapDependents(gf, d => observed.Add(d));

            Assert.Equal(2, observed.Count);
            Assert.Contains(dep1, observed);
            Assert.Contains(dep2, observed);
        }

        [Fact]
        public void RemoveDependent_RemovesPreviouslyAddedDependent()
        {
            var gf = new StandardGenericFunctionMetaobject();
            var dep = new object();

            _ = MopRuntime.AddDependent(gf, dep);
            _ = MopRuntime.RemoveDependent(gf, dep);

            var observed = new List<object>();
            MopRuntime.MapDependents(gf, d => observed.Add(d));

            Assert.Empty(observed);
        }

        [Fact]
        public void UpdateDependent_InvokesActionDependent()
        {
            var gf = new StandardGenericFunctionMetaobject();
            Metaobject? seenMetaobject = null;
            object? seenUpdate = null;

            Action<Metaobject, object> dep = (metaobject, updateInfo) =>
            {
                seenMetaobject = metaobject;
                seenUpdate = updateInfo;
            };

            MopRuntime.UpdateDependent(gf, dep, "manual-update");

            Assert.Same(gf, seenMetaobject);
            Assert.Equal("manual-update", seenUpdate);
        }

        [Fact]
        public void EnsureGenericFunction_NotifiesDependentsOnReinitialize()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-DEPENDENT-GF-ENSURE");
            var gf = MopRuntime.EnsureGenericFunction(name);
            var updates = new List<object>();

            Action<Metaobject, object> dep = (_, updateInfo) => updates.Add(updateInfo);
            _ = MopRuntime.AddDependent(gf, dep);

            _ = MopRuntime.EnsureGenericFunction(name, documentation: "updated");

            Assert.Contains("ensure-generic-function", updates);
        }

        [Fact]
        public void EnsureClass_NotifiesDependentsOnRedefinition()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-DEPENDENT-CLASS");
            var cls = MopRuntime.EnsureClass(name);
            var updates = new List<object>();

            Action<Metaobject, object> dep = (_, updateInfo) => updates.Add(updateInfo);
            _ = MopRuntime.AddDependent(cls, dep);

            _ = MopRuntime.EnsureClass(name, documentation: "updated");

            Assert.Contains("ensure-class", updates);
        }

        [Fact]
        public void AddAndRemoveMethod_NotifyGenericFunctionDependents()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-DEPENDENT-GF");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(name);
            gf.LambdaList.Clear();
            gf.LambdaList.Add("x");

            var updates = new List<object>();
            Action<Metaobject, object> dep = (_, updateInfo) => updates.Add(updateInfo);
            _ = MopRuntime.AddDependent(gf, dep);

            var method = new StandardMethodMetaobject();
            method.LambdaList.Add("x");
            method.Function = new Func<object[], object>(_ => "ok");

            MopRuntime.AddMethod(gf, method);
            MopRuntime.RemoveMethod(gf, method);

            Assert.Contains("add-method", updates);
            Assert.Contains("remove-method", updates);
        }
    }
}
