.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MultipleValuesTest' {}
.module 'MultipleValuesTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'RUN_MV_TESTS'
    .field public static object 'PRINT'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object 'NULL'
    .field public static object 'TEST_UWP_RETURN_FROM_MV'
    .field public static object 'TEST_UWP_MV'
    .field public static object 'TEST_MV_CALL_REST'
    .field public static object 'TEST_MV_CALL'
    .field public static object 'TEST_MV_PROG1'
    .field public static object 'TEST_MV_BIND_NORMAL'
    .field public static object 'TEST_MV_BIND_0'
    .field public static object 'TEST_MV_BIND_3_FROM_2'
    .field public static object 'TEST_MV_BIND_1_FROM_2'
    .field public static object 'TEST_MV_BIND_3'
    .field public static object 'TEST_MV_BIND_2'
    .field public static object '_CTOR'
    .field public static object '_CELL_VALUE'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'LIST'
    .field public static object 'MV_PRODUCER'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1245'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1238'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'RUN_MV_TESTS'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'TEST_UWP_RETURN_FROM_MV'
    ldnull
    stsfld object Program::'TEST_UWP_MV'
    ldnull
    stsfld object Program::'TEST_MV_CALL_REST'
    ldnull
    stsfld object Program::'TEST_MV_CALL'
    ldnull
    stsfld object Program::'TEST_MV_PROG1'
    ldnull
    stsfld object Program::'TEST_MV_BIND_NORMAL'
    ldnull
    stsfld object Program::'TEST_MV_BIND_0'
    ldnull
    stsfld object Program::'TEST_MV_BIND_3_FROM_2'
    ldnull
    stsfld object Program::'TEST_MV_BIND_1_FROM_2'
    ldnull
    stsfld object Program::'TEST_MV_BIND_3'
    ldnull
    stsfld object Program::'TEST_MV_BIND_2'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'LIST'
    ldnull
    stsfld object Program::'MV_PRODUCER'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1245'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RUN_MV_TESTS'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'RUN_MV_TESTS_Body'()
    ret
}

.method private static hidebysig object 'RUN_MV_TESTS_Body'() cil managed
{
    .maxstack 12
    .locals init (object TEMP1473, object RES994, object LIST990991, object RESULTS989)
    call object Program::'TEST_MV_BIND_2'()
    call object Program::'TEST_MV_BIND_3'()
    call object Program::'TEST_MV_BIND_1_FROM_2'()
    call object Program::'TEST_MV_BIND_3_FROM_2'()
    call object Program::'TEST_MV_BIND_0'()
    call object Program::'TEST_MV_BIND_NORMAL'()
    call object Program::'TEST_MV_PROG1'()
    call object Program::'TEST_MV_CALL'()
    call object Program::'TEST_MV_CALL_REST'()
    call object Program::'TEST_UWP_MV'()
    call object Program::'TEST_UWP_RETURN_FROM_MV'()
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESULTS989
    ldloc RESULTS989
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST990991
TAG_LOOP_992:
    nop
    ldloc LIST990991
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1471
    ldnull
    br END1472
TRUE1471:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
END1472:
    nop
    ldnull
    ceq
    brtrue ELSE1474
    leave TAG_END_993
    br END1475
ELSE1474:
    nop
    ldnull
END1475:
    nop
    pop
    ldloc LIST990991
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES994
    ldloc LIST990991
    ldloc LIST990991
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP1473
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1473
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1473
    pop
    ldloc RES994
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_992
    pop
TAG_END_993:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_987:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_RETURN_FROM_MV_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_RETURN_FROM_MV_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_NIL_982, object UWP_V631467, object UWP_V621466, object UWP_V611465, object UWP_V601464, object UWP_V591463, object UWP_V581462, object UWP_V571461, object UWP_V561460, object UWP_V551459, object UWP_V541458, object UWP_V531457, object UWP_V521456, object UWP_V511455, object UWP_V501454, object UWP_V491453, object UWP_V481452, object UWP_V471451, object UWP_V461450, object UWP_V451449, object UWP_V441448, object UWP_V431447, object UWP_V421446, object UWP_V411445, object UWP_V401444, object UWP_V391443, object UWP_V381442, object UWP_V371441, object UWP_V361440, object UWP_V351439, object UWP_V341438, object UWP_V331437, object UWP_V321436, object UWP_V311435, object UWP_V301434, object UWP_V291433, object UWP_V281432, object UWP_V271431, object UWP_V261430, object UWP_V251429, object UWP_V241428, object UWP_V231427, object UWP_V221426, object UWP_V211425, object UWP_V201424, object UWP_V191423, object UWP_V181422, object UWP_V171421, object UWP_V161420, object UWP_V151419, object UWP_V141418, object UWP_V131417, object UWP_V121416, object UWP_V111415, object UWP_V101414, object UWP_V91413, object UWP_V81412, object UWP_V71411, object UWP_V61410, object UWP_V51409, object UWP_V41408, object UWP_V31407, object UWP_V21406, object UWP_V11405, object UWP_COUNT1404, object UWP_RESULT1403, object B984, object A983)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    ldc.i4 5
    box int32
    ldc.i4 6
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc BLOCK_RESULT_NIL_982
    leave BLOCK_END_NIL_981
    stloc UWP_RESULT1403
    leave DONE1468
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1404
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11405
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21406
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31407
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41408
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51409
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61410
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71411
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81412
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91413
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101414
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111415
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121416
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131417
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141418
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151419
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161420
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171421
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181422
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191423
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201424
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211425
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221426
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231427
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241428
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251429
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261430
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271431
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281432
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291433
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301434
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311435
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321436
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331437
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341438
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351439
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361440
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371441
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381442
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391443
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401444
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411445
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421446
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431447
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441448
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451449
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461450
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471451
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481452
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491453
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501454
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511455
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521456
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531457
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541458
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551459
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561460
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571461
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581462
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591463
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601464
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611465
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621466
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631467
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1404
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11405
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21406
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31407
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41408
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51409
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61410
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71411
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81412
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91413
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101414
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111415
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121416
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131417
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141418
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151419
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161420
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171421
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181422
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191423
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201424
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211425
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221426
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231427
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241428
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251429
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261430
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271431
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281432
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291433
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301434
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311435
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321436
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331437
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341438
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351439
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361440
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371441
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381442
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391443
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401444
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411445
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421446
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431447
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441448
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451449
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461450
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471451
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481452
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491453
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501454
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511455
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521456
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531457
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541458
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551459
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561460
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571461
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581462
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591463
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601464
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611465
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621466
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631467
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1468:
    ldloc UWP_RESULT1403
    stloc BLOCK_RESULT_NIL_982
BLOCK_END_NIL_981:
    nop
    ldloc BLOCK_RESULT_NIL_982
    stloc A983
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1469
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B984
    br DONE_VAL1470
SKIP_VAL1469:
    nop
    ldnull
    stloc B984
DONE_VAL1470:
    nop
    ldloc A983
    ldloc B984
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_RETURN_FROM_MV_979:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_MV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_MV_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_MV_Body'() cil managed
{
    .maxstack 8
    .locals init (object UWP_V631399, object UWP_V621398, object UWP_V611397, object UWP_V601396, object UWP_V591395, object UWP_V581394, object UWP_V571393, object UWP_V561392, object UWP_V551391, object UWP_V541390, object UWP_V531389, object UWP_V521388, object UWP_V511387, object UWP_V501386, object UWP_V491385, object UWP_V481384, object UWP_V471383, object UWP_V461382, object UWP_V451381, object UWP_V441380, object UWP_V431379, object UWP_V421378, object UWP_V411377, object UWP_V401376, object UWP_V391375, object UWP_V381374, object UWP_V371373, object UWP_V361372, object UWP_V351371, object UWP_V341370, object UWP_V331369, object UWP_V321368, object UWP_V311367, object UWP_V301366, object UWP_V291365, object UWP_V281364, object UWP_V271363, object UWP_V261362, object UWP_V251361, object UWP_V241360, object UWP_V231359, object UWP_V221358, object UWP_V211357, object UWP_V201356, object UWP_V191355, object UWP_V181354, object UWP_V171353, object UWP_V161352, object UWP_V151351, object UWP_V141350, object UWP_V131349, object UWP_V121348, object UWP_V111347, object UWP_V101346, object UWP_V91345, object UWP_V81344, object UWP_V71343, object UWP_V61342, object UWP_V51341, object UWP_V41340, object UWP_V31339, object UWP_V21338, object UWP_V11337, object UWP_COUNT1336, object UWP_RESULT1335, object B976, object A975)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_RESULT1335
    leave DONE1400
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1336
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11337
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21338
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31339
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41340
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51341
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61342
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71343
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81344
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91345
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101346
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111347
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121348
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131349
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141350
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151351
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161352
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171353
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181354
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191355
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201356
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211357
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221358
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231359
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241360
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251361
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261362
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271363
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281364
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291365
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301366
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311367
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321368
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331369
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341370
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351371
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361372
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371373
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381374
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391375
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401376
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411377
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421378
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431379
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441380
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451381
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461382
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471383
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481384
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491385
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501386
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511387
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521388
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531389
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541390
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551391
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561392
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571393
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581394
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591395
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601396
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611397
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621398
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631399
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1336
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11337
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21338
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31339
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41340
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51341
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61342
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71343
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81344
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91345
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101346
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111347
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121348
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131349
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141350
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151351
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161352
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171353
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181354
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191355
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201356
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211357
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221358
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231359
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241360
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251361
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261362
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271363
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281364
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291365
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301366
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311367
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321368
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331369
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341370
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351371
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361372
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371373
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381374
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391375
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401376
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411377
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421378
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431379
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441380
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451381
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461382
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471383
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481384
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491385
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501386
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511387
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521388
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531389
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541390
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551391
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561392
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571393
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581394
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591395
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601396
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611397
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621398
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631399
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1400:
    ldloc UWP_RESULT1335
    stloc A975
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1401
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B976
    br DONE_VAL1402
SKIP_VAL1401:
    nop
    ldnull
    stloc B976
DONE_VAL1402:
    nop
    ldloc A975
    ldloc B976
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_MV_973:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL_REST'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_CALL_REST_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_CALL_REST_Body'() cil managed
{
    .maxstack 8
    .locals init (object MVC_LIST1334, object MVC_FN1333)
    newobj instance void L_997::'.ctor'()
    stloc MVC_FN1333
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1334
    ldloc MVC_LIST1334
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST1334
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 5
    box int32
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST1334
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1333
    ldloc MVC_LIST1334
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_REST_967:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_CALL'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_CALL_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_CALL_Body'() cil managed
{
    .maxstack 8
    .locals init (object MVC_LIST1332, object MVC_FN1331)
    newobj instance void L_996::'.ctor'()
    stloc MVC_FN1331
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1332
    ldloc MVC_LIST1332
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST1332
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 5
    box int32
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST1332
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1331
    ldloc MVC_LIST1332
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_956:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_PROG1'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_PROG1_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_PROG1_Body'() cil managed
{
    .maxstack 8
    .locals init (object TEMP1330, object MV_PROG1_V631329, object MV_PROG1_V621328, object MV_PROG1_V611327, object MV_PROG1_V601326, object MV_PROG1_V591325, object MV_PROG1_V581324, object MV_PROG1_V571323, object MV_PROG1_V561322, object MV_PROG1_V551321, object MV_PROG1_V541320, object MV_PROG1_V531319, object MV_PROG1_V521318, object MV_PROG1_V511317, object MV_PROG1_V501316, object MV_PROG1_V491315, object MV_PROG1_V481314, object MV_PROG1_V471313, object MV_PROG1_V461312, object MV_PROG1_V451311, object MV_PROG1_V441310, object MV_PROG1_V431309, object MV_PROG1_V421308, object MV_PROG1_V411307, object MV_PROG1_V401306, object MV_PROG1_V391305, object MV_PROG1_V381304, object MV_PROG1_V371303, object MV_PROG1_V361302, object MV_PROG1_V351301, object MV_PROG1_V341300, object MV_PROG1_V331299, object MV_PROG1_V321298, object MV_PROG1_V311297, object MV_PROG1_V301296, object MV_PROG1_V291295, object MV_PROG1_V281294, object MV_PROG1_V271293, object MV_PROG1_V261292, object MV_PROG1_V251291, object MV_PROG1_V241290, object MV_PROG1_V231289, object MV_PROG1_V221288, object MV_PROG1_V211287, object MV_PROG1_V201286, object MV_PROG1_V191285, object MV_PROG1_V181284, object MV_PROG1_V171283, object MV_PROG1_V161282, object MV_PROG1_V151281, object MV_PROG1_V141280, object MV_PROG1_V131279, object MV_PROG1_V121278, object MV_PROG1_V111277, object MV_PROG1_V101276, object MV_PROG1_V91275, object MV_PROG1_V81274, object MV_PROG1_V71273, object MV_PROG1_V61272, object MV_PROG1_V51271, object MV_PROG1_V41270, object MV_PROG1_V31269, object MV_PROG1_V21268, object MV_PROG1_V11267, object MV_PROG1_COUNT1266, object MV_PROG1_RES1265, object X953)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X953
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_RES1265
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT1266
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V11267
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V21268
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V31269
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V41270
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V51271
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V61272
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V71273
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V81274
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V91275
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V101276
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V111277
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V121278
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V131279
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V141280
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V151281
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V161282
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V171283
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V181284
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V191285
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V201286
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V211287
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V221288
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V231289
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V241290
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V251291
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V261292
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V271293
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V281294
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V291295
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V301296
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V311297
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V321298
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V331299
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V341300
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V351301
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V361302
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V371303
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V381304
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V391305
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V401306
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V411307
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V421308
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V431309
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V441310
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V451311
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V461312
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V471313
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V481314
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V491315
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V501316
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V511317
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V521318
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V531319
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V541320
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V551321
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V561322
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V571323
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V581324
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V591325
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V601326
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V611327
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V621328
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V631329
    ldloc X953
    ldc.i4 10
    box int32
    stloc TEMP1330
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1330
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1330
    pop
    ldloc MV_PROG1_COUNT1266
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V11267
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V21268
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V31269
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V41270
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V51271
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V61272
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V71273
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V81274
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V91275
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V101276
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V111277
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V121278
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V131279
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V141280
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V151281
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V161282
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V171283
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V181284
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V191285
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V201286
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V211287
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V221288
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V231289
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V241290
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V251291
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V261292
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V271293
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V281294
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V291295
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V301296
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V311297
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V321298
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V331299
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V341300
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V351301
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V361302
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V371303
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V381304
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V391305
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V401306
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V411307
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V421308
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V431309
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V441310
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V451311
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V461312
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V471313
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V481314
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V491315
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V501316
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V511317
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V521318
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V531319
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V541320
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V551321
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V561322
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V571323
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V581324
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V591325
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V601326
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V611327
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V621328
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V631329
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES1265
    ldloc X953
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_PROG1_951:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_NORMAL_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_NORMAL_Body'() cil managed
{
    .maxstack 8
    .locals init (object B948, object A947)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc A947
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1263
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B948
    br DONE_VAL1264
SKIP_VAL1263:
    nop
    ldnull
    stloc B948
DONE_VAL1264:
    nop
    ldloc A947
    ldloc B948
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_NORMAL_945:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_0'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_0_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_0_Body'() cil managed
{
    .maxstack 8
    .locals init (object B942, object A941)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 0
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A941
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1261
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B942
    br DONE_VAL1262
SKIP_VAL1261:
    nop
    ldnull
    stloc B942
DONE_VAL1262:
    nop
    ldloc A941
    ldloc B942
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_0_939:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_3_FROM_2_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_3_FROM_2_Body'() cil managed
{
    .maxstack 8
    .locals init (object C936, object B935, object A934)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A934
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1257
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B935
    br DONE_VAL1258
SKIP_VAL1257:
    nop
    ldnull
    stloc B935
DONE_VAL1258:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1259
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C936
    br DONE_VAL1260
SKIP_VAL1259:
    nop
    ldnull
    stloc C936
DONE_VAL1260:
    nop
    ldloc A934
    ldloc B935
    ldloc C936
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_FROM_2_932:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_1_FROM_2_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_1_FROM_2_Body'() cil managed
{
    .maxstack 8
    .locals init (object A929)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A929
    ldloc A929
    ret
BLOCK_END_TEST_MV_BIND_1_FROM_2_927:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_3'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_3_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_3_Body'() cil managed
{
    .maxstack 8
    .locals init (object C924, object B923, object A922)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A922
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1253
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B923
    br DONE_VAL1254
SKIP_VAL1253:
    nop
    ldnull
    stloc B923
DONE_VAL1254:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1255
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C924
    br DONE_VAL1256
SKIP_VAL1255:
    nop
    ldnull
    stloc C924
DONE_VAL1256:
    nop
    ldloc A922
    ldloc B923
    ldloc C924
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_920:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_MV_BIND_2'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MV_BIND_2_Body'()
    ret
}

.method private static hidebysig object 'TEST_MV_BIND_2_Body'() cil managed
{
    .maxstack 8
    .locals init (object B917, object A916)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A916
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1251
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B917
    br DONE_VAL1252
SKIP_VAL1251:
    nop
    ldnull
    stloc B917
DONE_VAL1252:
    nop
    ldloc A916
    ldloc B917
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_2_914:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MV_PRODUCER'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'MV_PRODUCER_Body'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'MV_PRODUCER_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldc.i4 0
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1236
    ldnull
    br END1237
TRUE1236:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
END1237:
    nop
    ldnull
    ceq
    brtrue ELSE1250
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE1250:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1239
    ldnull
    br END1240
TRUE1239:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
END1240:
    nop
    ldnull
    ceq
    brtrue ELSE1249
    ldc.i4 10
    box int32
    ret
ELSE1249:
    nop
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1241
    ldnull
    br END1242
TRUE1241:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
END1242:
    nop
    ldnull
    ceq
    brtrue ELSE1248
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1248:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1243
    ldnull
    br END1244
TRUE1243:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1238'
END1244:
    nop
    ldnull
    ceq
    brtrue ELSE1247
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 30
    box int32
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1247:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1245'
    ldnull
    ceq
    brtrue ELSE1246
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 3
    box int32
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value3
    ldc.i4 5
    box int32
    stsfld object [LispBase]Lisp.Values::Value4
    ldc.i4 5
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1246:
    nop
    ldnull
    ret
BLOCK_END_MV_PRODUCER_910:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'RUN_MV_TESTS'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_996
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    tail.
    callvirt instance object L_996::'InvokeBody'(object, object, object, object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_996

.class public auto ansi beforefieldinit L_997
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    ldnull
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_997::'InvokeBody'(object)
    ret
}

} // end of class L_997

