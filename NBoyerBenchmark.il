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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1989'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1988'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1987'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1986'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1985'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1984'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1983'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1982'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1981'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1980'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1979'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1978'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1977'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1976'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1975'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1974'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1973'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1972'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1941'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1895'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1881'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1867'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1862'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1829'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1828'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1989'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "S"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1988'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "U"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1987'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "V"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1986'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "D"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1985'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1984'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1983'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1982'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "W"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1981'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "PLUS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1979'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MEMBER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LENGTH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "REVERSE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "X"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "APPEND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WIN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1941'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "IF"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1895'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "QUOTE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1881'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LEMMAS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1867'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "EQUAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
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
    .locals init (object REWRITTEN1661, object TERM1660)
    call object Program::'SETUP'()
    pop
    ldstr "Lemmas loaded."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object Program::'TEST_TERM'()
    stloc TERM1660
    ldstr "Rewriting term..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc TERM1660
    call object Program::'REWRITE'(object)
    stloc REWRITTEN1661
    ldstr "Tautology check..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc REWRITTEN1661
    ldnull
    ldnull
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1990
    ldstr "SUCCESS: Term is a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1990:
    nop
    ldstr "FAILURE: Term is NOT a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_1658:
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1895'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1981'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1981'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1982'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1983'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1984'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1985'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1982'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1983'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1984'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1985'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1986'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1987'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1988'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1989'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1989'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1988'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1987'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1986'
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
BLOCK_END_TEST_TERM_1654:
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1979'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1976'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1978'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1972'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1977'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1973'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1980'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1974'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1975'
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
BLOCK_END_SETUP_1650:
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
    .locals init (object NEW_ALIST1647)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1961
    ldnull
    br END1962
TRUE1961:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1962:
    nop
    ldnull
    ceq
    brtrue ELSE1971
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1963
    ldnull
    br END1964
TRUE1963:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1964:
    nop
    ldnull
    ceq
    brtrue ELSE1967
    ldarg 2
    ret
ELSE1967:
    nop
    ldnull
    ret
ELSE1971:
    nop
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1965
    ldnull
    br END1966
TRUE1965:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1966:
    nop
    ldnull
    ceq
    brtrue ELSE1970
    ldnull
    ret
ELSE1970:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1969
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'UNIFY'(object, object, object)
    stloc NEW_ALIST1647
    ldloc NEW_ALIST1647
    ldnull
    ceq
    brtrue ELSE1968
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldloc NEW_ALIST1647
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1968:
    nop
    ldnull
    ret
ELSE1969:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_LST_1645:
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
    .locals init (object PAIR1639)
    ldarg 0
    ldarg 1
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1960
    ldarg 2
    ret
ELSE1960:
    nop
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1944
    ldnull
    br END1945
TRUE1944:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1945:
    nop
    ldnull
    ceq
    brtrue TRUE1946
    ldnull
    br END1947
TRUE1946:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1947:
    nop
    ldnull
    ceq
    brtrue ELSE1959
    ldarg 1
    ldarg 2
    call object Program::'ASSOC'(object, object)
    stloc PAIR1639
    ldloc PAIR1639
    ldnull
    ceq
    brtrue ELSE1955
    ldloc PAIR1639
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 0
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1954
    ldarg 2
    ret
ELSE1954:
    nop
    ldnull
    ret
ELSE1955:
    nop
    ldarg 1
    ldarg 0
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1959:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1948
    ldnull
    br END1949
TRUE1948:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1949:
    nop
    ldnull
    ceq
    brtrue TRUE1950
    ldnull
    br END1951
TRUE1950:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1951:
    nop
    ldnull
    ceq
    brtrue ELSE1958
    ldnull
    ret
ELSE1958:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1952
    ldnull
    br END1953
TRUE1952:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1953:
    nop
    ldnull
    ceq
    brtrue ELSE1957
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1957:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1956
    ldnull
    ret
ELSE1956:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_1637:
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
    brtrue TRUE1939
    ldnull
    br END1940
TRUE1939:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1940:
    nop
    ldnull
    ceq
    brtrue ELSE1943
    ldarg 0
    ret
ELSE1943:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1941'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1941'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1942
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1941'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1941'
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
ELSE1942:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_LOOP_LEMMAS_1630:
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
    brtrue TRUE1934
    ldnull
    br END1935
TRUE1934:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1935:
    nop
    ldnull
    ceq
    brtrue TRUE1936
    ldnull
    br END1937
TRUE1936:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1937:
    nop
    ldnull
    ceq
    brtrue ELSE1938
    ldarg 0
    ret
ELSE1938:
    nop
    ldarg 0
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1867'
    call object Program::'GETPROP'(object, object)
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_REWRITE_WITH_LEMMAS_1624:
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
    brtrue TRUE1931
    ldnull
    br END1932
TRUE1931:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1932:
    nop
    ldnull
    ceq
    brtrue ELSE1933
    ldnull
    ret
ELSE1933:
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
BLOCK_END_REWRITE_ARGS_1619:
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
    .locals init (object REWRITTEN1615)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1913
    ldnull
    br END1914
TRUE1913:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1914:
    nop
    ldnull
    ceq
    brtrue TRUE1915
    ldnull
    br END1916
TRUE1915:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1916:
    nop
    ldnull
    ceq
    brtrue ELSE1930
    ldarg 0
    ret
ELSE1930:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1881'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1917
    ldnull
    br END1918
TRUE1917:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1918:
    nop
    ldnull
    ceq
    brtrue ELSE1929
    ldarg 0
    ret
ELSE1929:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1928
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'REWRITE_WITH_LEMMAS'(object)
    stloc REWRITTEN1615
    ldloc REWRITTEN1615
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1919
    ldnull
    br END1920
TRUE1919:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1920:
    nop
    ldnull
    ceq
    brtrue ELSE1925
    ldloc REWRITTEN1615
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1921
    ldnull
    br END1922
TRUE1921:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1922:
    nop
    ldnull
    ceq
    brtrue ELSE1923
    ldloc REWRITTEN1615
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc REWRITTEN1615
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    br END1924
ELSE1923:
    nop
    ldnull
END1924:
    nop
    br END1926
ELSE1925:
    nop
    ldnull
END1926:
    nop
    ldnull
    ceq
    brtrue ELSE1927
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ret
ELSE1927:
    nop
    ldloc REWRITTEN1615
    ret
ELSE1928:
    nop
    ldnull
    ret
BLOCK_END_REWRITE_1613:
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
    .locals init (object G16081609)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1910
    ldnull
    br END1911
TRUE1910:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1911:
    nop
    stloc G16081609
    ldloc G16081609
    ldnull
    ceq
    brtrue ELSE1912
    ldloc G16081609
    ret
ELSE1912:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_FALSEP_1606:
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
    .locals init (object G16001601)
    ldarg 0
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1907
    ldnull
    br END1908
TRUE1907:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1908:
    nop
    stloc G16001601
    ldloc G16001601
    ldnull
    ceq
    brtrue ELSE1909
    ldloc G16001601
    ret
ELSE1909:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_TRUEP_1598:
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
    brtrue ELSE1906
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ret
ELSE1906:
    nop
    ldarg 0
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1905
    ldnull
    ret
ELSE1905:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1891
    ldnull
    br END1892
TRUE1891:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1892:
    nop
    ldnull
    ceq
    brtrue TRUE1893
    ldnull
    br END1894
TRUE1893:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1894:
    nop
    ldnull
    ceq
    brtrue ELSE1904
    ldnull
    ret
ELSE1904:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1895'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1896
    ldnull
    br END1897
TRUE1896:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1897:
    nop
    ldnull
    ceq
    brtrue ELSE1903
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1901
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
ELSE1901:
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
    brtrue ELSE1900
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
ELSE1900:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1899
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
    brtrue ELSE1898
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
ELSE1898:
    nop
    ldnull
    ret
ELSE1899:
    nop
    ldnull
    ret
ELSE1903:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1902
    ldnull
    ret
ELSE1902:
    nop
    ldnull
    ret
BLOCK_END_TAUTOLOGYP_1592:
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
    brtrue TRUE1888
    ldnull
    br END1889
TRUE1888:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1889:
    nop
    ldnull
    ceq
    brtrue ELSE1890
    ldnull
    ret
ELSE1890:
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
BLOCK_END_APPLY_SUBST_LST_1585:
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
    .locals init (object PAIR1580)
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1877
    ldnull
    br END1878
TRUE1877:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1878:
    nop
    ldnull
    ceq
    brtrue TRUE1879
    ldnull
    br END1880
TRUE1879:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1880:
    nop
    ldnull
    ceq
    brtrue ELSE1887
    ldarg 1
    ldarg 0
    call object Program::'ASSOC'(object, object)
    stloc PAIR1580
    ldloc PAIR1580
    ldnull
    ceq
    brtrue ELSE1884
    ldloc PAIR1580
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ret
ELSE1884:
    nop
    ldarg 1
    ret
ELSE1887:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1881'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1882
    ldnull
    br END1883
TRUE1882:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1883:
    nop
    ldnull
    ceq
    brtrue ELSE1886
    ldarg 1
    ret
ELSE1886:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1885
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
ELSE1885:
    nop
    ldnull
    ret
BLOCK_END_APPLY_SUBST_1578:
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
    brtrue TRUE1874
    ldnull
    br END1875
TRUE1874:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1875:
    nop
    ldnull
    ceq
    brtrue ELSE1876
    ldnull
    ret
ELSE1876:
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
BLOCK_END_ADD_LEMMAS_1572:
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
    .locals init (object SYM1568)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1860
    ldnull
    br END1861
TRUE1860:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1861:
    nop
    ldnull
    ceq
    brtrue ELSE1870
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1862'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1863
    ldnull
    br END1864
TRUE1863:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1864:
    nop
    ldnull
    ceq
    brtrue ELSE1868
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1865
    ldnull
    br END1866
TRUE1865:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1866:
    nop
    br END1869
ELSE1868:
    nop
    ldnull
END1869:
    nop
    br END1871
ELSE1870:
    nop
    ldnull
END1871:
    nop
    ldnull
    ceq
    brtrue ELSE1873
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc SYM1568
    ldloc SYM1568
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1867'
    ldarg 0
    ldloc SYM1568
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1867'
    call object Program::'GETPROP'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'PUTPROP'(object, object, object)
    ret
ELSE1873:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1872
    ldstr "Invalid lemma:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1872:
    nop
    ldnull
    ret
BLOCK_END_ADD_LEMMA_1566:
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
    .locals init (object CLR_VIRT_ARG1858, object CLR_VIRT_ARG1857, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1855
    ldnull
    br END1856
TRUE1855:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1856:
    nop
    ldnull
    ceq
    brtrue ELSE1859
    ldnull
    ret
ELSE1859:
    nop
    ldarg 0
    ldarg 1
    ldarg 2
    stloc CLR_VIRT_ARG1857
    stloc CLR_VIRT_ARG1858
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1857
    ldloc CLR_VIRT_ARG1858
    callvirt instance void [LispBase]Lisp.Symbol::'Put'(object, object)
    ldnull
    pop
    ldarg 2
    ret
BLOCK_END_PUTPROP_1561:
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
    .locals init (object CLR_VIRT_ARG1853, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1851
    ldnull
    br END1852
TRUE1851:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1852:
    nop
    ldnull
    ceq
    brtrue ELSE1854
    ldnull
    ret
ELSE1854:
    nop
    ldarg 0
    ldarg 1
    stloc CLR_VIRT_ARG1853
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1853
    callvirt instance object [LispBase]Lisp.Symbol::'Get'(object)
    ret
BLOCK_END_GETPROP_1554:
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
    brtrue TRUE1846
    ldnull
    br END1847
TRUE1846:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1847:
    nop
    ldnull
    ceq
    brtrue ELSE1850
    ldnull
    ret
ELSE1850:
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
    brtrue ELSE1849
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
ELSE1849:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1848
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ASSOC'(object, object)
    ret
ELSE1848:
    nop
    ldnull
    ret
BLOCK_END_ASSOC_1548:
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
    brtrue TRUE1841
    ldnull
    br END1842
TRUE1841:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1842:
    nop
    ldnull
    ceq
    brtrue ELSE1845
    ldnull
    ret
ELSE1845:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1844
    ldarg 1
    ret
ELSE1844:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1843
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'MEMBER'(object, object)
    ret
ELSE1843:
    nop
    ldnull
    ret
BLOCK_END_MEMBER_1542:
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
    brtrue TRUE1826
    ldnull
    br END1827
TRUE1826:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1827:
    nop
    ldnull
    ceq
    brtrue ELSE1840
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ret
ELSE1840:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1830
    ldnull
    br END1831
TRUE1830:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1831:
    nop
    ldnull
    ceq
    brtrue ELSE1834
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1832
    ldnull
    br END1833
TRUE1832:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1828'
END1833:
    nop
    br END1835
ELSE1834:
    nop
    ldnull
END1835:
    nop
    ldnull
    ceq
    brtrue ELSE1839
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1836
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'EQUAL'(object, object)
    ret
ELSE1836:
    nop
    ldnull
    ret
ELSE1839:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ldnull
    ceq
    brtrue ELSE1838
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    box [mscorlib]System.Boolean
    ldnull
    ceq
    brtrue ELSE1837
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1829'
    ret
ELSE1837:
    nop
    ldnull
    ret
ELSE1838:
    nop
    ldnull
    ret
BLOCK_END_EQUAL_1536:
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

