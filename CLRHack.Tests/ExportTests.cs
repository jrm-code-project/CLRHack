using System;
using System.IO;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class ExportTests
    {
        private object? ReadAndProcess(string input)
        {
            var reader = new Reader(new StringReader(input));
            var form = reader.ReadSingleObject();
            return Evaluator.Process(form);
        }

        [Fact]
        public void TestTopLevelExportSingle()
        {
            var pkg = new Package("EXPORT-SINGLE");
            pkg.UsePackage(Package.CommonLisp);
            Package.Current = pkg;
            
            var sym = pkg.Intern("SYM1");
            var result = ReadAndProcess("(export 'SYM1)");
            
            Assert.Same(CL.T, result);
            var (_, status) = pkg.FindSymbol("SYM1");
            Assert.Equal(SymbolStatus.External, status);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelExportList()
        {
            var pkg = new Package("EXPORT-LIST");
            pkg.UsePackage(Package.CommonLisp);
            Package.Current = pkg;
            
            pkg.Intern("S1");
            pkg.Intern("S2");
            var result = ReadAndProcess("(export '(S1 S2))");
            
            Assert.Same(CL.T, result);
            Assert.Equal(SymbolStatus.External, pkg.FindSymbol("S1").status);
            Assert.Equal(SymbolStatus.External, pkg.FindSymbol("S2").status);
            
            Package.Current = Package.CommonLispUser;
        }

        [Fact]
        public void TestTopLevelExportWithPackage()
        {
            var target = new Package("TARGET-PKG");
            var sym = target.Intern("TARGET-SYM");
            
            var result = ReadAndProcess("(export 'TARGET-SYM \"TARGET-PKG\")");
            
            Assert.Same(CL.T, result);
            Assert.Equal(SymbolStatus.External, target.FindSymbol("TARGET-SYM").status);
        }
    }
}
