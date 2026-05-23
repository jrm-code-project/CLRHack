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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S381'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S381'
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
BLOCK_END_MAIN_240:
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
BLOCK_END_TEST_IMPLICIT_BLOCK_236:
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
    .locals init (object BLOCK_RESULT_IMPLICIT_BLOCK_TEST_233)
    ldarg 0
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE379
    ldnull
    br END380
TRUE379:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S381'
END380:
    nop
    ldnull
    ceq
    brtrue ELSE382
    ldstr "zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_233
    leave BLOCK_END_IMPLICIT_BLOCK_TEST_232
    br END383
ELSE382:
    nop
    ldnull
END383:
    nop
    pop
    ldstr "non-zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_233
BLOCK_END_IMPLICIT_BLOCK_TEST_232:
    nop
    ldloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_233
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
    .locals init (object BLOCK_RESULT_EXIT_228, object UWP_V63377, object UWP_V62376, object UWP_V61375, object UWP_V60374, object UWP_V59373, object UWP_V58372, object UWP_V57371, object UWP_V56370, object UWP_V55369, object UWP_V54368, object UWP_V53367, object UWP_V52366, object UWP_V51365, object UWP_V50364, object UWP_V49363, object UWP_V48362, object UWP_V47361, object UWP_V46360, object UWP_V45359, object UWP_V44358, object UWP_V43357, object UWP_V42356, object UWP_V41355, object UWP_V40354, object UWP_V39353, object UWP_V38352, object UWP_V37351, object UWP_V36350, object UWP_V35349, object UWP_V34348, object UWP_V33347, object UWP_V32346, object UWP_V31345, object UWP_V30344, object UWP_V29343, object UWP_V28342, object UWP_V27341, object UWP_V26340, object UWP_V25339, object UWP_V24338, object UWP_V23337, object UWP_V22336, object UWP_V21335, object UWP_V20334, object UWP_V19333, object UWP_V18332, object UWP_V17331, object UWP_V16330, object UWP_V15329, object UWP_V14328, object UWP_V13327, object UWP_V12326, object UWP_V11325, object UWP_V10324, object UWP_V9323, object UWP_V8322, object UWP_V7321, object UWP_V6320, object UWP_V5319, object UWP_V4318, object UWP_V3317, object UWP_V2316, object UWP_V1315, object UWP_COUNT314, object UWP_RESULT313)
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
    stloc BLOCK_RESULT_EXIT_228
    leave BLOCK_END_EXIT_227
    stloc UWP_RESULT313
    leave DONE378
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT314
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V1315
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V2316
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V3317
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V4318
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V5319
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V6320
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V7321
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V8322
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V9323
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V10324
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V11325
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V12326
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V13327
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V14328
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V15329
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V16330
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V17331
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V18332
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V19333
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V20334
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V21335
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V22336
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V23337
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V24338
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V25339
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V26340
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V27341
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V28342
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V29343
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V30344
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V31345
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V32346
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V33347
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V34348
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V35349
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V36350
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V37351
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V38352
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V39353
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V40354
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V41355
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V42356
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V43357
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V44358
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V45359
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V46360
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V47361
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V48362
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V49363
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V50364
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V51365
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V52366
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V53367
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V54368
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V55369
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V56370
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V57371
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V58372
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V59373
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V60374
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V61375
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V62376
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V63377
    ldstr "Cleanup code run"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT314
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V1315
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V2316
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V3317
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V4318
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V5319
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V6320
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V7321
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V8322
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V9323
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V10324
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V11325
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V12326
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V13327
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V14328
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V15329
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V16330
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V17331
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V18332
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V19333
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V20334
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V21335
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V22336
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V23337
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V24338
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V25339
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V26340
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V27341
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V28342
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V29343
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V30344
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V31345
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V32346
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V33347
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V34348
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V35349
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V36350
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V37351
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V38352
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V39353
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V40354
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V41355
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V42356
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V43357
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V44358
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V45359
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V46360
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V47361
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V48362
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V49363
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V50364
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V51365
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V52366
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V53367
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V54368
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V55369
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V56370
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V57371
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V58372
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V59373
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V60374
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V61375
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V62376
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V63377
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE378:
    ldloc UWP_RESULT313
    stloc BLOCK_RESULT_EXIT_228
BLOCK_END_EXIT_227:
    nop
    ldloc BLOCK_RESULT_EXIT_228
    ret
BLOCK_END_TEST_BLOCK_UWP_225:
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
    .locals init (object BLOCK_RESULT_OUTER_220)
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
    stloc BLOCK_RESULT_OUTER_220
    leave BLOCK_END_OUTER_219
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
BLOCK_END_INNER_221:
    nop
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_OUTER_220
BLOCK_END_OUTER_219:
    nop
    ldloc BLOCK_RESULT_OUTER_220
    pop
    ldstr "Back from outer block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NESTED_217:
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
    .locals init (object BLOCK_RESULT_FOO_213, object VAL214)
    ldstr "Testing block basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inside block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "returned value"
    stloc BLOCK_RESULT_FOO_213
    leave BLOCK_END_FOO_212
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_FOO_213
BLOCK_END_FOO_212:
    nop
    ldloc BLOCK_RESULT_FOO_213
    stloc VAL214
    ldstr "Result (should be returned value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL214
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_BASIC_210:
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

