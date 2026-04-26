using System;
using System.IO;
using System.Linq;
using Xunit;
using Lisp;

namespace CLRHack.Tests
{
    [Collection("Sequential")]
    public class DefpackageTests
    {
        private object? ReadAndProcess(string input)
        {
            var reader = new Reader(new StringReader(input));
            var form = reader.ReadSingleObject();
            return Evaluator.Process(form);
        }

        [Fact]
        public void TestSimpleDefpackage()
        {
            var result = ReadAndProcess("(defpackage \"MY-PKG\" (:nicknames \"MP\") (:export \"MY-SYMBOL\"))");
            Assert.IsType<Package>(result);
            var pkg = (Package)result;
            
            Assert.Equal("MY-PKG", pkg.Name);
            Assert.Contains("MP", pkg.Nicknames);
            
            var (sym, status) = pkg.FindSymbol("MY-SYMBOL");
            Assert.NotNull(sym);
            Assert.Equal(SymbolStatus.External, status);
        }

        [Fact]
        public void TestDefpackageWithUse()
        {
            // Ensure CL is available
            var result = ReadAndProcess("(defpackage \"USE-TEST\" (:use \"COMMON-LISP\"))");
            var pkg = (Package)result!;
            
            // Should inherit CAR from CL
            var (sym, status) = pkg.FindSymbol("CAR");
            Assert.NotNull(sym);
            Assert.Equal(SymbolStatus.Inherited, status);
            Assert.Same(Package.CommonLisp.FindSymbol("CAR").symbol, sym);
        }

        [Fact]
        public void TestDefpackageWithShadow()
        {
            var result = ReadAndProcess("(defpackage \"SHADOW-TEST\" (:use \"COMMON-LISP\") (:shadow \"CAR\"))");
            var pkg = (Package)result!;
            
            // CAR should NOT be inherited
            var (sym, status) = pkg.FindSymbol("CAR");
            Assert.Null(sym);
            Assert.Equal(SymbolStatus.None, status);
            
            // Interning it should create a local symbol
            var localCar = pkg.Intern("CAR");
            Assert.NotSame(Package.CommonLisp.FindSymbol("CAR").symbol, localCar);
        }

        [Fact]
        public void TestDefpackageWithShadowingImport()
        {
            var p1 = new Package("SOURCE-PKG");
            var sym1 = p1.Intern("CONFLICT");
            p1.Export(sym1);
            
            var result = ReadAndProcess("(defpackage \"SHADOW-IMPORT-TEST\" (:shadowing-import-from \"SOURCE-PKG\" \"CONFLICT\"))");
            var pkg = (Package)result!;
            
            var (found, status) = pkg.FindSymbol("CONFLICT");
            Assert.Same(sym1, found);
            Assert.Equal(SymbolStatus.Internal, status);
        }
    }
}
