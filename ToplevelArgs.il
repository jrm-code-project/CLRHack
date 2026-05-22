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
    .field public static class [LispBase]Lisp.Symbol 'SYM_D2104'
    .field public static class [LispBase]Lisp.Symbol 'SYM_C2102'
    .field public static class [LispBase]Lisp.Symbol 'SYM_B2100'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ALLOW_OTHER_KEYS2087'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2085'
    .field public static class [LispBase]Lisp.Symbol 'SYM_Z2084'
    .field public static class [LispBase]Lisp.Symbol 'SYM_Y2082'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2077'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_D2104'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_C2102'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_B2100'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ALLOW-OTHER-KEYS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2087'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2085'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2084'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2082'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "NIL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2077'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2100'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_C2102'
    ldc.i4 3
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2100'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_D2104'
    ldc.i4 40
    box int32
    call object Program::'TEST_KEY'(object, object, object)
    pop
    ldstr "--- key odd error test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_2023:
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
    .locals init (object VAL_TEMP2098, object KEY_TEMP2097, object REST_TEMP2096, object D_P2017, object D2016, object C2015, object B2014)
    ldnull
    stloc B2014
    ldc.i4 10
    box int32
    stloc C2015
    ldc.i4 20
    box int32
    stloc D2016
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2077'
    stloc D_P2017
    ldarg 1
    stloc REST_TEMP2096
KEY_LOOP2094:
    nop
    ldloc REST_TEMP2096
    ldnull
    ceq
    brtrue KEY_DONE2095
    ldloc REST_TEMP2096
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc KEY_TEMP2097
    ldloc REST_TEMP2096
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc VAL_TEMP2098
    ldloc REST_TEMP2096
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc REST_TEMP2096
    ldloc KEY_TEMP2097
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_B2100'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2099
    ldloc VAL_TEMP2098
    stloc B2014
    br KEY_LOOP2094
NEXT_KW2099:
    nop
    ldloc KEY_TEMP2097
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_C2102'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2101
    ldloc VAL_TEMP2098
    stloc C2015
    br KEY_LOOP2094
NEXT_KW2101:
    nop
    ldloc KEY_TEMP2097
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_D2104'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2103
    ldloc VAL_TEMP2098
    stloc D2016
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2085'
    stloc D_P2017
    br KEY_LOOP2094
NEXT_KW2103:
    nop
    ldloc KEY_TEMP2097
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2087'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse ALLOW_OK2105
    br KEY_LOOP2094
ALLOW_OK2105:
    nop
    br KEY_LOOP2094
KEY_DONE2095:
    nop
    ldstr "test-key"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B2014
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C2015
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc D2016
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc D_P2017
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_KEY_2019:
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
    bne.un SUP2092
    ldc.i4 10
    box int32
    starg 1
    br DONE2093
SUP2092:
    nop
DONE2093:
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
BLOCK_END_TEST_MIXED_2009:
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
BLOCK_END_TEST_REST_2002:
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
    bne.un SUP2088
    ldstr "default-b"
    starg 1
    br DONE2089
SUP2088:
    nop
DONE2089:
    nop
    ldarg 2
    ldsfld object [LispBase]Lisp.Undefined::Value
    bne.un SUP2090
    ldstr "default-c"
    starg 2
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2077'
    starg 3
    br DONE2091
SUP2090:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2085'
    starg 3
DONE2091:
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
BLOCK_END_TEST_OPTIONAL_1996:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F2037, object F2030)
    call object Program::'MAIN'()
    pop
    ldstr "--- lambda test ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    newobj instance void L_2038::'.ctor'()
    stloc F2030
    ldstr "lambda 1"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2030
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "lambda 2"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2030
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
    ldloc F2030
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
    newobj instance void L_2039::'.ctor'()
    stloc F2037
    ldstr "lambda-key 1"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2037
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "lambda-key 2"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2037
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2082'
    ldc.i4 2
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldstr "lambda-key 3"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2037
    castclass [LispBase]Lisp.Closure
    ldc.i4 1
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2084'
    ldc.i4 3
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2082'
    ldc.i4 4
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2038
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
    bne.un SUP2073
    ldstr "default-y"
    starg 2
    br DONE2074
SUP2073:
    nop
DONE2074:
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
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
    callvirt instance object L_2038::'InvokeBody'(object, object, object)
    ret
}

} // end of class L_2038

.class public auto ansi beforefieldinit L_2039
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
    .locals init (object VAL_TEMP2080, object KEY_TEMP2079, object REST_TEMP2078, object Z_P2035, object Z2034, object Y2033)
    ldc.i4 100
    box int32
    stloc Y2033
    ldc.i4 200
    box int32
    stloc Z2034
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2077'
    stloc Z_P2035
    ldarg 2
    stloc REST_TEMP2078
KEY_LOOP2075:
    nop
    ldloc REST_TEMP2078
    ldnull
    ceq
    brtrue KEY_DONE2076
    ldloc REST_TEMP2078
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc KEY_TEMP2079
    ldloc REST_TEMP2078
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc VAL_TEMP2080
    ldloc REST_TEMP2078
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc REST_TEMP2078
    ldloc KEY_TEMP2079
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Y2082'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2081
    ldloc VAL_TEMP2080
    stloc Y2033
    br KEY_LOOP2075
NEXT_KW2081:
    nop
    ldloc KEY_TEMP2079
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_Z2084'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse NEXT_KW2083
    ldloc VAL_TEMP2080
    stloc Z2034
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2085'
    stloc Z_P2035
    br KEY_LOOP2075
NEXT_KW2083:
    nop
    ldloc KEY_TEMP2079
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ALLOW_OTHER_KEYS2087'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse ALLOW_OK2086
    br KEY_LOOP2075
ALLOW_OK2086:
    nop
    br KEY_LOOP2075
KEY_DONE2076:
    nop
    ldstr "lambda-key"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Y2033
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Z2034
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc Z_P2035
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
    callvirt instance object L_2039::'InvokeBody'(object, object)
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
    callvirt instance object L_2039::'InvokeBody'(object, object)
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
    callvirt instance object L_2039::'InvokeBody'(object, object)
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
    callvirt instance object L_2039::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldstr "Odd number of keyword arguments"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    throw
}

} // end of class L_2039

