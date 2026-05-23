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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1782'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1781'

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
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
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
    .locals init (object REWRITTEN1637, object TERM1636)
    call object Program::'SETUP'()
    pop
    ldstr "Lemmas loaded."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object Program::'TEST_TERM'()
    stloc TERM1636
    ldstr "Rewriting term..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc TERM1636
    call object Program::'REWRITE'(object)
    stloc REWRITTEN1637
    ldstr "Tautology check..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc REWRITTEN1637
    ldnull
    ldnull
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1920
    ldstr "SUCCESS: Term is a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1920:
    nop
    ldstr "FAILURE: Term is NOT a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_1634:
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
    .maxstack 8
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
BLOCK_END_TEST_TERM_1630:
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
    .maxstack 8
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
BLOCK_END_SETUP_1626:
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
    .locals init (object NEW_ALIST1623)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1909
    ldnull
    br END1910
TRUE1909:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1910:
    nop
    ldnull
    ceq
    brtrue ELSE1919
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1911
    ldnull
    br END1912
TRUE1911:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1912:
    nop
    ldnull
    ceq
    brtrue ELSE1915
    ldarg 2
    ret
ELSE1915:
    nop
    ldnull
    ret
ELSE1919:
    nop
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1913
    ldnull
    br END1914
TRUE1913:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1914:
    nop
    ldnull
    ceq
    brtrue ELSE1918
    ldnull
    ret
ELSE1918:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1917
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'UNIFY'(object, object, object)
    stloc NEW_ALIST1623
    ldloc NEW_ALIST1623
    ldnull
    ceq
    brtrue ELSE1916
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldloc NEW_ALIST1623
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1916:
    nop
    ldnull
    ret
ELSE1917:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_LST_1621:
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
    .locals init (object PAIR1615)
    ldarg 0
    ldarg 1
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1908
    ldarg 2
    ret
ELSE1908:
    nop
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1892
    ldnull
    br END1893
TRUE1892:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1893:
    nop
    ldnull
    ceq
    brtrue TRUE1894
    ldnull
    br END1895
TRUE1894:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1895:
    nop
    ldnull
    ceq
    brtrue ELSE1907
    ldarg 1
    ldarg 2
    call object Program::'ASSOC'(object, object)
    stloc PAIR1615
    ldloc PAIR1615
    ldnull
    ceq
    brtrue ELSE1903
    ldloc PAIR1615
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 0
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1902
    ldarg 2
    ret
ELSE1902:
    nop
    ldnull
    ret
ELSE1903:
    nop
    ldarg 1
    ldarg 0
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1907:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1896
    ldnull
    br END1897
TRUE1896:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1897:
    nop
    ldnull
    ceq
    brtrue TRUE1898
    ldnull
    br END1899
TRUE1898:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1899:
    nop
    ldnull
    ceq
    brtrue ELSE1906
    ldnull
    ret
ELSE1906:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1900
    ldnull
    br END1901
TRUE1900:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1901:
    nop
    ldnull
    ceq
    brtrue ELSE1905
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1905:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1904
    ldnull
    ret
ELSE1904:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_1613:
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
    brtrue TRUE1888
    ldnull
    br END1889
TRUE1888:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1889:
    nop
    ldnull
    ceq
    brtrue ELSE1891
    ldarg 0
    ret
ELSE1891:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1890
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
ELSE1890:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_LOOP_LEMMAS_1606:
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
    brtrue TRUE1883
    ldnull
    br END1884
TRUE1883:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1884:
    nop
    ldnull
    ceq
    brtrue TRUE1885
    ldnull
    br END1886
TRUE1885:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1886:
    nop
    ldnull
    ceq
    brtrue ELSE1887
    ldarg 0
    ret
ELSE1887:
    nop
    ldarg 0
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call object Program::'GETPROP'(object, object)
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_REWRITE_WITH_LEMMAS_1600:
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
    brtrue TRUE1880
    ldnull
    br END1881
TRUE1880:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1881:
    nop
    ldnull
    ceq
    brtrue ELSE1882
    ldnull
    ret
ELSE1882:
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
BLOCK_END_REWRITE_ARGS_1595:
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
    .locals init (object REWRITTEN1591)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1862
    ldnull
    br END1863
TRUE1862:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1863:
    nop
    ldnull
    ceq
    brtrue TRUE1864
    ldnull
    br END1865
TRUE1864:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1865:
    nop
    ldnull
    ceq
    brtrue ELSE1879
    ldarg 0
    ret
ELSE1879:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1866
    ldnull
    br END1867
TRUE1866:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1867:
    nop
    ldnull
    ceq
    brtrue ELSE1878
    ldarg 0
    ret
ELSE1878:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1877
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'REWRITE_WITH_LEMMAS'(object)
    stloc REWRITTEN1591
    ldloc REWRITTEN1591
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1868
    ldnull
    br END1869
TRUE1868:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1869:
    nop
    ldnull
    ceq
    brtrue ELSE1874
    ldloc REWRITTEN1591
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1870
    ldnull
    br END1871
TRUE1870:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1871:
    nop
    ldnull
    ceq
    brtrue ELSE1872
    ldloc REWRITTEN1591
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc REWRITTEN1591
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    br END1873
ELSE1872:
    nop
    ldnull
END1873:
    nop
    br END1875
ELSE1874:
    nop
    ldnull
END1875:
    nop
    ldnull
    ceq
    brtrue ELSE1876
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ret
ELSE1876:
    nop
    ldloc REWRITTEN1591
    ret
ELSE1877:
    nop
    ldnull
    ret
BLOCK_END_REWRITE_1589:
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
    .locals init (object G15841585)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1859
    ldnull
    br END1860
TRUE1859:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1860:
    nop
    stloc G15841585
    ldloc G15841585
    ldnull
    ceq
    brtrue ELSE1861
    ldloc G15841585
    ret
ELSE1861:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_FALSEP_1582:
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
    .locals init (object G15761577)
    ldarg 0
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1856
    ldnull
    br END1857
TRUE1856:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1857:
    nop
    stloc G15761577
    ldloc G15761577
    ldnull
    ceq
    brtrue ELSE1858
    ldloc G15761577
    ret
ELSE1858:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_TRUEP_1574:
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
    brtrue ELSE1855
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ret
ELSE1855:
    nop
    ldarg 0
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1854
    ldnull
    ret
ELSE1854:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1841
    ldnull
    br END1842
TRUE1841:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1842:
    nop
    ldnull
    ceq
    brtrue TRUE1843
    ldnull
    br END1844
TRUE1843:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1844:
    nop
    ldnull
    ceq
    brtrue ELSE1853
    ldnull
    ret
ELSE1853:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1845
    ldnull
    br END1846
TRUE1845:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1846:
    nop
    ldnull
    ceq
    brtrue ELSE1852
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1850
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
ELSE1850:
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
    brtrue ELSE1849
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
ELSE1849:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1848
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
    brtrue ELSE1847
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
ELSE1847:
    nop
    ldnull
    ret
ELSE1848:
    nop
    ldnull
    ret
ELSE1852:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1851
    ldnull
    ret
ELSE1851:
    nop
    ldnull
    ret
BLOCK_END_TAUTOLOGYP_1568:
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
    brtrue TRUE1838
    ldnull
    br END1839
TRUE1838:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1839:
    nop
    ldnull
    ceq
    brtrue ELSE1840
    ldnull
    ret
ELSE1840:
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
BLOCK_END_APPLY_SUBST_LST_1561:
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
    .locals init (object PAIR1556)
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1828
    ldnull
    br END1829
TRUE1828:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1829:
    nop
    ldnull
    ceq
    brtrue TRUE1830
    ldnull
    br END1831
TRUE1830:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1831:
    nop
    ldnull
    ceq
    brtrue ELSE1837
    ldarg 1
    ldarg 0
    call object Program::'ASSOC'(object, object)
    stloc PAIR1556
    ldloc PAIR1556
    ldnull
    ceq
    brtrue ELSE1834
    ldloc PAIR1556
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ret
ELSE1834:
    nop
    ldarg 1
    ret
ELSE1837:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1832
    ldnull
    br END1833
TRUE1832:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1833:
    nop
    ldnull
    ceq
    brtrue ELSE1836
    ldarg 1
    ret
ELSE1836:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1835
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
ELSE1835:
    nop
    ldnull
    ret
BLOCK_END_APPLY_SUBST_1554:
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
    brtrue TRUE1825
    ldnull
    br END1826
TRUE1825:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1826:
    nop
    ldnull
    ceq
    brtrue ELSE1827
    ldnull
    ret
ELSE1827:
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
BLOCK_END_ADD_LEMMAS_1548:
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
    .locals init (object SYM1544)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1813
    ldnull
    br END1814
TRUE1813:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1814:
    nop
    ldnull
    ceq
    brtrue ELSE1821
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1815
    ldnull
    br END1816
TRUE1815:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1816:
    nop
    ldnull
    ceq
    brtrue ELSE1819
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1817
    ldnull
    br END1818
TRUE1817:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1818:
    nop
    br END1820
ELSE1819:
    nop
    ldnull
END1820:
    nop
    br END1822
ELSE1821:
    nop
    ldnull
END1822:
    nop
    ldnull
    ceq
    brtrue ELSE1824
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc SYM1544
    ldloc SYM1544
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldarg 0
    ldloc SYM1544
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call object Program::'GETPROP'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'PUTPROP'(object, object, object)
    ret
ELSE1824:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1823
    ldstr "Invalid lemma:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1823:
    nop
    ldnull
    ret
BLOCK_END_ADD_LEMMA_1542:
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
    .locals init (object CLR_VIRT_ARG1811, object CLR_VIRT_ARG1810, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1808
    ldnull
    br END1809
TRUE1808:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1809:
    nop
    ldnull
    ceq
    brtrue ELSE1812
    ldnull
    ret
ELSE1812:
    nop
    ldarg 0
    ldarg 1
    ldarg 2
    stloc CLR_VIRT_ARG1810
    stloc CLR_VIRT_ARG1811
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1810
    ldloc CLR_VIRT_ARG1811
    callvirt instance void [LispBase]Lisp.Symbol::'Put'(object, object)
    ldnull
    pop
    ldarg 2
    ret
BLOCK_END_PUTPROP_1537:
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
    .locals init (object CLR_VIRT_ARG1806, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1804
    ldnull
    br END1805
TRUE1804:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1805:
    nop
    ldnull
    ceq
    brtrue ELSE1807
    ldnull
    ret
ELSE1807:
    nop
    ldarg 0
    ldarg 1
    stloc CLR_VIRT_ARG1806
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1806
    callvirt instance object [LispBase]Lisp.Symbol::'Get'(object)
    ret
BLOCK_END_GETPROP_1530:
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
    brtrue TRUE1799
    ldnull
    br END1800
TRUE1799:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
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
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1802
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
ELSE1802:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1801
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ASSOC'(object, object)
    ret
ELSE1801:
    nop
    ldnull
    ret
BLOCK_END_ASSOC_1524:
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
    brtrue TRUE1794
    ldnull
    br END1795
TRUE1794:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1795:
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
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1797
    ldarg 1
    ret
ELSE1797:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1796
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'MEMBER'(object, object)
    ret
ELSE1796:
    nop
    ldnull
    ret
BLOCK_END_MEMBER_1518:
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
    brtrue TRUE1779
    ldnull
    br END1780
TRUE1779:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1780:
    nop
    ldnull
    ceq
    brtrue ELSE1793
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ret
ELSE1793:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1783
    ldnull
    br END1784
TRUE1783:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1784:
    nop
    ldnull
    ceq
    brtrue ELSE1787
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1785
    ldnull
    br END1786
TRUE1785:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1781'
END1786:
    nop
    br END1788
ELSE1787:
    nop
    ldnull
END1788:
    nop
    ldnull
    ceq
    brtrue ELSE1792
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1789
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'EQUAL'(object, object)
    ret
ELSE1789:
    nop
    ldnull
    ret
ELSE1792:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ldnull
    ceq
    brtrue ELSE1791
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    box [mscorlib]System.Boolean
    ldnull
    ceq
    brtrue ELSE1790
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1782'
    ret
ELSE1790:
    nop
    ldnull
    ret
ELSE1791:
    nop
    ldnull
    ret
BLOCK_END_EQUAL_1512:
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

