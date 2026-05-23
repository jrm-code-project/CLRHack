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
    .field public static object 'TEST_CATCH_THROW_1_MV'
    .field public static object 'TEST_CATCH_THROW_0_MV'
    .field public static object 'TEST_CATCH_THROW_MV'
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
    .field public static object '_INTERN'
    .field public static object '_CTOR'
    .field public static object '_CELL_VALUE'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'LIST'
    .field public static object 'MV_PRODUCER'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1259'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1252'

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
    stsfld object Program::'TEST_CATCH_THROW_1_MV'
    ldnull
    stsfld object Program::'TEST_CATCH_THROW_0_MV'
    ldnull
    stsfld object Program::'TEST_CATCH_THROW_MV'
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
    stsfld object Program::'_INTERN'
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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1259'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
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
    .maxstack 15
    .locals init (object TEMP1505, object RES990, object LIST986987, object RESULTS985)
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
    call object Program::'TEST_CATCH_THROW_MV'()
    call object Program::'TEST_CATCH_THROW_0_MV'()
    call object Program::'TEST_CATCH_THROW_1_MV'()
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
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESULTS985
    ldloc RESULTS985
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST986987
TAG_LOOP_988:
    nop
    ldloc LIST986987
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1503
    ldnull
    br END1504
TRUE1503:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
END1504:
    nop
    ldnull
    ceq
    brtrue ELSE1506
    leave TAG_END_989
    br END1507
ELSE1506:
    nop
    ldnull
END1507:
    nop
    pop
    ldloc LIST986987
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES990
    ldloc LIST986987
    ldloc LIST986987
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP1505
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1505
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1505
    pop
    ldloc RES990
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_988
    pop
TAG_END_989:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_983:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_THROW_1_MV_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_THROW_1_MV_Body'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT1498, object CATCH_TAG1497, object B980, object A979)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CATCH_TAG1497
    .try
    {
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldc.i4 42
    box int32
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1498
    leave CATCH_DONE1499
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1497
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1500
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1498
    leave CATCH_DONE1499
CATCH_RETHROW1500:
    pop
    rethrow
    }
CATCH_DONE1499:
    ldloc CATCH_RESULT1498
    stloc A979
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1501
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B980
    br DONE_VAL1502
SKIP_VAL1501:
    nop
    ldnull
    stloc B980
DONE_VAL1502:
    nop
    ldloc A979
    ldloc B980
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_1_MV_977:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_THROW_0_MV_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_THROW_0_MV_Body'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT1492, object CATCH_TAG1491, object B974, object A973)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CATCH_TAG1491
    .try
    {
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1492
    leave CATCH_DONE1493
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1491
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1494
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1492
    leave CATCH_DONE1493
CATCH_RETHROW1494:
    pop
    rethrow
    }
CATCH_DONE1493:
    ldloc CATCH_RESULT1492
    stloc A973
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1495
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B974
    br DONE_VAL1496
SKIP_VAL1495:
    nop
    ldnull
    stloc B974
DONE_VAL1496:
    nop
    ldloc A973
    ldloc B974
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_0_MV_971:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_THROW_MV_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_THROW_MV_Body'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT1486, object CATCH_TAG1485, object B968, object A967)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CATCH_TAG1485
    .try
    {
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldc.i4 9
    box int32
    ldc.i4 10
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1486
    leave CATCH_DONE1487
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1485
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1488
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1486
    leave CATCH_DONE1487
CATCH_RETHROW1488:
    pop
    rethrow
    }
CATCH_DONE1487:
    ldloc CATCH_RESULT1486
    stloc A967
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1489
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B968
    br DONE_VAL1490
SKIP_VAL1489:
    nop
    ldnull
    stloc B968
DONE_VAL1490:
    nop
    ldloc A967
    ldloc B968
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_MV_965:
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
    .locals init (object BLOCK_RESULT_NIL_960, object UWP_V631481, object UWP_V621480, object UWP_V611479, object UWP_V601478, object UWP_V591477, object UWP_V581476, object UWP_V571475, object UWP_V561474, object UWP_V551473, object UWP_V541472, object UWP_V531471, object UWP_V521470, object UWP_V511469, object UWP_V501468, object UWP_V491467, object UWP_V481466, object UWP_V471465, object UWP_V461464, object UWP_V451463, object UWP_V441462, object UWP_V431461, object UWP_V421460, object UWP_V411459, object UWP_V401458, object UWP_V391457, object UWP_V381456, object UWP_V371455, object UWP_V361454, object UWP_V351453, object UWP_V341452, object UWP_V331451, object UWP_V321450, object UWP_V311449, object UWP_V301448, object UWP_V291447, object UWP_V281446, object UWP_V271445, object UWP_V261444, object UWP_V251443, object UWP_V241442, object UWP_V231441, object UWP_V221440, object UWP_V211439, object UWP_V201438, object UWP_V191437, object UWP_V181436, object UWP_V171435, object UWP_V161434, object UWP_V151433, object UWP_V141432, object UWP_V131431, object UWP_V121430, object UWP_V111429, object UWP_V101428, object UWP_V91427, object UWP_V81426, object UWP_V71425, object UWP_V61424, object UWP_V51423, object UWP_V41422, object UWP_V31421, object UWP_V21420, object UWP_V11419, object UWP_COUNT1418, object UWP_RESULT1417, object B962, object A961)
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
    stloc BLOCK_RESULT_NIL_960
    leave BLOCK_END_NIL_959
    stloc UWP_RESULT1417
    leave DONE1482
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1418
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11419
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21420
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31421
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41422
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51423
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61424
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71425
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81426
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91427
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101428
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111429
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121430
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131431
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141432
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151433
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161434
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171435
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181436
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191437
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201438
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211439
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221440
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231441
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241442
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251443
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261444
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271445
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281446
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291447
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301448
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311449
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321450
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331451
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341452
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351453
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361454
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371455
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381456
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391457
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401458
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411459
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421460
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431461
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441462
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451463
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461464
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471465
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481466
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491467
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501468
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511469
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521470
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531471
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541472
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551473
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561474
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571475
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581476
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591477
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601478
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611479
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621480
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631481
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1418
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11419
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21420
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31421
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41422
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51423
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61424
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71425
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81426
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91427
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101428
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111429
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121430
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131431
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141432
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151433
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161434
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171435
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181436
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191437
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201438
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211439
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221440
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231441
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241442
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251443
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261444
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271445
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281446
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291447
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301448
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311449
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321450
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331451
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341452
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351453
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361454
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371455
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381456
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391457
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401458
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411459
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421460
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431461
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441462
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451463
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461464
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471465
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481466
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491467
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501468
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511469
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521470
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531471
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541472
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551473
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561474
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571475
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581476
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591477
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601478
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611479
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621480
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631481
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1482:
    ldloc UWP_RESULT1417
    stloc BLOCK_RESULT_NIL_960
BLOCK_END_NIL_959:
    nop
    ldloc BLOCK_RESULT_NIL_960
    stloc A961
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1483
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B962
    br DONE_VAL1484
SKIP_VAL1483:
    nop
    ldnull
    stloc B962
DONE_VAL1484:
    nop
    ldloc A961
    ldloc B962
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_RETURN_FROM_MV_957:
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
    .locals init (object UWP_V631413, object UWP_V621412, object UWP_V611411, object UWP_V601410, object UWP_V591409, object UWP_V581408, object UWP_V571407, object UWP_V561406, object UWP_V551405, object UWP_V541404, object UWP_V531403, object UWP_V521402, object UWP_V511401, object UWP_V501400, object UWP_V491399, object UWP_V481398, object UWP_V471397, object UWP_V461396, object UWP_V451395, object UWP_V441394, object UWP_V431393, object UWP_V421392, object UWP_V411391, object UWP_V401390, object UWP_V391389, object UWP_V381388, object UWP_V371387, object UWP_V361386, object UWP_V351385, object UWP_V341384, object UWP_V331383, object UWP_V321382, object UWP_V311381, object UWP_V301380, object UWP_V291379, object UWP_V281378, object UWP_V271377, object UWP_V261376, object UWP_V251375, object UWP_V241374, object UWP_V231373, object UWP_V221372, object UWP_V211371, object UWP_V201370, object UWP_V191369, object UWP_V181368, object UWP_V171367, object UWP_V161366, object UWP_V151365, object UWP_V141364, object UWP_V131363, object UWP_V121362, object UWP_V111361, object UWP_V101360, object UWP_V91359, object UWP_V81358, object UWP_V71357, object UWP_V61356, object UWP_V51355, object UWP_V41354, object UWP_V31353, object UWP_V21352, object UWP_V11351, object UWP_COUNT1350, object UWP_RESULT1349, object B954, object A953)
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
    stloc UWP_RESULT1349
    leave DONE1414
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1350
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11351
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21352
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31353
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41354
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51355
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61356
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71357
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81358
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91359
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101360
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111361
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121362
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131363
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141364
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151365
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161366
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171367
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181368
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191369
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201370
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211371
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221372
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231373
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241374
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251375
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261376
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271377
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281378
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291379
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301380
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311381
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321382
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331383
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341384
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351385
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361386
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371387
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381388
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391389
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401390
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411391
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421392
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431393
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441394
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451395
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461396
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471397
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481398
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491399
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501400
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511401
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521402
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531403
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541404
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551405
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561406
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571407
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581408
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591409
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601410
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611411
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621412
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631413
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1350
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11351
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21352
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31353
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41354
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51355
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61356
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71357
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81358
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91359
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101360
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111361
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121362
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131363
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141364
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151365
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161366
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171367
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181368
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191369
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201370
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211371
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221372
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231373
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241374
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251375
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261376
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271377
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281378
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291379
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301380
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311381
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321382
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331383
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341384
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351385
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361386
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371387
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381388
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391389
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401390
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411391
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421392
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431393
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441394
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451395
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461396
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471397
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481398
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491399
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501400
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511401
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521402
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531403
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541404
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551405
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561406
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571407
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581408
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591409
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601410
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611411
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621412
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631413
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1414:
    ldloc UWP_RESULT1349
    stloc A953
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1415
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B954
    br DONE_VAL1416
SKIP_VAL1415:
    nop
    ldnull
    stloc B954
DONE_VAL1416:
    nop
    ldloc A953
    ldloc B954
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_MV_951:
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
    .locals init (object MVC_LIST1348, object MVC_FN1347)
    newobj instance void L_993::'.ctor'()
    stloc MVC_FN1347
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1348
    ldloc MVC_LIST1348
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
    ldloc MVC_LIST1348
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
    ldloc MVC_LIST1348
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1347
    ldloc MVC_LIST1348
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_REST_945:
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
    .locals init (object MVC_LIST1346, object MVC_FN1345)
    newobj instance void L_992::'.ctor'()
    stloc MVC_FN1345
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1346
    ldloc MVC_LIST1346
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
    ldloc MVC_LIST1346
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
    ldloc MVC_LIST1346
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1345
    ldloc MVC_LIST1346
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_934:
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
    .locals init (object TEMP1344, object MV_PROG1_V631343, object MV_PROG1_V621342, object MV_PROG1_V611341, object MV_PROG1_V601340, object MV_PROG1_V591339, object MV_PROG1_V581338, object MV_PROG1_V571337, object MV_PROG1_V561336, object MV_PROG1_V551335, object MV_PROG1_V541334, object MV_PROG1_V531333, object MV_PROG1_V521332, object MV_PROG1_V511331, object MV_PROG1_V501330, object MV_PROG1_V491329, object MV_PROG1_V481328, object MV_PROG1_V471327, object MV_PROG1_V461326, object MV_PROG1_V451325, object MV_PROG1_V441324, object MV_PROG1_V431323, object MV_PROG1_V421322, object MV_PROG1_V411321, object MV_PROG1_V401320, object MV_PROG1_V391319, object MV_PROG1_V381318, object MV_PROG1_V371317, object MV_PROG1_V361316, object MV_PROG1_V351315, object MV_PROG1_V341314, object MV_PROG1_V331313, object MV_PROG1_V321312, object MV_PROG1_V311311, object MV_PROG1_V301310, object MV_PROG1_V291309, object MV_PROG1_V281308, object MV_PROG1_V271307, object MV_PROG1_V261306, object MV_PROG1_V251305, object MV_PROG1_V241304, object MV_PROG1_V231303, object MV_PROG1_V221302, object MV_PROG1_V211301, object MV_PROG1_V201300, object MV_PROG1_V191299, object MV_PROG1_V181298, object MV_PROG1_V171297, object MV_PROG1_V161296, object MV_PROG1_V151295, object MV_PROG1_V141294, object MV_PROG1_V131293, object MV_PROG1_V121292, object MV_PROG1_V111291, object MV_PROG1_V101290, object MV_PROG1_V91289, object MV_PROG1_V81288, object MV_PROG1_V71287, object MV_PROG1_V61286, object MV_PROG1_V51285, object MV_PROG1_V41284, object MV_PROG1_V31283, object MV_PROG1_V21282, object MV_PROG1_V11281, object MV_PROG1_COUNT1280, object MV_PROG1_RES1279, object X931)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X931
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_RES1279
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT1280
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V11281
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V21282
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V31283
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V41284
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V51285
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V61286
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V71287
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V81288
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V91289
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V101290
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V111291
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V121292
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V131293
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V141294
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V151295
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V161296
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V171297
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V181298
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V191299
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V201300
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V211301
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V221302
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V231303
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V241304
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V251305
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V261306
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V271307
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V281308
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V291309
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V301310
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V311311
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V321312
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V331313
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V341314
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V351315
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V361316
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V371317
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V381318
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V391319
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V401320
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V411321
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V421322
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V431323
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V441324
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V451325
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V461326
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V471327
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V481328
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V491329
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V501330
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V511331
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V521332
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V531333
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V541334
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V551335
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V561336
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V571337
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V581338
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V591339
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V601340
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V611341
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V621342
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V631343
    ldloc X931
    ldc.i4 10
    box int32
    stloc TEMP1344
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1344
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1344
    pop
    ldloc MV_PROG1_COUNT1280
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V11281
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V21282
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V31283
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V41284
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V51285
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V61286
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V71287
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V81288
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V91289
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V101290
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V111291
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V121292
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V131293
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V141294
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V151295
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V161296
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V171297
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V181298
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V191299
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V201300
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V211301
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V221302
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V231303
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V241304
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V251305
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V261306
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V271307
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V281308
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V291309
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V301310
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V311311
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V321312
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V331313
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V341314
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V351315
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V361316
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V371317
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V381318
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V391319
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V401320
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V411321
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V421322
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V431323
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V441324
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V451325
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V461326
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V471327
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V481328
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V491329
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V501330
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V511331
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V521332
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V531333
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V541334
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V551335
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V561336
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V571337
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V581338
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V591339
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V601340
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V611341
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V621342
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V631343
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES1279
    ldloc X931
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_PROG1_929:
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
    .locals init (object B926, object A925)
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
    stloc A925
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1277
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B926
    br DONE_VAL1278
SKIP_VAL1277:
    nop
    ldnull
    stloc B926
DONE_VAL1278:
    nop
    ldloc A925
    ldloc B926
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_NORMAL_923:
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
    .locals init (object B920, object A919)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 0
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A919
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1275
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B920
    br DONE_VAL1276
SKIP_VAL1275:
    nop
    ldnull
    stloc B920
DONE_VAL1276:
    nop
    ldloc A919
    ldloc B920
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_0_917:
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
    .locals init (object C914, object B913, object A912)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A912
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1271
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B913
    br DONE_VAL1272
SKIP_VAL1271:
    nop
    ldnull
    stloc B913
DONE_VAL1272:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1273
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C914
    br DONE_VAL1274
SKIP_VAL1273:
    nop
    ldnull
    stloc C914
DONE_VAL1274:
    nop
    ldloc A912
    ldloc B913
    ldloc C914
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_FROM_2_910:
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
    .locals init (object A907)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A907
    ldloc A907
    ret
BLOCK_END_TEST_MV_BIND_1_FROM_2_905:
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
    .locals init (object C902, object B901, object A900)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A900
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1267
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B901
    br DONE_VAL1268
SKIP_VAL1267:
    nop
    ldnull
    stloc B901
DONE_VAL1268:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1269
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C902
    br DONE_VAL1270
SKIP_VAL1269:
    nop
    ldnull
    stloc C902
DONE_VAL1270:
    nop
    ldloc A900
    ldloc B901
    ldloc C902
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_898:
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
    .locals init (object B895, object A894)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A894
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1265
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B895
    br DONE_VAL1266
SKIP_VAL1265:
    nop
    ldnull
    stloc B895
DONE_VAL1266:
    nop
    ldloc A894
    ldloc B895
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_2_892:
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
    brtrue TRUE1250
    ldnull
    br END1251
TRUE1250:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
END1251:
    nop
    ldnull
    ceq
    brtrue ELSE1264
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE1264:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1253
    ldnull
    br END1254
TRUE1253:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
END1254:
    nop
    ldnull
    ceq
    brtrue ELSE1263
    ldc.i4 10
    box int32
    ret
ELSE1263:
    nop
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1255
    ldnull
    br END1256
TRUE1255:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
END1256:
    nop
    ldnull
    ceq
    brtrue ELSE1262
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1262:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1257
    ldnull
    br END1258
TRUE1257:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1252'
END1258:
    nop
    ldnull
    ceq
    brtrue ELSE1261
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
ELSE1261:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1259'
    ldnull
    ceq
    brtrue ELSE1260
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
ELSE1260:
    nop
    ldnull
    ret
BLOCK_END_MV_PRODUCER_888:
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

.class public auto ansi beforefieldinit L_992
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
    callvirt instance object L_992::'InvokeBody'(object, object, object, object, object, object)
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

} // end of class L_992

.class public auto ansi beforefieldinit L_993
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
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
    callvirt instance object L_993::'InvokeBody'(object)
    ret
}

} // end of class L_993

