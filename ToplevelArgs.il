.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ToplevelArgs' {}
.module 'ToplevelArgs.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object 'MAIN'
    .field public static object 'TEST_KEY'
    .field public static object 'TEST_MIXED'
    .field public static object 'TEST_REST'
    .field public static object 'TEST_OPTIONAL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_D2530'
    .field public static class [LispBase]Lisp.Symbol 'SYM_C2528'
    .field public static class [LispBase]Lisp.Symbol 'SYM_B2526'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ALLOW_OTHER_KEYS2513'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2511'
    .field public static class [LispBase]Lisp.Symbol 'SYM_Z2510'
    .field public static class [LispBase]Lisp.Symbol 'SYM_Y2508'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_KEY'
    ldnull
    stsfld object Program::'TEST_MIXED'
    ldnull
    stsfld object Program::'TEST_REST'
    ldnull
    stsfld object Program::'TEST_OPTIONAL'
    ldnull
    stsfld object Program::'PRINT'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "D"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_D2530'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_C2528'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_B2526'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ALLOW-OTHER-KEYS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2513'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2511'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2510'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2508'
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
    call object Program::'TEST_MIXED'(object, object, object, object)
    pop
    ldstr "--- key 1 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    call object Program::'TEST_KEY'(object)
    pop
    ldstr "--- key 2 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2526'
    ldc.i4 2
    box int32
    call object Program::'TEST_KEY'(object, object, object)
    pop
    ldstr "--- key 3 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_C2528'
    ldc.i4 3
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2526'
    ldc.i4 4
    box int32
    call object Program::'TEST_KEY'(object, object, object, object, object)
    pop
    ldstr "--- key 4 ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_D2530'
    ldc.i4 40
    box int32
    call object Program::'TEST_KEY'(object, object, object)
    pop
    ldstr "--- key odd error test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_2451:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_KEY'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

.method public static hidebysig object 'TEST_KEY'(object, object, object, object, object, object, object) cil managed
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
    call object Program::'TEST_KEY_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_KEY'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

.method public static hidebysig object 'TEST_KEY'(object, object, object, object, object) cil managed
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
    call object Program::'TEST_KEY_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_KEY'(object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

.method public static hidebysig object 'TEST_KEY'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    call object Program::'TEST_KEY_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_KEY'(object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

.method public static hidebysig object 'TEST_KEY'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    tail.
    call object Program::'TEST_KEY_Body'(object, object)
    ret
}

.method public static hidebysig object 'TEST_KEY'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_KEY_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object VAL_TEMP2524, object KEY_TEMP2523, object REST_TEMP2522, object D_P2445, object D2444, object C2443, object B2442)
    ldnull
    stloc B2442
    ldc.i4 10
    box int32
    stloc C2443
    ldc.i4 20
    box int32
    stloc D2444
    ldnull
    stloc D_P2445
    ldarg 1
    stloc REST_TEMP2522
KEY_LOOP2520:
    nop
    ldloc REST_TEMP2522
    ldnull
    ceq
    brtrue KEY_DONE2521
    ldloc REST_TEMP2522
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc KEY_TEMP2523
    ldloc REST_TEMP2522
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc VAL_TEMP2524
    ldloc REST_TEMP2522
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc REST_TEMP2522
    ldloc KEY_TEMP2523
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2526'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2525
    ldloc VAL_TEMP2524
    stloc B2442
    br KEY_LOOP2520
NEXT_KW2525:
    nop
    ldloc KEY_TEMP2523
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_C2528'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2527
    ldloc VAL_TEMP2524
    stloc C2443
    br KEY_LOOP2520
NEXT_KW2527:
    nop
    ldloc KEY_TEMP2523
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_D2530'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2529
    ldloc VAL_TEMP2524
    stloc D2444
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2511'
    stloc D_P2445
    br KEY_LOOP2520
NEXT_KW2529:
    nop
    ldloc KEY_TEMP2523
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2513'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse ALLOW_OK2531
    br KEY_LOOP2520
ALLOW_OK2531:
    nop
    br KEY_LOOP2520
KEY_DONE2521:
    nop
    ldstr "test-key"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B2442
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C2443
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc D2444
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc D_P2445
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_KEY_2447:
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
    bne.un SUP2518
    ldc.i4 10
    box int32
    starg 1
    br DONE2519
SUP2518:
    nop
DONE2519:
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
BLOCK_END_TEST_MIXED_2437:
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
BLOCK_END_TEST_REST_2430:
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
    bne.un SUP2514
    ldstr "default-b"
    starg 1
    br DONE2515
SUP2514:
    nop
DONE2515:
    nop
    ldarg 2
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP2516
    ldstr "default-c"
    starg 2
    ldnull
    starg 3
    br DONE2517
SUP2516:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2511'
    starg 3
DONE2517:
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
BLOCK_END_TEST_OPTIONAL_2424:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F2465, object F2458)
    call object Program::'MAIN'()
    pop
    ldstr "--- lambda test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    newobj instance void L_2466::'.ctor'()
    stloc F2458
    ldstr "lambda 1"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2458
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "lambda 2"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2458
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
    ldloc F2458
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
    ldstr "--- lambda key test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    newobj instance void L_2467::'.ctor'()
    stloc F2465
    ldstr "lambda-key 1"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2465
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "lambda-key 2"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2465
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2508'
    ldc.i4 2
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldstr "lambda-key 3"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2465
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2510'
    ldc.i4 3
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2508'
    ldc.i4 4
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2466
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
    bne.un SUP2500
    ldstr "default-y"
    starg 2
    br DONE2501
SUP2500:
    nop
DONE2501:
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2466::'InvokeBody'(object, object, object)
    ret
}

} // end of class L_2466

.class public auto ansi beforefieldinit L_2467
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object VAL_TEMP2506, object KEY_TEMP2505, object REST_TEMP2504, object Z_P2463, object Z2462, object Y2461)
    ldc.i4 100
    box int32
    stloc Y2461
    ldc.i4 200
    box int32
    stloc Z2462
    ldnull
    stloc Z_P2463
    ldarg 2
    stloc REST_TEMP2504
KEY_LOOP2502:
    nop
    ldloc REST_TEMP2504
    ldnull
    ceq
    brtrue KEY_DONE2503
    ldloc REST_TEMP2504
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc KEY_TEMP2505
    ldloc REST_TEMP2504
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc VAL_TEMP2506
    ldloc REST_TEMP2504
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc REST_TEMP2504
    ldloc KEY_TEMP2505
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2508'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2507
    ldloc VAL_TEMP2506
    stloc Y2461
    br KEY_LOOP2502
NEXT_KW2507:
    nop
    ldloc KEY_TEMP2505
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2510'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2509
    ldloc VAL_TEMP2506
    stloc Z2462
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2511'
    stloc Z_P2463
    br KEY_LOOP2502
NEXT_KW2509:
    nop
    ldloc KEY_TEMP2505
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2513'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse ALLOW_OK2512
    br KEY_LOOP2502
ALLOW_OK2512:
    nop
    br KEY_LOOP2502
KEY_DONE2503:
    nop
    ldstr "lambda-key"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Y2461
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Z2462
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Z_P2463
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
    ldnull
    tail.
    callvirt instance object L_2467::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2467::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2467::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2467::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

} // end of class L_2467

