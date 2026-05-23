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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1522'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1515'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1508'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1280'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1273'

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
    ldstr "BAZ"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1522'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1515'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1508'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1280'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
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
    .locals init (object TEMP1529, object RES1010, object LIST10061007, object RESULTS1005)
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
    stloc RESULTS1005
    ldloc RESULTS1005
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST10061007
TAG_LOOP_1008:
    nop
    ldloc LIST10061007
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1527
    ldnull
    br END1528
TRUE1527:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
END1528:
    nop
    ldnull
    ceq
    brtrue ELSE1530
    leave TAG_END_1009
    br END1531
ELSE1530:
    nop
    ldnull
END1531:
    nop
    pop
    ldloc LIST10061007
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES1010
    ldloc LIST10061007
    ldloc LIST10061007
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP1529
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1529
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1529
    pop
    ldloc RES1010
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_1008
    pop
TAG_END_1009:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_1003:
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
    .locals init (object CATCH_RESULT1521, object CATCH_TAG1520, object B1000, object A999)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1522'
    stloc CATCH_TAG1520
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1522'
    ldc.i4 42
    box int32
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1521
    leave CATCH_DONE1523
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1520
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1524
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1521
    leave CATCH_DONE1523
CATCH_RETHROW1524:
    pop
    rethrow
    }
CATCH_DONE1523:
    ldloc CATCH_RESULT1521
    stloc A999
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1525
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B1000
    br DONE_VAL1526
SKIP_VAL1525:
    nop
    ldnull
    stloc B1000
DONE_VAL1526:
    nop
    ldloc A999
    ldloc B1000
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_1_MV_997:
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
    .locals init (object CATCH_RESULT1514, object CATCH_TAG1513, object B994, object A993)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1515'
    stloc CATCH_TAG1513
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1515'
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1514
    leave CATCH_DONE1516
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1513
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1517
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1514
    leave CATCH_DONE1516
CATCH_RETHROW1517:
    pop
    rethrow
    }
CATCH_DONE1516:
    ldloc CATCH_RESULT1514
    stloc A993
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1518
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B994
    br DONE_VAL1519
SKIP_VAL1518:
    nop
    ldnull
    stloc B994
DONE_VAL1519:
    nop
    ldloc A993
    ldloc B994
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_0_MV_991:
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
    .locals init (object CATCH_RESULT1507, object CATCH_TAG1506, object B988, object A987)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1508'
    stloc CATCH_TAG1506
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1508'
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
    stloc CATCH_RESULT1507
    leave CATCH_DONE1509
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1506
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1510
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1507
    leave CATCH_DONE1509
CATCH_RETHROW1510:
    pop
    rethrow
    }
CATCH_DONE1509:
    ldloc CATCH_RESULT1507
    stloc A987
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1511
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B988
    br DONE_VAL1512
SKIP_VAL1511:
    nop
    ldnull
    stloc B988
DONE_VAL1512:
    nop
    ldloc A987
    ldloc B988
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_MV_985:
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
    .locals init (object BLOCK_RESULT_NIL_980, object UWP_V631502, object UWP_V621501, object UWP_V611500, object UWP_V601499, object UWP_V591498, object UWP_V581497, object UWP_V571496, object UWP_V561495, object UWP_V551494, object UWP_V541493, object UWP_V531492, object UWP_V521491, object UWP_V511490, object UWP_V501489, object UWP_V491488, object UWP_V481487, object UWP_V471486, object UWP_V461485, object UWP_V451484, object UWP_V441483, object UWP_V431482, object UWP_V421481, object UWP_V411480, object UWP_V401479, object UWP_V391478, object UWP_V381477, object UWP_V371476, object UWP_V361475, object UWP_V351474, object UWP_V341473, object UWP_V331472, object UWP_V321471, object UWP_V311470, object UWP_V301469, object UWP_V291468, object UWP_V281467, object UWP_V271466, object UWP_V261465, object UWP_V251464, object UWP_V241463, object UWP_V231462, object UWP_V221461, object UWP_V211460, object UWP_V201459, object UWP_V191458, object UWP_V181457, object UWP_V171456, object UWP_V161455, object UWP_V151454, object UWP_V141453, object UWP_V131452, object UWP_V121451, object UWP_V111450, object UWP_V101449, object UWP_V91448, object UWP_V81447, object UWP_V71446, object UWP_V61445, object UWP_V51444, object UWP_V41443, object UWP_V31442, object UWP_V21441, object UWP_V11440, object UWP_COUNT1439, object UWP_RESULT1438, object B982, object A981)
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
    stloc BLOCK_RESULT_NIL_980
    leave BLOCK_END_NIL_979
    stloc UWP_RESULT1438
    leave DONE1503
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1439
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11440
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21441
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31442
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41443
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51444
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61445
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71446
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81447
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91448
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101449
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111450
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121451
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131452
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141453
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151454
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161455
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171456
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181457
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191458
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201459
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211460
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221461
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231462
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241463
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251464
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261465
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271466
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281467
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291468
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301469
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311470
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321471
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331472
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341473
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351474
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361475
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371476
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381477
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391478
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401479
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411480
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421481
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431482
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441483
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451484
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461485
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471486
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481487
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491488
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501489
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511490
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521491
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531492
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541493
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551494
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561495
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571496
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581497
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591498
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601499
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611500
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621501
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631502
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1439
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11440
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21441
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31442
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41443
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51444
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61445
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71446
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81447
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91448
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101449
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111450
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121451
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131452
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141453
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151454
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161455
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171456
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181457
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191458
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201459
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211460
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221461
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231462
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241463
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251464
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261465
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271466
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281467
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291468
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301469
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311470
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321471
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331472
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341473
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351474
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361475
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371476
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381477
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391478
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401479
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411480
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421481
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431482
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441483
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451484
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461485
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471486
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481487
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491488
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501489
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511490
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521491
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531492
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541493
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551494
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561495
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571496
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581497
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591498
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601499
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611500
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621501
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631502
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1503:
    ldloc UWP_RESULT1438
    stloc BLOCK_RESULT_NIL_980
BLOCK_END_NIL_979:
    nop
    ldloc BLOCK_RESULT_NIL_980
    stloc A981
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1504
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B982
    br DONE_VAL1505
SKIP_VAL1504:
    nop
    ldnull
    stloc B982
DONE_VAL1505:
    nop
    ldloc A981
    ldloc B982
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_RETURN_FROM_MV_977:
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
    .locals init (object UWP_V631434, object UWP_V621433, object UWP_V611432, object UWP_V601431, object UWP_V591430, object UWP_V581429, object UWP_V571428, object UWP_V561427, object UWP_V551426, object UWP_V541425, object UWP_V531424, object UWP_V521423, object UWP_V511422, object UWP_V501421, object UWP_V491420, object UWP_V481419, object UWP_V471418, object UWP_V461417, object UWP_V451416, object UWP_V441415, object UWP_V431414, object UWP_V421413, object UWP_V411412, object UWP_V401411, object UWP_V391410, object UWP_V381409, object UWP_V371408, object UWP_V361407, object UWP_V351406, object UWP_V341405, object UWP_V331404, object UWP_V321403, object UWP_V311402, object UWP_V301401, object UWP_V291400, object UWP_V281399, object UWP_V271398, object UWP_V261397, object UWP_V251396, object UWP_V241395, object UWP_V231394, object UWP_V221393, object UWP_V211392, object UWP_V201391, object UWP_V191390, object UWP_V181389, object UWP_V171388, object UWP_V161387, object UWP_V151386, object UWP_V141385, object UWP_V131384, object UWP_V121383, object UWP_V111382, object UWP_V101381, object UWP_V91380, object UWP_V81379, object UWP_V71378, object UWP_V61377, object UWP_V51376, object UWP_V41375, object UWP_V31374, object UWP_V21373, object UWP_V11372, object UWP_COUNT1371, object UWP_RESULT1370, object B974, object A973)
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
    stloc UWP_RESULT1370
    leave DONE1435
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1371
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11372
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21373
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31374
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41375
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51376
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61377
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71378
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81379
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91380
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101381
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111382
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121383
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131384
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141385
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151386
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161387
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171388
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181389
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191390
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201391
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211392
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221393
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231394
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241395
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251396
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261397
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271398
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281399
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291400
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301401
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311402
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321403
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331404
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341405
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351406
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361407
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371408
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381409
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391410
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401411
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411412
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421413
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431414
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441415
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451416
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461417
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471418
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481419
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491420
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501421
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511422
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521423
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531424
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541425
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551426
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561427
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571428
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581429
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591430
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601431
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611432
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621433
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631434
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1371
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11372
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21373
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31374
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41375
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51376
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61377
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71378
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81379
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91380
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101381
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111382
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121383
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131384
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141385
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151386
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161387
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171388
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181389
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191390
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201391
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211392
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221393
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231394
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241395
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251396
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261397
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271398
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281399
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291400
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301401
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311402
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321403
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331404
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341405
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351406
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361407
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371408
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381409
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391410
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401411
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411412
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421413
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431414
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441415
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451416
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461417
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471418
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481419
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491420
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501421
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511422
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521423
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531424
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541425
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551426
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561427
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571428
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581429
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591430
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601431
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611432
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621433
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631434
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1435:
    ldloc UWP_RESULT1370
    stloc A973
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1436
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B974
    br DONE_VAL1437
SKIP_VAL1436:
    nop
    ldnull
    stloc B974
DONE_VAL1437:
    nop
    ldloc A973
    ldloc B974
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_MV_971:
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
    .locals init (object MVC_LIST1369, object MVC_FN1368)
    newobj instance void L_1013::'.ctor'()
    stloc MVC_FN1368
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1369
    ldloc MVC_LIST1369
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
    ldloc MVC_LIST1369
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
    ldloc MVC_LIST1369
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1368
    ldloc MVC_LIST1369
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_REST_965:
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
    .locals init (object MVC_LIST1367, object MVC_FN1366)
    newobj instance void L_1012::'.ctor'()
    stloc MVC_FN1366
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1367
    ldloc MVC_LIST1367
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
    ldloc MVC_LIST1367
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
    ldloc MVC_LIST1367
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1366
    ldloc MVC_LIST1367
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_954:
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
    .locals init (object TEMP1365, object MV_PROG1_V631364, object MV_PROG1_V621363, object MV_PROG1_V611362, object MV_PROG1_V601361, object MV_PROG1_V591360, object MV_PROG1_V581359, object MV_PROG1_V571358, object MV_PROG1_V561357, object MV_PROG1_V551356, object MV_PROG1_V541355, object MV_PROG1_V531354, object MV_PROG1_V521353, object MV_PROG1_V511352, object MV_PROG1_V501351, object MV_PROG1_V491350, object MV_PROG1_V481349, object MV_PROG1_V471348, object MV_PROG1_V461347, object MV_PROG1_V451346, object MV_PROG1_V441345, object MV_PROG1_V431344, object MV_PROG1_V421343, object MV_PROG1_V411342, object MV_PROG1_V401341, object MV_PROG1_V391340, object MV_PROG1_V381339, object MV_PROG1_V371338, object MV_PROG1_V361337, object MV_PROG1_V351336, object MV_PROG1_V341335, object MV_PROG1_V331334, object MV_PROG1_V321333, object MV_PROG1_V311332, object MV_PROG1_V301331, object MV_PROG1_V291330, object MV_PROG1_V281329, object MV_PROG1_V271328, object MV_PROG1_V261327, object MV_PROG1_V251326, object MV_PROG1_V241325, object MV_PROG1_V231324, object MV_PROG1_V221323, object MV_PROG1_V211322, object MV_PROG1_V201321, object MV_PROG1_V191320, object MV_PROG1_V181319, object MV_PROG1_V171318, object MV_PROG1_V161317, object MV_PROG1_V151316, object MV_PROG1_V141315, object MV_PROG1_V131314, object MV_PROG1_V121313, object MV_PROG1_V111312, object MV_PROG1_V101311, object MV_PROG1_V91310, object MV_PROG1_V81309, object MV_PROG1_V71308, object MV_PROG1_V61307, object MV_PROG1_V51306, object MV_PROG1_V41305, object MV_PROG1_V31304, object MV_PROG1_V21303, object MV_PROG1_V11302, object MV_PROG1_COUNT1301, object MV_PROG1_RES1300, object X951)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X951
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_RES1300
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT1301
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V11302
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V21303
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V31304
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V41305
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V51306
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V61307
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V71308
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V81309
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V91310
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V101311
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V111312
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V121313
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V131314
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V141315
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V151316
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V161317
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V171318
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V181319
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V191320
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V201321
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V211322
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V221323
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V231324
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V241325
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V251326
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V261327
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V271328
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V281329
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V291330
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V301331
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V311332
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V321333
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V331334
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V341335
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V351336
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V361337
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V371338
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V381339
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V391340
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V401341
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V411342
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V421343
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V431344
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V441345
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V451346
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V461347
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V471348
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V481349
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V491350
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V501351
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V511352
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V521353
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V531354
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V541355
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V551356
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V561357
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V571358
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V581359
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V591360
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V601361
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V611362
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V621363
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V631364
    ldloc X951
    ldc.i4 10
    box int32
    stloc TEMP1365
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1365
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1365
    pop
    ldloc MV_PROG1_COUNT1301
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V11302
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V21303
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V31304
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V41305
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V51306
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V61307
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V71308
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V81309
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V91310
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V101311
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V111312
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V121313
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V131314
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V141315
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V151316
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V161317
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V171318
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V181319
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V191320
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V201321
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V211322
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V221323
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V231324
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V241325
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V251326
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V261327
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V271328
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V281329
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V291330
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V301331
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V311332
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V321333
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V331334
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V341335
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V351336
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V361337
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V371338
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V381339
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V391340
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V401341
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V411342
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V421343
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V431344
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V441345
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V451346
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V461347
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V471348
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V481349
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V491350
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V501351
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V511352
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V521353
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V531354
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V541355
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V551356
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V561357
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V571358
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V581359
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V591360
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V601361
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V611362
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V621363
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V631364
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES1300
    ldloc X951
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_PROG1_949:
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
    .locals init (object B946, object A945)
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
    stloc A945
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1298
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B946
    br DONE_VAL1299
SKIP_VAL1298:
    nop
    ldnull
    stloc B946
DONE_VAL1299:
    nop
    ldloc A945
    ldloc B946
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_NORMAL_943:
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
    .locals init (object B940, object A939)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 0
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A939
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1296
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B940
    br DONE_VAL1297
SKIP_VAL1296:
    nop
    ldnull
    stloc B940
DONE_VAL1297:
    nop
    ldloc A939
    ldloc B940
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_0_937:
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
    .locals init (object C934, object B933, object A932)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A932
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1292
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B933
    br DONE_VAL1293
SKIP_VAL1292:
    nop
    ldnull
    stloc B933
DONE_VAL1293:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1294
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C934
    br DONE_VAL1295
SKIP_VAL1294:
    nop
    ldnull
    stloc C934
DONE_VAL1295:
    nop
    ldloc A932
    ldloc B933
    ldloc C934
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_FROM_2_930:
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
    .locals init (object A927)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A927
    ldloc A927
    ret
BLOCK_END_TEST_MV_BIND_1_FROM_2_925:
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
    .locals init (object C922, object B921, object A920)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A920
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1288
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B921
    br DONE_VAL1289
SKIP_VAL1288:
    nop
    ldnull
    stloc B921
DONE_VAL1289:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1290
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C922
    br DONE_VAL1291
SKIP_VAL1290:
    nop
    ldnull
    stloc C922
DONE_VAL1291:
    nop
    ldloc A920
    ldloc B921
    ldloc C922
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_918:
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
    .locals init (object B915, object A914)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A914
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1286
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B915
    br DONE_VAL1287
SKIP_VAL1286:
    nop
    ldnull
    stloc B915
DONE_VAL1287:
    nop
    ldloc A914
    ldloc B915
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_2_912:
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
    brtrue TRUE1271
    ldnull
    br END1272
TRUE1271:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
END1272:
    nop
    ldnull
    ceq
    brtrue ELSE1285
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE1285:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1274
    ldnull
    br END1275
TRUE1274:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
END1275:
    nop
    ldnull
    ceq
    brtrue ELSE1284
    ldc.i4 10
    box int32
    ret
ELSE1284:
    nop
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1276
    ldnull
    br END1277
TRUE1276:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
END1277:
    nop
    ldnull
    ceq
    brtrue ELSE1283
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1283:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1278
    ldnull
    br END1279
TRUE1278:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1273'
END1279:
    nop
    ldnull
    ceq
    brtrue ELSE1282
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
ELSE1282:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1280'
    ldnull
    ceq
    brtrue ELSE1281
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
ELSE1281:
    nop
    ldnull
    ret
BLOCK_END_MV_PRODUCER_908:
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

.class public auto ansi beforefieldinit L_1012
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
    callvirt instance object L_1012::'InvokeBody'(object, object, object, object, object, object)
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

} // end of class L_1012

.class public auto ansi beforefieldinit L_1013
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
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
    callvirt instance object L_1013::'InvokeBody'(object)
    ret
}

} // end of class L_1013

