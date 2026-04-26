using System;
using System.Collections.Generic;
using System.Linq;
using Lisp;
using Xunit;

namespace CLRHack.Tests
{
[Collection("Sequential")]
    public class PackageComplianceTests
    {
        [Fact]
        public void TestImport()
        {
            var p1 = new Package("P1");
            var p2 = new Package("P2");
            var sym = p1.Intern("SYM");
            
            p2.Import(sym);
            var (found, status) = p2.FindSymbol("SYM");
            Assert.Same(sym, found);
            Assert.Equal(SymbolStatus.Internal, status);
        }

        [Fact]
        public void TestImportConflict()
        {
            var p1 = new Package("P1-CONFLICT");
            var p2 = new Package("P2-CONFLICT");
            var sym1 = p1.Intern("SYM");
            var sym2 = p2.Intern("SYM");
            
            Assert.Throws<InvalidOperationException>(() => p2.Import(sym1));
        }

        [Fact]
        public void TestUnintern()
        {
            var p = new Package("UNINTERN-TEST");
            var sym = p.Intern("SYM");
            p.Export(sym);
            
            Assert.True(p.Unintern(sym));
            var (found, status) = p.FindSymbol("SYM");
            Assert.Null(found);
            Assert.Equal(SymbolStatus.None, status);
        }

        [Fact]
        public void TestUnexport()
        {
            var p = new Package("UNEXPORT-TEST");
            var sym = p.Intern("SYM");
            p.Export(sym);
            
            var (_, status1) = p.FindSymbol("SYM");
            Assert.Equal(SymbolStatus.External, status1);
            
            p.Unexport(sym);
            var (_, status2) = p.FindSymbol("SYM");
            Assert.Equal(SymbolStatus.Internal, status2);
        }

        [Fact]
        public void TestShadowingImport()
        {
            var p1 = new Package("P1-SHADOW");
            var p2 = new Package("P2-SHADOW");
            var sym1 = p1.Intern("SYM");
            p1.Export(sym1);
            
            p2.UsePackage(p1);
            var sym2 = p2.Intern("SYM"); // This is a local symbol
            
            // Shadowing import should replace the local symbol and shadow the inherited one
            p2.ShadowingImport(sym1);
            var (found, status) = p2.FindSymbol("SYM");
            Assert.Same(sym1, found);
            Assert.Equal(SymbolStatus.Internal, status);
        }

        [Fact]
        public void TestUnusePackage()
        {
            var p1 = new Package("P1-UNUSE");
            var p2 = new Package("P2-UNUSE");
            var sym = p1.Intern("SYM");
            p1.Export(sym);
            
            p2.UsePackage(p1);
            Assert.Same(sym, p2.FindSymbol("SYM").symbol);
            
            p2.UnusePackage(p1);
            Assert.Null(p2.FindSymbol("SYM").symbol);
        }

        [Fact]
        public void TestRenamePackage()
        {
            var p = new Package("OLD-NAME", new[] { "NICK1" });
            p.Rename("NEW-NAME", new[] { "NICK2" });
            
            Assert.Equal("NEW-NAME", p.Name);
            Assert.Same(p, Package.Find("NEW-NAME"));
            Assert.Same(p, Package.Find("NICK2"));
            Assert.Null(Package.Find("OLD-NAME"));
            Assert.Null(Package.Find("NICK1"));
        }

        [Fact]
        public void TestDeletePackage()
        {
            var p = new Package("TO-DELETE");
            Package.Delete(p);
            Assert.Null(Package.Find("TO-DELETE"));
        }

        [Fact]
        public void TestListAllPackages()
        {
            var pkgs = Package.ListAllPackages().ToList();
            Assert.Contains(Package.CommonLisp, pkgs);
            Assert.Contains(Package.CommonLispUser, pkgs);
        }
        
        [Fact]
        public void TestUsePackageConflict_TwoInherited()
        {
            var p1 = new Package("P1-USE-CONFLICT-A");
            var p2 = new Package("P2-USE-CONFLICT-B");
            var p3 = new Package("P3-USE-CONFLICT-C");
            
            var sym1 = p1.Intern("SYM");
            p1.Export(sym1);
            
            var sym2 = p2.Intern("SYM");
            p2.Export(sym2);
            
            p3.UsePackage(p1);
            // p3 now inherits SYM from p1.
            // Using p2 should cause a conflict because p3 would inherit a DIFFERENT SYM from p2.
            Assert.Throws<InvalidOperationException>(() => p3.UsePackage(p2));
        }

        [Fact]
        public void TestUsePackage_PresentShadowsInherited()
        {
            var p1 = new Package("P1-SHADOW-TEST");
            var p2 = new Package("P2-SHADOW-TEST");
            
            var sym1 = p1.Intern("SYM");
            p1.Export(sym1);
            
            var sym2 = p2.Intern("SYM"); // Present in p2
            
            // Using p1 should NOT cause a conflict; sym2 simply shadows sym1.
            p2.UsePackage(p1);
            
            var (found, status) = p2.FindSymbol("SYM");
            Assert.Same(sym2, found);
            Assert.Equal(SymbolStatus.Internal, status);
        }
    }
}
