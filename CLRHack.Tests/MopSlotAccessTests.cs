using System;
using System.Linq;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopSlotAccessTests
    {
        [Fact]
        public void AllocateInstance_AssignsSequentialLocationsForInstanceSlots()
        {
            var className = new Symbol("TEST-SLOT-ALLOCATE-1", Package.CommonLispUser);

            var s1 = new DirectSlotDefinitionMetaobject("a");
            var s2 = new DirectSlotDefinitionMetaobject("b");
            s2.Allocation = ":class";
            var s3 = new DirectSlotDefinitionMetaobject("c");

            var cls = MopRuntime.EnsureClass(className, directSlots: new[] { s1, s2, s3 });
            var instance = MopRuntime.AllocateInstance(cls);

            Assert.Same(cls, instance.Class);
            var slots = MopRuntime.ClassSlots(cls).ToArray();
            Assert.Equal(0, Assert.Single(slots, s => s.Name == "a").Location);
            Assert.Null(Assert.Single(slots, s => s.Name == "b").Location);
            Assert.Equal(1, Assert.Single(slots, s => s.Name == "c").Location);
        }

        [Fact]
        public void MakeInstance_UsesInitargsAndSlotDefaults()
        {
            var className = new Symbol("TEST-SLOT-MAKE-1", Package.CommonLispUser);

            var x = new DirectSlotDefinitionMetaobject("x");
            x.InitArgs.Add(":x");
            x.InitForm = 10;

            var y = new DirectSlotDefinitionMetaobject("y");
            y.InitArgs.Add(":y");
            y.InitFunction = () => 99;

            var cls = MopRuntime.EnsureClass(className, directSlots: new[] { x, y });
            var instance = MopRuntime.MakeInstance(cls, new object[] { ":x", 42 });

            Assert.Equal(42, MopRuntime.SlotValueUsingClass(cls, instance, "x"));
            Assert.Equal(99, MopRuntime.SlotValueUsingClass(cls, instance, "y"));
        }

        [Fact]
        public void SlotProtocol_BoundpSetAndMakunboundBehaveAsExpected()
        {
            var className = new Symbol("TEST-SLOT-PROTOCOL-1", Package.CommonLispUser);
            var slot = new DirectSlotDefinitionMetaobject("value");
            var cls = MopRuntime.EnsureClass(className, directSlots: new[] { slot });
            var instance = MopRuntime.AllocateInstance(cls);

            Assert.False(MopRuntime.SlotBoundpUsingClass(cls, instance, "value"));
            Assert.Throws<InvalidOperationException>(() => MopRuntime.SlotValueUsingClass(cls, instance, "value"));

            MopRuntime.SetSlotValueUsingClass(cls, instance, "value", "ok");
            Assert.True(MopRuntime.SlotBoundpUsingClass(cls, instance, "value"));
            Assert.Equal("ok", MopRuntime.SlotValueUsingClass(cls, instance, "value"));

            MopRuntime.SlotMakunboundUsingClass(cls, instance, "value");
            Assert.False(MopRuntime.SlotBoundpUsingClass(cls, instance, "value"));
            Assert.Throws<InvalidOperationException>(() => MopRuntime.SlotValueUsingClass(cls, instance, "value"));
        }

        [Fact]
        public void SlotProtocol_RejectsClassMismatch()
        {
            var c1 = MopRuntime.EnsureClass(new Symbol("TEST-SLOT-MISMATCH-1", Package.CommonLispUser), directSlots: new[] { new DirectSlotDefinitionMetaobject("x") });
            var c2 = MopRuntime.EnsureClass(new Symbol("TEST-SLOT-MISMATCH-2", Package.CommonLispUser), directSlots: new[] { new DirectSlotDefinitionMetaobject("x") });
            var instance = MopRuntime.AllocateInstance(c1);

            Assert.Throws<InvalidOperationException>(() => MopRuntime.SlotBoundpUsingClass(c2, instance, "x"));
        }

        [Fact]
        public void AllocateInstance_RejectsNonStandardClassMetaclass()
        {
            var name = new Symbol("TEST-SLOT-ALLOCATE-NONSTANDARD", Package.CommonLispUser);
            var builtin = MopRuntime.EnsureClass(name, metaclass: typeof(BuiltInClassMetaobject));

            Assert.Throws<InvalidOperationException>(() => MopRuntime.AllocateInstance(builtin));
        }
    }
}
