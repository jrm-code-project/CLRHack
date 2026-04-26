using Xunit;
using Lisp;

namespace CLRHack.Tests;

[Collection("Sequential")]
public class ListTests
{
    [Fact]
    public void TestEmptyList()
    {
        Assert.True(List.Empty.EndP);
    }

    [Fact]
    public void TestCons()
    {
        var list = List.Empty.Cons(1);
        Assert.False(list.EndP);
        Assert.Equal(1, list.First());
        Assert.True(((List)list.Rest()).EndP);
    }

    [Fact]
    public void TestFirstOnEmptyList()
    {
        Assert.Throws<ArgumentException>(() => List.Empty.First());
    }

    [Fact]
    public void TestRestOnEmptyList()
    {
        Assert.Throws<ArgumentException>(() => List.Empty.Rest());
    }

    [Fact]
    public void TestEquals()
    {
        var list1 = List.Empty.Cons(1).Cons(2);
        var list2 = List.Empty.Cons(1).Cons(2);
        var list3 = List.Empty.Cons(3).Cons(4);

        Assert.Equal(list1, list2);
        Assert.NotEqual(list1, list3);
        Assert.NotEqual(list1, List.Empty);
    }

    [Fact]
    public void TestAdtListOf()
    {
        var list = AdtList.Of(1, 2, 3);
        Assert.False(list.EndP);
        Assert.Equal(1, list.First());
        Assert.Equal(2, ((List)list.Rest()).First());
        Assert.Equal(3, ((List)((List)list.Rest()).Rest()).First());
        Assert.True(((List)((List)((List)list.Rest()).Rest()).Rest()).EndP);
    }

    [Fact]
    public void TestAdtVectorToList()
    {
        var array = new object[] { 1, 2, 3 };
        var list = AdtList.VectorToList(array);
        Assert.False(list.EndP);
        Assert.Equal(1, list.First());
        Assert.Equal(2, ((List)list.Rest()).First());
        Assert.Equal(3, ((List)((List)list.Rest()).Rest()).First());
        Assert.True(((List)((List)((List)list.Rest()).Rest()).Rest()).EndP);
    }

    [Fact]
    public void TestAdtRevappend()
    {
        var list1 = AdtList.Of(1, 2, 3);
        var list2 = AdtList.Of(4, 5, 6);
        var result = AdtList.Revappend(list1, list2);

        var expected = AdtList.Of(3, 2, 1, 4, 5, 6);
        Assert.Equal(expected.ToString(), result.ToString());
    }

    [Fact]
    public void TestToString()
    {
        var list = AdtList.Of(1, 2, 3);
        Assert.Equal("(1 2 3)", list.ToString());
    }
}
