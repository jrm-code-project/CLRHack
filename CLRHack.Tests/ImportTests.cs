using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class ImportTests
    {
        private object? ReadAndProcess(string input)
        {
            var reader = new Reader(new StringReader(input));
            var form = reader.ReadSingleObject();
            return Evaluator.Process(form);
        }

        [Fact]
        public void TestTopLevelImportSingle()
        {
            var p1 = new Package("P1-IMPORT");
            var sym1 = p1.Intern("SYM1");
            
            var p2 = new Package("P2-IMPORT");
            p2.UsePackage(Package.CommonLisp);
            Package.Current = p2;
            
            var result = ReadAndProcess("(import 'P1-IMPORT:SYM1)");
            Assert.Same(CL.T, result);
            
            var (found, status) = p2.FindSymbol("SYM1");
            Assert.Same(sym1, found);
            Assert.Equal(SymbolStatus.Internal, status);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelImportList()
        {
            var p1 = new Package("P1-IMPORT-LIST");
            var s1 = p1.Intern("S1");
            var s2 = p1.Intern("S2");
            
            var p2 = new Package("P2-IMPORT-LIST");
            p2.UsePackage(Package.CommonLisp);
            Package.Current = p2;
            
            ReadAndProcess("(import '(P1-IMPORT-LIST:S1 P1-IMPORT-LIST:S2))");
            
            Assert.Same(s1, p2.FindSymbol("S1").symbol);
            Assert.Same(s2, p2.FindSymbol("S2").symbol);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelImportWithPackage()
        {
            var p1 = new Package("P1-IMPORT-PKG");
            var sym = p1.Intern("SYM");
            
            var target = new Package("TARGET-IMPORT-PKG");
            target.UsePackage(Package.CommonLisp);
            
            ReadAndProcess("(import 'P1-IMPORT-PKG:SYM \"TARGET-IMPORT-PKG\")");
            
            Assert.Same(sym, target.FindSymbol("SYM").symbol);
        }

        [Fact]
        public void TestImportConflict()
        {
            var p1 = new Package("P1-CONFLICT");
            var sym1 = p1.Intern("SYM");
            
            var p2 = new Package("P2-CONFLICT");
            p2.UsePackage(Package.CommonLisp);
            p2.Intern("SYM"); // Local symbol with same name
            
            Assert.Throws<InvalidOperationException>(() => {
                Package.Current = p2;
                ReadAndProcess("(import 'P1-CONFLICT:SYM)");
            });
            
            Package.Current = Package.CommonLispUser;
        }
    }
}
