.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ToplevelArgs' {}
.module 'ToplevelArgs.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object 'MAIN'
    .field public static object 'TEST_MIXED'
    .field public static object 'TEST_REST'
    .field public static object 'TEST_OPTIONAL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1741'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1740'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_MIXED'
    ldnull
    stsfld object Program::'TEST_REST'
    ldnull
    stsfld object Program::'TEST_OPTIONAL'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1741'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "NIL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1740'
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
    ldstr "--- optional 1 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    call object Program::'TEST_OPTIONAL'(object)
    pop
    ldstr "--- optional 2 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    ldstr "B"
    call object Program::'TEST_OPTIONAL'(object, object)
    pop
    ldstr "--- optional 3 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    ldstr "B"
    ldstr "C"
    call object Program::'TEST_OPTIONAL'(object, object, object)
    pop
    ldstr "--- rest 0 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    call object Program::'TEST_REST'(object)
    pop
    ldstr "--- rest 1 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    ldstr "B"
    call object Program::'TEST_REST'(object, object)
    pop
    ldstr "--- rest 2 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "A"
    ldstr "B"
    ldstr "C"
    call object Program::'TEST_REST'(object, object, object)
    pop
    ldstr "--- mixed 1 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    call object Program::'TEST_MIXED'(object)
    pop
    ldstr "--- mixed 2 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    call object Program::'TEST_MIXED'(object, object)
    pop
    ldstr "--- mixed 3 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    tail. call object Program::'TEST_MIXED'(object, object, object, object)
    ret
BLOCK_END_MAIN_1716:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 9
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldnull
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldsfld object [LispBase]Lisp.Undefined::Value
    ldnull
    tail.
    call object Program::'TEST_MIXED_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'TEST_MIXED'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_MIXED_Body'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP1742
    ldc.i4 10
    box int32
    starg 1
    br DONE1743
SUP1742:
    nop
DONE1743:
    nop
    ldstr "test-mixed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 2
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_MIXED_1712:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 9
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    tail.
    call object Program::'TEST_REST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_REST'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_REST_Body'(object, object) cil managed
{
    .maxstack 8
    ldstr "test-rest"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_REST_1705:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldnull
    tail.
    call object Program::'TEST_OPTIONAL_Body'(object, object, object, object)
    ret
}

.method public static hidebysig object 'TEST_OPTIONAL'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldsfld object [LispBase]Lisp.Undefined::Value
    ldnull
    tail.
    call object Program::'TEST_OPTIONAL_Body'(object, object, object, object)
    ret
}

.method public static hidebysig object 'TEST_OPTIONAL'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldsfld object [LispBase]Lisp.Undefined::Value
    ldsfld object [LispBase]Lisp.Undefined::Value
    ldnull
    tail.
    call object Program::'TEST_OPTIONAL_Body'(object, object, object, object)
    ret
}

.method public static hidebysig object 'TEST_OPTIONAL'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_OPTIONAL_Body'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP1736
    ldstr "default-b"
    starg 1
    br DONE1737
SUP1736:
    nop
DONE1737:
    nop
    ldarg 2
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP1738
    ldstr "default-c"
    starg 2
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1740'
    starg 3
    br DONE1739
SUP1738:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1741'
    starg 3
DONE1739:
    nop
    ldstr "test-optional"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 2
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 3
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_OPTIONAL_1699:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F1723)
    call object Program::'MAIN'()
    pop
    ldstr "--- lambda test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    newobj instance void L_1724::'.ctor'()
    stloc F1723
    ldstr "lambda 1"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F1723
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "lambda 2"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F1723
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ldstr "lambda 3"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F1723
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_1724
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 2
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP1734
    ldstr "default-y"
    starg 2
    br DONE1735
SUP1734:
    nop
DONE1735:
    nop
    ldstr "lambda"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 2
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 3
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldsfld object [LispBase]Lisp.Undefined::Value
    ldnull
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldnull
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 9
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 10
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldarg 8
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_1724::'InvokeBody'(object, object, object)
    ret
}

} // end of class L_1724

