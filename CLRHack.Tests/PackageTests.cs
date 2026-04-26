using Xunit;
using Lisp;

namespace CLRHack.Tests;

[Collection("Sequential")]
public class PackageTests
{
    [Fact]
    public void TestFindExistingPackage()
    {
        var cl = Package.Find("COMMON-LISP");
        Assert.NotNull(cl);
        Assert.Equal("COMMON-LISP", cl.Name);
    }

    [Fact]
    public void TestFindNonExistingPackage()
    {
        var pkg = Package.Find("NON-EXISTENT");
        Assert.Null(pkg);
    }

    [Fact]
    public void TestCommonLispPackage()
    {
        Assert.NotNull(Package.CommonLisp);
        Assert.Equal("COMMON-LISP", Package.CommonLisp.Name);
        Assert.Same(Package.CommonLisp, Package.Find("CL"));
    }

    [Fact]
    public void TestKeywordPackage()
    {
        Assert.NotNull(Package.Keyword);
        Assert.Equal("KEYWORD", Package.Keyword.Name);
        Assert.Same(Package.Keyword, Package.Find("KEYWORD"));
    }

    [Fact]
    public void TestCommonLispUserPackage()
    {
        Assert.NotNull(Package.CommonLispUser);
        Assert.Equal("COMMON-LISP-USER", Package.CommonLispUser.Name);
        Assert.Same(Package.CommonLispUser, Package.Find("CL-USER"));
        
        // Verify it uses COMMON-LISP
        var clSymbol = Package.CommonLisp.Intern("TEST-CL-SYMBOL");
        Package.CommonLisp.Export(clSymbol);
        
        var (foundSymbol, status) = Package.CommonLispUser.FindSymbol("TEST-CL-SYMBOL");
        Assert.Same(clSymbol, foundSymbol);
        Assert.Equal(SymbolStatus.Inherited, status);
    }

    [Fact]
    public void TestSystemPackage()
    {
        Assert.NotNull(Package.System);
        Assert.Equal("SYSTEM", Package.System.Name);
        Assert.Same(Package.System, Package.Find("SYS"));
        
        // Verify it uses COMMON-LISP
        var clSymbol = Package.CommonLisp.Intern("TEST-CL-SYMBOL-FOR-SYS");
        Package.CommonLisp.Export(clSymbol);
        
        var (foundSymbol, status) = Package.System.FindSymbol("TEST-CL-SYMBOL-FOR-SYS");
        Assert.Same(clSymbol, foundSymbol);
        Assert.Equal(SymbolStatus.Inherited, status);
    }
}
