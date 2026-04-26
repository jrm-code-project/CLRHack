using Xunit;
using Lisp.Generic;
using System.Collections.Generic;

namespace CLRHack.Tests;

[Collection("Sequential")]
public class GenericListTests
{
    [Fact]
    public void TestEmptyList()
    {
        Assert.True(Lisp.Generic.List<int>.Empty.EndP);
        Assert.True(Lisp.Generic.List<string>.Empty.EndP);
    }

    [Fact]
    public void TestCons()
    {
        var list = Lisp.Generic.List<int>.Empty.Cons(1);
        Assert.False(list.EndP);
        Assert.Equal(1, list.First());
        Assert.True(list.Rest().EndP);
    }

    [Fact]
    public void TestFirstOnEmptyList()
    {
        Assert.Throws<ArgumentException>(() => Lisp.Generic.List<int>.Empty.First());
    }

    [Fact]
    public void TestRestOnEmptyList()
    {
        Assert.Throws<ArgumentException>(() => Lisp.Generic.List<string>.Empty.Rest());
    }

    [Fact]
    public void TestEquals()
    {
        var list1 = Lisp.Generic.List<int>.Empty.Cons(1).Cons(2);
        var list2 = Lisp.Generic.List<int>.Empty.Cons(1).Cons(2);
        var list3 = Lisp.Generic.List<int>.Empty.Cons(3).Cons(4);

        Assert.Equal(list1, list2);
        Assert.NotEqual(list1, list3);
        Assert.NotEqual(list1, Lisp.Generic.List<int>.Empty);
    }

    [Fact]
    public void TestAdtListOf()
    {
        var list = AdtList.Of(1, 2, 3); // Type inference
        Assert.False(list.EndP);
        Assert.Equal(1, list.First());
        Assert.Equal(2, list.Rest().First());
        Assert.Equal(3, list.Rest().Rest().First());
        Assert.True(list.Rest().Rest().Rest().EndP);
    }

    [Fact]
    public void TestAdtVectorToList()
    {
        var array = new[] { "a", "b", "c" };
        var list = AdtList.VectorToList(array);
        Assert.False(list.EndP);
        Assert.Equal("a", list.First());
        Assert.Equal("b", list.Rest().First());
        Assert.Equal("c", list.Rest().Rest().First());
        Assert.True(list.Rest().Rest().Rest().EndP);
    }

    [Fact]
    public void TestAdtRevappend()
    {
        var list1 = AdtList.Of(1.0, 2.5, 3.5);
        var list2 = AdtList.Of(4.0, 5.5, 6.0);
        var result = AdtList.Revappend(list1, list2);

        var expected = AdtList.Of(3.5, 2.5, 1.0, 4.0, 5.5, 6.0);
        Assert.Equal(expected.ToString(), result.ToString());
    }

    [Fact]
    public void TestToString()
    {
        var list = AdtList.Of("hello", "world");
        Assert.Equal("(hello world)", list.ToString());
    }

    [Fact]
    public void TestIEnumerableT()
    {
        var list = AdtList.Of(10, 20, 30);
        var items = new System.Collections.Generic.List<int>();
        foreach (var item in list)
        {
            items.Add(item);
        }
        Assert.Equal(new[] { 10, 20, 30 }, items.ToArray());
    }
}
