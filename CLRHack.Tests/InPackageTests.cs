using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class InPackageTests
    {
        private object? ReadAndProcess(string input)
        {
            var reader = new Reader(new StringReader(input));
            var form = reader.ReadSingleObject();
            return Evaluator.Process(form);
        }

        [Fact]
        public void TestInPackageSwitch()
        {
            // 1. Create a new package
            var myPkg = new Package("MY-NEW-PKG");
            
            // 2. Switch to it
            var result = ReadAndProcess("(in-package \"MY-NEW-PKG\")");
            Assert.Same(myPkg, result);
            Assert.Same(myPkg, Package.Current);
            
            // 3. Verify interning happens in the new package
            var reader = new Reader(new StringReader("NEW-SYMBOL"));
            var sym = (Symbol)reader.ReadSingleObject()!;
            Assert.Same(myPkg, sym.Package);
            
            // Reset to CL-USER for other tests
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestInPackageWithSymbol()
        {
            var myPkg = new Package("SYMBOL-PKG");
            
            // in-package often uses a keyword or symbol
            ReadAndProcess("(in-package :SYMBOL-PKG)");
            Assert.Same(myPkg, Package.Current);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestInPackageNotFound()
        {
            // Pragmatic behavior: create the package if it's missing
            var result = ReadAndProcess("(in-package \"NON-EXISTENT-PKG\")");
            Assert.IsType<Package>(result);
            Assert.Equal("NON-EXISTENT-PKG", ((Package)result).Name);
            Assert.Same(result, Package.Current);
            
            Package.Current = Package.CommonLispUser;
        }
    }
}
