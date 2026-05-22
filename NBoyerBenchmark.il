.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'NBoyerBenchmark' {}
.module 'NBoyerBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_TERM'
    .field public static object 'SETUP'
    .field public static object 'UNIFY_LST'
    .field public static object '_CONS'
    .field public static object 'UNIFY'
    .field public static object 'LOOP_LEMMAS'
    .field public static object 'REWRITE'
    .field public static object 'REWRITE_ARGS'
    .field public static object 'REWRITE_WITH_LEMMAS'
    .field public static object 'TAUTOLOGYP'
    .field public static object 'FALSEP'
    .field public static object 'TRUEP'
    .field public static object 'APPLY_SUBST'
    .field public static object 'APPLY_SUBST_LST'
    .field public static object 'NOT'
    .field public static object 'ADD_LEMMAS'
    .field public static object 'ADD_LEMMA'
    .field public static object 'PRINT'
    .field public static object 'GETPROP'
    .field public static object 'CONS'
    .field public static object 'PUTPROP'
    .field public static object '_INTERN'
    .field public static object 'ASSOC'
    .field public static object 'MEMBER'
    .field public static object 'NULL'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object 'EQUAL'
    .field public static object 'CONSP'
    .field public static object 'EQ'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1933'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1932'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1931'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1930'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1929'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1928'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1927'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1926'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1925'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1924'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1923'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1922'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1921'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1920'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1919'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1918'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1917'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1916'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1885'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1839'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1825'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1811'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1806'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1773'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1772'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_TERM'
    ldnull
    stsfld object Program::'SETUP'
    ldnull
    stsfld object Program::'UNIFY_LST'
    ldnull
    stsfld object Program::'_CONS'
    ldnull
    stsfld object Program::'UNIFY'
    ldnull
    stsfld object Program::'LOOP_LEMMAS'
    ldnull
    stsfld object Program::'REWRITE'
    ldnull
    stsfld object Program::'REWRITE_ARGS'
    ldnull
    stsfld object Program::'REWRITE_WITH_LEMMAS'
    ldnull
    stsfld object Program::'TAUTOLOGYP'
    ldnull
    stsfld object Program::'FALSEP'
    ldnull
    stsfld object Program::'TRUEP'
    ldnull
    stsfld object Program::'APPLY_SUBST'
    ldnull
    stsfld object Program::'APPLY_SUBST_LST'
    ldnull
    stsfld object Program::'NOT'
    ldnull
    stsfld object Program::'ADD_LEMMAS'
    ldnull
    stsfld object Program::'ADD_LEMMA'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'GETPROP'
    ldnull
    stsfld object Program::'CONS'
    ldnull
    stsfld object Program::'PUTPROP'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'ASSOC'
    ldnull
    stsfld object Program::'MEMBER'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'EQUAL'
    ldnull
    stsfld object Program::'CONSP'
    ldnull
    stsfld object Program::'EQ'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "R"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1933'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "S"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1932'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "U"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1931'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "V"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1930'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "D"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1929'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1928'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1927'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1926'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "W"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1925'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "PLUS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1923'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MEMBER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LENGTH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "REVERSE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "X"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "APPEND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WIN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1885'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "IF"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1839'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "QUOTE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1825'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LEMMAS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1811'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "EQUAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'MAIN_Body'()
    ret
}

.method private static hidebysig object 'MAIN_Body'() cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN1605, object TERM1604)
    call object Program::'SETUP'()
    pop
    ldstr "Lemmas loaded."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object Program::'TEST_TERM'()
    stloc TERM1604
    ldstr "Rewriting term..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc TERM1604
    call object Program::'REWRITE'(object)
    stloc REWRITTEN1605
    ldstr "Tautology check..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc REWRITTEN1605
    ldnull
    ldnull
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1934
    ldstr "SUCCESS: Term is a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1934:
    nop
    ldstr "FAILURE: Term is NOT a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_1602:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_TERM'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TERM'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_TERM_Body'()
    ret
}

.method private static hidebysig object 'TEST_TERM_Body'() cil managed
{
    .maxstack 14
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1839'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1925'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1925'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1926'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1927'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1928'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1929'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1926'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1927'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1928'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1929'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1930'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1931'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1932'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1933'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1933'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1932'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1931'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1930'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_TERM_1598:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SETUP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'SETUP'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SETUP_Body'()
    ret
}

.method private static hidebysig object 'SETUP_Body'() cil managed
{
    .maxstack 15
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1923'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1920'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1922'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1916'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1921'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1917'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1924'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1918'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1919'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'ADD_LEMMAS'(object)
    ret
BLOCK_END_SETUP_1594:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'UNIFY_LST_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'UNIFY_LST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY_LST'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'UNIFY_LST_Body'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object NEW_ALIST1591)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1905
    ldnull
    br END1906
TRUE1905:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1906:
    nop
    ldnull
    ceq
    brtrue ELSE1915
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1907
    ldnull
    br END1908
TRUE1907:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1908:
    nop
    ldnull
    ceq
    brtrue ELSE1911
    ldarg 2
    ret
ELSE1911:
    nop
    ldnull
    ret
ELSE1915:
    nop
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1909
    ldnull
    br END1910
TRUE1909:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1910:
    nop
    ldnull
    ceq
    brtrue ELSE1914
    ldnull
    ret
ELSE1914:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1913
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'UNIFY'(object, object, object)
    stloc NEW_ALIST1591
    ldloc NEW_ALIST1591
    ldnull
    ceq
    brtrue ELSE1912
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldloc NEW_ALIST1591
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1912:
    nop
    ldnull
    ret
ELSE1913:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_LST_1589:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'UNIFY_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'UNIFY'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'UNIFY'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'UNIFY_Body'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR1583)
    ldarg 0
    ldarg 1
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1904
    ldarg 2
    ret
ELSE1904:
    nop
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1888
    ldnull
    br END1889
TRUE1888:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1889:
    nop
    ldnull
    ceq
    brtrue TRUE1890
    ldnull
    br END1891
TRUE1890:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1891:
    nop
    ldnull
    ceq
    brtrue ELSE1903
    ldarg 1
    ldarg 2
    call object Program::'ASSOC'(object, object)
    stloc PAIR1583
    ldloc PAIR1583
    ldnull
    ceq
    brtrue ELSE1899
    ldloc PAIR1583
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 0
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1898
    ldarg 2
    ret
ELSE1898:
    nop
    ldnull
    ret
ELSE1899:
    nop
    ldarg 1
    ldarg 0
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1903:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1892
    ldnull
    br END1893
TRUE1892:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1893:
    nop
    ldnull
    ceq
    brtrue TRUE1894
    ldnull
    br END1895
TRUE1894:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1895:
    nop
    ldnull
    ceq
    brtrue ELSE1902
    ldnull
    ret
ELSE1902:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1896
    ldnull
    br END1897
TRUE1896:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1897:
    nop
    ldnull
    ceq
    brtrue ELSE1901
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1901:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1900
    ldnull
    ret
ELSE1900:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_1581:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'LOOP_LEMMAS_Body'(object, object)
    ret
}

.method public static hidebysig object 'LOOP_LEMMAS'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LOOP_LEMMAS'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'LOOP_LEMMAS_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1883
    ldnull
    br END1884
TRUE1883:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1884:
    nop
    ldnull
    ceq
    brtrue ELSE1887
    ldarg 0
    ret
ELSE1887:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1885'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1885'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1886
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1885'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1885'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'APPLY_SUBST'(object, object)
    tail. call object Program::'REWRITE'(object)
    ret
ELSE1886:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_LOOP_LEMMAS_1574:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'REWRITE_WITH_LEMMAS_Body'(object)
    ret
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'REWRITE_WITH_LEMMAS_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1878
    ldnull
    br END1879
TRUE1878:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1879:
    nop
    ldnull
    ceq
    brtrue TRUE1880
    ldnull
    br END1881
TRUE1880:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1881:
    nop
    ldnull
    ceq
    brtrue ELSE1882
    ldarg 0
    ret
ELSE1882:
    nop
    ldarg 0
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1811'
    call object Program::'GETPROP'(object, object)
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_REWRITE_WITH_LEMMAS_1568:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE_ARGS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'REWRITE_ARGS_Body'(object)
    ret
}

.method public static hidebysig object 'REWRITE_ARGS'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'REWRITE_ARGS_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1875
    ldnull
    br END1876
TRUE1875:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1876:
    nop
    ldnull
    ceq
    brtrue ELSE1877
    ldnull
    ret
ELSE1877:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'REWRITE'(object)
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_REWRITE_ARGS_1563:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'REWRITE'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'REWRITE_Body'(object)
    ret
}

.method public static hidebysig object 'REWRITE'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'REWRITE_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN1559)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1857
    ldnull
    br END1858
TRUE1857:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1858:
    nop
    ldnull
    ceq
    brtrue TRUE1859
    ldnull
    br END1860
TRUE1859:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1860:
    nop
    ldnull
    ceq
    brtrue ELSE1874
    ldarg 0
    ret
ELSE1874:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1825'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1861
    ldnull
    br END1862
TRUE1861:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1862:
    nop
    ldnull
    ceq
    brtrue ELSE1873
    ldarg 0
    ret
ELSE1873:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1872
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'REWRITE_WITH_LEMMAS'(object)
    stloc REWRITTEN1559
    ldloc REWRITTEN1559
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1863
    ldnull
    br END1864
TRUE1863:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1864:
    nop
    ldnull
    ceq
    brtrue ELSE1869
    ldloc REWRITTEN1559
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1865
    ldnull
    br END1866
TRUE1865:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1866:
    nop
    ldnull
    ceq
    brtrue ELSE1867
    ldloc REWRITTEN1559
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc REWRITTEN1559
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    br END1868
ELSE1867:
    nop
    ldnull
END1868:
    nop
    br END1870
ELSE1869:
    nop
    ldnull
END1870:
    nop
    ldnull
    ceq
    brtrue ELSE1871
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ret
ELSE1871:
    nop
    ldloc REWRITTEN1559
    ret
ELSE1872:
    nop
    ldnull
    ret
BLOCK_END_REWRITE_1557:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'FALSEP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'FALSEP_Body'(object, object)
    ret
}

.method public static hidebysig object 'FALSEP'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'FALSEP'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'FALSEP_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G15521553)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1854
    ldnull
    br END1855
TRUE1854:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1855:
    nop
    stloc G15521553
    ldloc G15521553
    ldnull
    ceq
    brtrue ELSE1856
    ldloc G15521553
    ret
ELSE1856:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_FALSEP_1550:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TRUEP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'TRUEP_Body'(object, object)
    ret
}

.method public static hidebysig object 'TRUEP'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRUEP'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TRUEP_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G15441545)
    ldarg 0
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1851
    ldnull
    br END1852
TRUE1851:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1852:
    nop
    stloc G15441545
    ldloc G15441545
    ldnull
    ceq
    brtrue ELSE1853
    ldloc G15441545
    ret
ELSE1853:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_TRUEP_1542:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'TAUTOLOGYP_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TAUTOLOGYP'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TAUTOLOGYP_Body'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1850
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ret
ELSE1850:
    nop
    ldarg 0
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1849
    ldnull
    ret
ELSE1849:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1835
    ldnull
    br END1836
TRUE1835:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1836:
    nop
    ldnull
    ceq
    brtrue TRUE1837
    ldnull
    br END1838
TRUE1837:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1838:
    nop
    ldnull
    ceq
    brtrue ELSE1848
    ldnull
    ret
ELSE1848:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1839'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1840
    ldnull
    br END1841
TRUE1840:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1841:
    nop
    ldnull
    ceq
    brtrue ELSE1847
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1845
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 2
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1845:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1844
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 2
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1844:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1843
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1842
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1842:
    nop
    ldnull
    ret
ELSE1843:
    nop
    ldnull
    ret
ELSE1847:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1846
    ldnull
    ret
ELSE1846:
    nop
    ldnull
    ret
BLOCK_END_TAUTOLOGYP_1536:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'APPLY_SUBST_LST_Body'(object, object)
    ret
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST_LST'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'APPLY_SUBST_LST_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1832
    ldnull
    br END1833
TRUE1832:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1833:
    nop
    ldnull
    ceq
    brtrue ELSE1834
    ldnull
    ret
ELSE1834:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'APPLY_SUBST'(object, object)
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'APPLY_SUBST_LST'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_APPLY_SUBST_LST_1529:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'APPLY_SUBST_Body'(object, object)
    ret
}

.method public static hidebysig object 'APPLY_SUBST'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'APPLY_SUBST'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'APPLY_SUBST_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR1524)
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1821
    ldnull
    br END1822
TRUE1821:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1822:
    nop
    ldnull
    ceq
    brtrue TRUE1823
    ldnull
    br END1824
TRUE1823:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1824:
    nop
    ldnull
    ceq
    brtrue ELSE1831
    ldarg 1
    ldarg 0
    call object Program::'ASSOC'(object, object)
    stloc PAIR1524
    ldloc PAIR1524
    ldnull
    ceq
    brtrue ELSE1828
    ldloc PAIR1524
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ret
ELSE1828:
    nop
    ldarg 1
    ret
ELSE1831:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1825'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1826
    ldnull
    br END1827
TRUE1826:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1827:
    nop
    ldnull
    ceq
    brtrue ELSE1830
    ldarg 1
    ret
ELSE1830:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1829
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'APPLY_SUBST_LST'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1829:
    nop
    ldnull
    ret
BLOCK_END_APPLY_SUBST_1522:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMAS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'ADD_LEMMAS_Body'(object)
    ret
}

.method public static hidebysig object 'ADD_LEMMAS'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ADD_LEMMAS_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1818
    ldnull
    br END1819
TRUE1818:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1819:
    nop
    ldnull
    ceq
    brtrue ELSE1820
    ldnull
    ret
ELSE1820:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'ADD_LEMMA'(object)
    pop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ADD_LEMMAS'(object)
    ret
BLOCK_END_ADD_LEMMAS_1516:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD_LEMMA'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'ADD_LEMMA_Body'(object)
    ret
}

.method public static hidebysig object 'ADD_LEMMA'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ADD_LEMMA_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object SYM1512)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1804
    ldnull
    br END1805
TRUE1804:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1805:
    nop
    ldnull
    ceq
    brtrue ELSE1814
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1806'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1807
    ldnull
    br END1808
TRUE1807:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1808:
    nop
    ldnull
    ceq
    brtrue ELSE1812
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1809
    ldnull
    br END1810
TRUE1809:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1810:
    nop
    br END1813
ELSE1812:
    nop
    ldnull
END1813:
    nop
    br END1815
ELSE1814:
    nop
    ldnull
END1815:
    nop
    ldnull
    ceq
    brtrue ELSE1817
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc SYM1512
    ldloc SYM1512
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1811'
    ldarg 0
    ldloc SYM1512
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1811'
    call object Program::'GETPROP'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'PUTPROP'(object, object, object)
    ret
ELSE1817:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1816
    ldstr "Invalid lemma:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1816:
    nop
    ldnull
    ret
BLOCK_END_ADD_LEMMA_1510:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUTPROP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'PUTPROP_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'PUTPROP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUTPROP'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'PUTPROP_Body'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1802, object CLR_VIRT_ARG1801, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1799
    ldnull
    br END1800
TRUE1799:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1800:
    nop
    ldnull
    ceq
    brtrue ELSE1803
    ldnull
    ret
ELSE1803:
    nop
    ldarg 0
    ldarg 1
    ldarg 2
    stloc CLR_VIRT_ARG1801
    stloc CLR_VIRT_ARG1802
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1801
    ldloc CLR_VIRT_ARG1802
    callvirt instance void [LispBase]Lisp.Symbol::'Put'(object, object)
    ldnull
    pop
    ldarg 2
    ret
BLOCK_END_PUTPROP_1505:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'GETPROP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'GETPROP_Body'(object, object)
    ret
}

.method public static hidebysig object 'GETPROP'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'GETPROP'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'GETPROP_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1797, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1795
    ldnull
    br END1796
TRUE1795:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1796:
    nop
    ldnull
    ceq
    brtrue ELSE1798
    ldnull
    ret
ELSE1798:
    nop
    ldarg 0
    ldarg 1
    stloc CLR_VIRT_ARG1797
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1797
    callvirt instance object [LispBase]Lisp.Symbol::'Get'(object)
    ret
BLOCK_END_GETPROP_1498:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ASSOC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'ASSOC_Body'(object, object)
    ret
}

.method public static hidebysig object 'ASSOC'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ASSOC'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ASSOC_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1790
    ldnull
    br END1791
TRUE1790:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1791:
    nop
    ldnull
    ceq
    brtrue ELSE1794
    ldnull
    ret
ELSE1794:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1793
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
ELSE1793:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1792
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ASSOC'(object, object)
    ret
ELSE1792:
    nop
    ldnull
    ret
BLOCK_END_ASSOC_1492:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MEMBER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'MEMBER_Body'(object, object)
    ret
}

.method public static hidebysig object 'MEMBER'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MEMBER'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'MEMBER_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1785
    ldnull
    br END1786
TRUE1785:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1786:
    nop
    ldnull
    ceq
    brtrue ELSE1789
    ldnull
    ret
ELSE1789:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1788
    ldarg 1
    ret
ELSE1788:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1787
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'MEMBER'(object, object)
    ret
ELSE1787:
    nop
    ldnull
    ret
BLOCK_END_MEMBER_1486:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'EQUAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'EQUAL_Body'(object, object)
    ret
}

.method public static hidebysig object 'EQUAL'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'EQUAL'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'EQUAL_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1770
    ldnull
    br END1771
TRUE1770:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1771:
    nop
    ldnull
    ceq
    brtrue ELSE1784
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ret
ELSE1784:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1774
    ldnull
    br END1775
TRUE1774:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1775:
    nop
    ldnull
    ceq
    brtrue ELSE1778
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1776
    ldnull
    br END1777
TRUE1776:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1772'
END1777:
    nop
    br END1779
ELSE1778:
    nop
    ldnull
END1779:
    nop
    ldnull
    ceq
    brtrue ELSE1783
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1780
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'EQUAL'(object, object)
    ret
ELSE1780:
    nop
    ldnull
    ret
ELSE1783:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ldnull
    ceq
    brtrue ELSE1782
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    box [mscorlib]System.Boolean
    ldnull
    ceq
    brtrue ELSE1781
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1773'
    ret
ELSE1781:
    nop
    ldnull
    ret
ELSE1782:
    nop
    ldnull
    ret
BLOCK_END_EQUAL_1480:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

