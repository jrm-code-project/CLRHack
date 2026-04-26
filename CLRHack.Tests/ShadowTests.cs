using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class ShadowTests
    {
        private object? ReadAndProcess(string input)
        {
            var reader = new Reader(new StringReader(input));
            var form = reader.ReadSingleObject();
            return Evaluator.Process(form);
        }

        [Fact]
        public void TestTopLevelShadow()
        {
            var pkg = new Package("SHADOW-PKG");
            pkg.UsePackage(Package.CommonLisp);
            Package.Current = pkg;
            
            // Shadow CAR
            var result = ReadAndProcess("(shadow 'CAR)");
            Assert.Same(CL.T, result);
            
            // CAR should NOT be inherited
            var (sym, status) = pkg.FindSymbol("CAR");
            Assert.Null(sym);
            Assert.Equal(SymbolStatus.None, status);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelShadowingImport()
        {
            var p1 = new Package("P1-SI");
            var sym1 = p1.Intern("CONFLICT");
            p1.Export(sym1);
            
            var p2 = new Package("P2-SI");
            p2.UsePackage(Package.CommonLisp);
            Package.Current = p2;
            
            // Shadowing import sym1 into p2
            var result = ReadAndProcess("(shadowing-import 'P1-SI:CONFLICT)");
            Assert.Same(CL.T, result);
            
            var (found, status) = p2.FindSymbol("CONFLICT");
            Assert.Same(sym1, found);
            Assert.Equal(SymbolStatus.Internal, status);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelShadowList()
        {
            var pkg = new Package("SHADOW-LIST-PKG");
            pkg.UsePackage(Package.CommonLisp);
            Package.Current = pkg;
            
            ReadAndProcess("(shadow '(CAR CDR))");
            
            Assert.Null(pkg.FindSymbol("CAR").symbol);
            Assert.Null(pkg.FindSymbol("CDR").symbol);
            
            Package.Current = Package.CommonLispUser;
        }
    }
}
