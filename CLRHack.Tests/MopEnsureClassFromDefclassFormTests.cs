using Lisp;
using Xunit;

namespace CLRHack.Tests
{
    public class MopEnsureClassFromDefclassFormTests
    {
        [Fact]
        public void EnsureClassFromDefclassForm_ParsesSlotsDefaultsAndOptions()
        {
            var className = Package.CommonLispUser.Intern("TEST-DEFCLASS-BRIDGE-1");
            var superclass = Package.CommonLispUser.Intern("TEST-DEFCLASS-BRIDGE-SUPER");
            MopRuntime.EnsureClass(superclass);

            var kwInitarg = Package.Keyword.Intern("INITARG");
            var kwAccessor = Package.Keyword.Intern("ACCESSOR");
            var kwAllocation = Package.Keyword.Intern("ALLOCATION");
            var kwInstance = Package.Keyword.Intern("INSTANCE");
            var kwDefaultInitargs = Package.Keyword.Intern("DEFAULT-INITARGS");
            var kwDocumentation = Package.Keyword.Intern("DOCUMENTATION");
            var kwMetaclass = Package.Keyword.Intern("METACLASS");

            var slotSpec = AdtList.Of(
                Package.CommonLispUser.Intern("X"),
                kwInitarg,
                Package.Keyword.Intern("X"),
                kwAccessor,
                Package.CommonLispUser.Intern("X-ACCESSOR"),
                kwAllocation,
                kwInstance);

            var defaults = AdtList.Of(AdtList.Of(Package.Keyword.Intern("X"), 42));
            var options = AdtList.Of(
                AdtList.Of(kwDocumentation, "mop-doc"),
                AdtList.Of(kwMetaclass, Package.CommonLisp.Intern("STANDARD-CLASS")),
                AdtList.Of(kwDefaultInitargs, AdtList.Of(Package.Keyword.Intern("X"), 42)));

            var result = (ClassMetaobject)MopRuntime.EnsureClassFromDefclassForm(
                className,
                AdtList.Of(superclass),
                AdtList.Of(slotSpec),
                defaults,
                options);

            Assert.Same(result, MopRuntime.FindClass(className));
            Assert.Equal("mop-doc", result.Documentation);
            Assert.Single(result.DirectSuperclasses);
            Assert.Same(superclass, result.DirectSuperclasses[0].Name);
            Assert.Single(result.DirectSlots);
            Assert.Equal("X", result.DirectSlots[0].Name);
            Assert.Single(result.DirectSlots[0].InitArgs);
            Assert.Equal(2, result.DirectDefaultInitArgs.Count);
            Assert.Equal(Package.Keyword.Intern("X"), result.DirectDefaultInitArgs[0]);
            Assert.Equal(42, result.DirectDefaultInitArgs[1]);
        }

        [Fact]
        public void EnsureClassFromDefclassForm_HonorsBuiltInMetaclassValidation()
        {
            var className = Package.CommonLispUser.Intern("TEST-DEFCLASS-BRIDGE-2");
            var standardSuper = Package.CommonLispUser.Intern("TEST-DEFCLASS-BRIDGE-STANDARD-SUPER");
            MopRuntime.EnsureClass(standardSuper);

            var options = AdtList.Of(
                AdtList.Of(Package.Keyword.Intern("METACLASS"), Package.CommonLisp.Intern("BUILT-IN-CLASS")));

            Assert.Throws<System.InvalidOperationException>(() =>
                MopRuntime.EnsureClassFromDefclassForm(
                    className,
                    AdtList.Of(standardSuper),
                    List.Empty,
                    List.Empty,
                    options));
        }
    }
}
