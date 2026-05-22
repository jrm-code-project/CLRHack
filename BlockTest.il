.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'BlockTest' {}
.module 'BlockTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_IMPLICIT_BLOCK'
    .field public static object 'TEST_BLOCK_UWP'
    .field public static object 'TEST_BLOCK_NESTED'
    .field public static object 'TEST_BLOCK_BASIC'
    .field public static object 'IMPLICIT_BLOCK_TEST'
    .field public static object 'EQ'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S399'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_IMPLICIT_BLOCK'
    ldnull
    stsfld object Program::'TEST_BLOCK_UWP'
    ldnull
    stsfld object Program::'TEST_BLOCK_NESTED'
    ldnull
    stsfld object Program::'TEST_BLOCK_BASIC'
    ldnull
    stsfld object Program::'IMPLICIT_BLOCK_TEST'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S399'
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
    call object Program::'TEST_BLOCK_BASIC'()
    pop
    call object Program::'TEST_BLOCK_NESTED'()
    pop
    call object Program::'TEST_BLOCK_UWP'()
    pop
    tail. call object Program::'TEST_IMPLICIT_BLOCK'()
    ret
BLOCK_END_MAIN_258:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_IMPLICIT_BLOCK_Body'()
    ret
}

.method private static hidebysig object 'TEST_IMPLICIT_BLOCK_Body'() cil managed
{
    .maxstack 8
    ldstr "Testing implicit function block..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Result for 0:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 0
    box int32
    call object Program::'IMPLICIT_BLOCK_TEST'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Result for 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    call object Program::'IMPLICIT_BLOCK_TEST'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_IMPLICIT_BLOCK_254:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'IMPLICIT_BLOCK_TEST_Body'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'IMPLICIT_BLOCK_TEST_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_IMPLICIT_BLOCK_TEST_251)
    ldarg 0
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE397
    ldnull
    br END398
TRUE397:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S399'
END398:
    nop
    ldnull
    ceq
    brtrue ELSE400
    ldstr "zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_251
    leave BLOCK_END_IMPLICIT_BLOCK_TEST_250
    br END401
ELSE400:
    nop
    ldnull
END401:
    nop
    pop
    ldstr "non-zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_251
BLOCK_END_IMPLICIT_BLOCK_TEST_250:
    nop
    ldloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_251
    ret
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_UWP'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_UWP_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_UWP_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_EXIT_246, object UWP_V63395, object UWP_V62394, object UWP_V61393, object UWP_V60392, object UWP_V59391, object UWP_V58390, object UWP_V57389, object UWP_V56388, object UWP_V55387, object UWP_V54386, object UWP_V53385, object UWP_V52384, object UWP_V51383, object UWP_V50382, object UWP_V49381, object UWP_V48380, object UWP_V47379, object UWP_V46378, object UWP_V45377, object UWP_V44376, object UWP_V43375, object UWP_V42374, object UWP_V41373, object UWP_V40372, object UWP_V39371, object UWP_V38370, object UWP_V37369, object UWP_V36368, object UWP_V35367, object UWP_V34366, object UWP_V33365, object UWP_V32364, object UWP_V31363, object UWP_V30362, object UWP_V29361, object UWP_V28360, object UWP_V27359, object UWP_V26358, object UWP_V25357, object UWP_V24356, object UWP_V23355, object UWP_V22354, object UWP_V21353, object UWP_V20352, object UWP_V19351, object UWP_V18350, object UWP_V17349, object UWP_V16348, object UWP_V15347, object UWP_V14346, object UWP_V13345, object UWP_V12344, object UWP_V11343, object UWP_V10342, object UWP_V9341, object UWP_V8340, object UWP_V7339, object UWP_V6338, object UWP_V5337, object UWP_V4336, object UWP_V3335, object UWP_V2334, object UWP_V1333, object UWP_COUNT332, object UWP_RESULT331)
    ldstr "Testing block with unwind-protect..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    ldstr "Protected code"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "value from return-from"
    stloc BLOCK_RESULT_EXIT_246
    leave BLOCK_END_EXIT_245
    stloc UWP_RESULT331
    leave DONE396
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT332
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V1333
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V2334
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V3335
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V4336
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V5337
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V6338
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V7339
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V8340
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V9341
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V10342
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V11343
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V12344
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V13345
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V14346
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V15347
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V16348
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V17349
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V18350
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V19351
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V20352
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V21353
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V22354
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V23355
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V24356
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V25357
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V26358
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V27359
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V28360
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V29361
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V30362
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V31363
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V32364
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V33365
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V34366
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V35367
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V36368
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V37369
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V38370
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V39371
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V40372
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V41373
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V42374
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V43375
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V44376
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V45377
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V46378
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V47379
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V48380
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V49381
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V50382
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V51383
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V52384
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V53385
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V54386
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V55387
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V56388
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V57389
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V58390
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V59391
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V60392
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V61393
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V62394
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V63395
    ldstr "Cleanup code run"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT332
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V1333
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V2334
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V3335
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V4336
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V5337
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V6338
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V7339
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V8340
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V9341
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V10342
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V11343
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V12344
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V13345
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V14346
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V15347
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V16348
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V17349
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V18350
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V19351
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V20352
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V21353
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V22354
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V23355
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V24356
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V25357
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V26358
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V27359
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V28360
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V29361
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V30362
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V31363
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V32364
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V33365
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V34366
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V35367
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V36368
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V37369
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V38370
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V39371
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V40372
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V41373
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V42374
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V43375
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V44376
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V45377
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V46378
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V47379
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V48380
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V49381
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V50382
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V51383
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V52384
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V53385
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V54386
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V55387
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V56388
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V57389
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V58390
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V59391
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V60392
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V61393
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V62394
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V63395
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE396:
    ldloc UWP_RESULT331
    stloc BLOCK_RESULT_EXIT_246
BLOCK_END_EXIT_245:
    nop
    ldloc BLOCK_RESULT_EXIT_246
    ret
BLOCK_END_TEST_BLOCK_UWP_243:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_OUTER_238)
    ldstr "Testing nested blocks..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Outer start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inner start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "exited from inner to outer"
    stloc BLOCK_RESULT_OUTER_238
    leave BLOCK_END_OUTER_237
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
BLOCK_END_INNER_239:
    nop
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_OUTER_238
BLOCK_END_OUTER_237:
    nop
    ldloc BLOCK_RESULT_OUTER_238
    pop
    ldstr "Back from outer block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NESTED_235:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_BASIC_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_BASIC_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_FOO_231, object VAL232)
    ldstr "Testing block basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inside block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "returned value"
    stloc BLOCK_RESULT_FOO_231
    leave BLOCK_END_FOO_230
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_FOO_231
BLOCK_END_FOO_230:
    nop
    ldloc BLOCK_RESULT_FOO_231
    stloc VAL232
    ldstr "Result (should be returned value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL232
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_BASIC_228:
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

