using System;
using System.Linq;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopIntrospectionReadersTests
    {
        [Fact]
        public void ClassReaders_ReturnSnapshotViewsAndCoreMetadata()
        {
            var baseName = Package.CommonLispUser.Intern("TEST-MOP-READERS-CLASS-BASE");
            var childName = Package.CommonLispUser.Intern("TEST-MOP-READERS-CLASS-CHILD");

            var slot = new DirectSlotDefinitionMetaobject("x");
            slot.InitArgs.Add(":x");
            slot.InitForm = 1;

            _ = MopRuntime.EnsureClass(baseName, documentation: "base-doc");
            var child = MopRuntime.EnsureClass(
                childName,
                directSuperclasses: new object[] { baseName },
                directSlots: new[] { slot },
                defaultInitargs: new object[] { ":k", 10 },
                documentation: "child-doc");

            var supers = MopRuntime.ClassDirectSuperclasses(child);
            var slots = MopRuntime.ClassDirectSlots(child);
            var defaults = MopRuntime.ClassDirectDefaultInitargs(child);

            Assert.Single(supers);
            Assert.Single(slots);
            Assert.Equal(2, defaults.Count);
            Assert.Equal("child-doc", MopRuntime.ClassDocumentation(child));

            var finalizedDefaults = MopRuntime.ClassDefaultInitargs(child);
            Assert.Equal(2, finalizedDefaults.Count);

            var extraSuperName = Package.CommonLispUser.Intern("TEST-MOP-READERS-CLASS-EXTRA");
            var extraSuper = MopRuntime.EnsureClass(extraSuperName);

            child.DirectSuperclasses.Add(extraSuper);
            child.DirectSlots.Clear();
            child.DirectDefaultInitArgs.Clear();

            Assert.Single(supers);
            Assert.Single(slots);
            Assert.Equal(2, defaults.Count);
            Assert.Equal(2, finalizedDefaults.Count);
        }

        [Fact]
        public void GenericFunctionAndMethodReaders_ExposeStableMetadata()
        {
            var name = Package.CommonLispUser.Intern("TEST-MOP-READERS-GF");
            var gf = (StandardGenericFunctionMetaobject)MopRuntime.EnsureGenericFunction(
                name,
                lambdaList: new object[] { "x" },
                documentation: "gf-doc");

            var method = new StandardMethodMetaobject();
            method.Qualifiers.Add(Package.CommonLisp.Intern("AROUND"));
            method.LambdaList.Add("x");
            method.Specializers.Add(new EqlSpecializerMetaobject(7));
            method.Function = new Func<object[], object>(_ => "ok");
            method.Documentation = "method-doc";

            MopRuntime.AddMethod(gf, method);

            var methods = MopRuntime.GenericFunctionMethods(gf);
            var methodQualifiers = MopRuntime.MethodQualifiers(method);
            var methodSpecializers = MopRuntime.MethodSpecializers(method);
            var methodLambdaList = MopRuntime.MethodLambdaList(method);

            Assert.Equal(name, MopRuntime.GenericFunctionName(gf));
            Assert.Equal(typeof(StandardMethodMetaobject), MopRuntime.GenericFunctionMethodClass(gf));
            Assert.Equal("gf-doc", MopRuntime.GenericFunctionDocumentation(gf));
            Assert.Single(MopRuntime.GenericFunctionLambdaList(gf));
            Assert.Single(methods);
            Assert.Single(methodQualifiers);
            Assert.Single(methodSpecializers);
            Assert.Single(methodLambdaList);
            Assert.Equal("method-doc", MopRuntime.MethodDocumentation(method));
            Assert.Same(gf, MopRuntime.MethodGenericFunction(method));
            Assert.NotNull(MopRuntime.MethodFunction(method));

            var replacement = new StandardMethodMetaobject();
            replacement.Qualifiers.Add(Package.CommonLisp.Intern("AROUND"));
            replacement.LambdaList.Add("x");
            replacement.Specializers.Add(method.Specializers[0]);
            replacement.Function = new Func<object[], object>(_ => "new");
            MopRuntime.AddMethod(gf, replacement);

            Assert.Single(methods);
            Assert.NotSame(methods[0], replacement);
        }

        [Fact]
        public void SlotReaders_ExposeSlotMetadataAndImmutableViews()
        {
            var slot = new DirectSlotDefinitionMetaobject("slot-a");
            slot.InitForm = 123;
            slot.InitFunction = () => 456;
            slot.TypeSpecifier = typeof(int);
            slot.Allocation = ":instance";
            slot.InitArgs.Add(":slot-a");
            slot.Documentation = "slot-doc";
            slot.Readers.Add(Package.CommonLispUser.Intern("SLOT-A"));
            slot.Writers.Add(Package.CommonLispUser.Intern("SET-SLOT-A"));

            Assert.Equal("slot-a", MopRuntime.SlotDefinitionName(slot));
            Assert.Equal(123, MopRuntime.SlotDefinitionInitForm(slot));
            Assert.NotNull(MopRuntime.SlotDefinitionInitFunction(slot));
            Assert.Equal(typeof(int), MopRuntime.SlotDefinitionTypeSpecifier(slot));
            Assert.Equal(":instance", MopRuntime.SlotDefinitionAllocation(slot));
            Assert.Equal("slot-doc", MopRuntime.SlotDefinitionDocumentation(slot));

            var initArgs = MopRuntime.SlotDefinitionInitArgs(slot);
            var readers = MopRuntime.DirectSlotDefinitionReaders(slot);
            var writers = MopRuntime.DirectSlotDefinitionWriters(slot);

            Assert.Single(initArgs);
            Assert.Single(readers);
            Assert.Single(writers);

            slot.InitArgs.Add(":later");
            slot.Readers.Add(Package.CommonLispUser.Intern("SLOT-A-2"));
            slot.Writers.Add(Package.CommonLispUser.Intern("SET-SLOT-A-2"));

            Assert.Single(initArgs);
            Assert.Single(readers);
            Assert.Single(writers);

            var className = Package.CommonLispUser.Intern("TEST-MOP-READERS-SLOT-CLASS");
            var cls = MopRuntime.EnsureClass(className, directSlots: new[] { slot });
            var effective = MopRuntime.ClassSlots(cls).Single(s => s.Name == "slot-a");

            Assert.NotNull(MopRuntime.EffectiveSlotDefinitionLocation(effective));
        }
    }
}
