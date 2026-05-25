using System;
using System.Linq;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopFinalizeInheritanceTests
    {
        [Fact]
        public void ClassSlots_TriggersLazyFinalizeAndProducesDeterministicCpl()
        {
            var rootName = new Symbol("TEST-FINALIZE-ROOT", Package.CommonLispUser);
            var midName = new Symbol("TEST-FINALIZE-MID", Package.CommonLispUser);
            var leafName = new Symbol("TEST-FINALIZE-LEAF", Package.CommonLispUser);

            var root = MopRuntime.EnsureClass(rootName);
            var mid = MopRuntime.EnsureClass(midName, directSuperclasses: new object[] { rootName });
            var leaf = MopRuntime.EnsureClass(leafName, directSuperclasses: new object[] { midName, rootName });

            Assert.False(MopRuntime.ClassFinalizedP(leaf));

            var cpl = MopRuntime.ClassPrecedenceList(leaf).ToArray();
            Assert.True(MopRuntime.ClassFinalizedP(leaf));
            Assert.Equal(3, cpl.Length);
            Assert.Same(leaf, cpl[0]);
            Assert.Same(mid, cpl[1]);
            Assert.Same(root, cpl[2]);
        }

        [Fact]
        public void FinalizeInheritance_ComputesEffectiveSlotsWithOverridePrecedence()
        {
            var baseName = new Symbol("TEST-FINALIZE-SLOTS-BASE", Package.CommonLispUser);
            var childName = new Symbol("TEST-FINALIZE-SLOTS-CHILD", Package.CommonLispUser);

            var baseSlot = new DirectSlotDefinitionMetaobject("x");
            baseSlot.InitForm = "base";
            baseSlot.InitArgs.Add(":x");

            var baseOnly = new DirectSlotDefinitionMetaobject("base-only");
            baseOnly.InitForm = 100;

            var childOverride = new DirectSlotDefinitionMetaobject("x");
            childOverride.InitForm = "child";
            childOverride.InitArgs.Add(":child-x");

            var childOnly = new DirectSlotDefinitionMetaobject("child-only");
            childOnly.InitForm = 200;

            MopRuntime.EnsureClass(baseName, directSlots: new[] { baseSlot, baseOnly });
            var child = MopRuntime.EnsureClass(
                childName,
                directSuperclasses: new object[] { baseName },
                directSlots: new[] { childOverride, childOnly });

            var slots = MopRuntime.ClassSlots(child).ToArray();
            Assert.Equal(3, slots.Length);

            var x = Assert.Single(slots, s => s.Name == "x");
            Assert.Equal("child", x.InitForm);
            Assert.Contains(":x", x.InitArgs);
            Assert.Contains(":child-x", x.InitArgs);

            Assert.Single(slots, s => s.Name == "base-only");
            Assert.Single(slots, s => s.Name == "child-only");
        }

        [Fact]
        public void ComputeDefaultInitArgs_MergesByCplWithMostSpecificOverride()
        {
            var rootName = new Symbol("TEST-FINALIZE-DEFAULTS-ROOT", Package.CommonLispUser);
            var childName = new Symbol("TEST-FINALIZE-DEFAULTS-CHILD", Package.CommonLispUser);

            MopRuntime.EnsureClass(
                rootName,
                defaultInitargs: new object[] { ":a", 1, ":shared", "root" });

            var child = MopRuntime.EnsureClass(
                childName,
                directSuperclasses: new object[] { rootName },
                defaultInitargs: new object[] { ":b", 2, ":shared", "child" });

            MopRuntime.FinalizeInheritance(child);
            var defaults = child.ClassDefaultInitArgs;

            Assert.Equal(6, defaults.Count);
            Assert.Equal(":a", defaults[0]);
            Assert.Equal(1, defaults[1]);
            Assert.Equal(":shared", defaults[2]);
            Assert.Equal("child", defaults[3]);
            Assert.Equal(":b", defaults[4]);
            Assert.Equal(2, defaults[5]);
        }

        [Fact]
        public void EnsureClass_RedefinitionInvalidatesSubclassesUntilRefinalized()
        {
            var baseName = new Symbol("TEST-FINALIZE-INVALIDATE-BASE", Package.CommonLispUser);
            var childName = new Symbol("TEST-FINALIZE-INVALIDATE-CHILD", Package.CommonLispUser);

            var s1 = new DirectSlotDefinitionMetaobject("a");
            var s2 = new DirectSlotDefinitionMetaobject("b");

            MopRuntime.EnsureClass(baseName, directSlots: new[] { s1 });
            var child = MopRuntime.EnsureClass(childName, directSuperclasses: new object[] { baseName });

            _ = MopRuntime.ClassSlots(child);
            Assert.True(MopRuntime.ClassFinalizedP(child));

            MopRuntime.EnsureClass(baseName, directSlots: new[] { s1, s2 });
            Assert.False(MopRuntime.ClassFinalizedP(child));

            var slots = MopRuntime.ClassSlots(child).ToArray();
            Assert.Contains(slots, s => s.Name == "a");
            Assert.Contains(slots, s => s.Name == "b");
            Assert.True(MopRuntime.ClassFinalizedP(child));
        }

        [Fact]
        public void FinalizeInheritance_ThrowsOnCircularSuperclassDependency()
        {
            var aName = new Symbol("TEST-FINALIZE-CYCLE-A", Package.CommonLispUser);
            var bName = new Symbol("TEST-FINALIZE-CYCLE-B", Package.CommonLispUser);

            var a = MopRuntime.EnsureClass(aName);
            MopRuntime.EnsureClass(bName, directSuperclasses: new object[] { aName });
            MopRuntime.EnsureClass(aName, directSuperclasses: new object[] { bName });

            Assert.Throws<InvalidOperationException>(() => MopRuntime.FinalizeInheritance(a));
        }
    }
}
