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
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1524'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1517'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1510'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1282'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1275'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1524'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1517'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1510'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1282'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
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
    .locals init (object TEMP1531, object RES1012, object LIST10081009, object RESULTS1007)
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
    stloc RESULTS1007
    ldloc RESULTS1007
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST10081009
TAG_LOOP_1010:
    nop
    ldloc LIST10081009
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1529
    ldnull
    br END1530
TRUE1529:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
END1530:
    nop
    ldnull
    ceq
    brtrue ELSE1532
    leave TAG_END_1011
    br END1533
ELSE1532:
    nop
    ldnull
END1533:
    nop
    pop
    ldloc LIST10081009
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES1012
    ldloc LIST10081009
    ldloc LIST10081009
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP1531
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1531
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1531
    pop
    ldloc RES1012
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_1010
    pop
TAG_END_1011:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_1005:
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
    .locals init (object CATCH_RESULT1523, object CATCH_TAG1522, object B1002, object A1001)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1524'
    stloc CATCH_TAG1522
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1524'
    ldc.i4 42
    box int32
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1523
    leave CATCH_DONE1525
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1522
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1526
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1523
    leave CATCH_DONE1525
CATCH_RETHROW1526:
    pop
    rethrow
    }
CATCH_DONE1525:
    ldloc CATCH_RESULT1523
    stloc A1001
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1527
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B1002
    br DONE_VAL1528
SKIP_VAL1527:
    nop
    ldnull
    stloc B1002
DONE_VAL1528:
    nop
    ldloc A1001
    ldloc B1002
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_1_MV_999:
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
    .locals init (object CATCH_RESULT1516, object CATCH_TAG1515, object B996, object A995)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1517'
    stloc CATCH_TAG1515
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1517'
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1516
    leave CATCH_DONE1518
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1515
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1519
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1516
    leave CATCH_DONE1518
CATCH_RETHROW1519:
    pop
    rethrow
    }
CATCH_DONE1518:
    ldloc CATCH_RESULT1516
    stloc A995
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1520
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B996
    br DONE_VAL1521
SKIP_VAL1520:
    nop
    ldnull
    stloc B996
DONE_VAL1521:
    nop
    ldloc A995
    ldloc B996
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_0_MV_993:
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
    .locals init (object CATCH_RESULT1509, object CATCH_TAG1508, object B990, object A989)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1510'
    stloc CATCH_TAG1508
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1510'
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
    stloc CATCH_RESULT1509
    leave CATCH_DONE1511
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1508
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1512
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1509
    leave CATCH_DONE1511
CATCH_RETHROW1512:
    pop
    rethrow
    }
CATCH_DONE1511:
    ldloc CATCH_RESULT1509
    stloc A989
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1513
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B990
    br DONE_VAL1514
SKIP_VAL1513:
    nop
    ldnull
    stloc B990
DONE_VAL1514:
    nop
    ldloc A989
    ldloc B990
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_MV_987:
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
    .locals init (object BLOCK_RESULT_NIL_982, object UWP_V631504, object UWP_V621503, object UWP_V611502, object UWP_V601501, object UWP_V591500, object UWP_V581499, object UWP_V571498, object UWP_V561497, object UWP_V551496, object UWP_V541495, object UWP_V531494, object UWP_V521493, object UWP_V511492, object UWP_V501491, object UWP_V491490, object UWP_V481489, object UWP_V471488, object UWP_V461487, object UWP_V451486, object UWP_V441485, object UWP_V431484, object UWP_V421483, object UWP_V411482, object UWP_V401481, object UWP_V391480, object UWP_V381479, object UWP_V371478, object UWP_V361477, object UWP_V351476, object UWP_V341475, object UWP_V331474, object UWP_V321473, object UWP_V311472, object UWP_V301471, object UWP_V291470, object UWP_V281469, object UWP_V271468, object UWP_V261467, object UWP_V251466, object UWP_V241465, object UWP_V231464, object UWP_V221463, object UWP_V211462, object UWP_V201461, object UWP_V191460, object UWP_V181459, object UWP_V171458, object UWP_V161457, object UWP_V151456, object UWP_V141455, object UWP_V131454, object UWP_V121453, object UWP_V111452, object UWP_V101451, object UWP_V91450, object UWP_V81449, object UWP_V71448, object UWP_V61447, object UWP_V51446, object UWP_V41445, object UWP_V31444, object UWP_V21443, object UWP_V11442, object UWP_COUNT1441, object UWP_RESULT1440, object B984, object A983)
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
    stloc UWP_RESULT1440
    leave DONE1505
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1441
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11442
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21443
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31444
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41445
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51446
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61447
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71448
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81449
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91450
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101451
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111452
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121453
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131454
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141455
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151456
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161457
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171458
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181459
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191460
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201461
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211462
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221463
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231464
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241465
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251466
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261467
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271468
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281469
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291470
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301471
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311472
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321473
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331474
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341475
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351476
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361477
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371478
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381479
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391480
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401481
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411482
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421483
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431484
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441485
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451486
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461487
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471488
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481489
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491490
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501491
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511492
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521493
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531494
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541495
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551496
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561497
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571498
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581499
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591500
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601501
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611502
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621503
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631504
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1441
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11442
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21443
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31444
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41445
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51446
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61447
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71448
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81449
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91450
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101451
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111452
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121453
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131454
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141455
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151456
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161457
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171458
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181459
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191460
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201461
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211462
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221463
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231464
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241465
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251466
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261467
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271468
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281469
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291470
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301471
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311472
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321473
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331474
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341475
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351476
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361477
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371478
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381479
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391480
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401481
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411482
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421483
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431484
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441485
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451486
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461487
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471488
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481489
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491490
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501491
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511492
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521493
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531494
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541495
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551496
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561497
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571498
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581499
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591500
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601501
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611502
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621503
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631504
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1505:
    ldloc UWP_RESULT1440
    stloc BLOCK_RESULT_NIL_982
BLOCK_END_NIL_981:
    nop
    ldloc BLOCK_RESULT_NIL_982
    stloc A983
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1506
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B984
    br DONE_VAL1507
SKIP_VAL1506:
    nop
    ldnull
    stloc B984
DONE_VAL1507:
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
    .locals init (object UWP_V631436, object UWP_V621435, object UWP_V611434, object UWP_V601433, object UWP_V591432, object UWP_V581431, object UWP_V571430, object UWP_V561429, object UWP_V551428, object UWP_V541427, object UWP_V531426, object UWP_V521425, object UWP_V511424, object UWP_V501423, object UWP_V491422, object UWP_V481421, object UWP_V471420, object UWP_V461419, object UWP_V451418, object UWP_V441417, object UWP_V431416, object UWP_V421415, object UWP_V411414, object UWP_V401413, object UWP_V391412, object UWP_V381411, object UWP_V371410, object UWP_V361409, object UWP_V351408, object UWP_V341407, object UWP_V331406, object UWP_V321405, object UWP_V311404, object UWP_V301403, object UWP_V291402, object UWP_V281401, object UWP_V271400, object UWP_V261399, object UWP_V251398, object UWP_V241397, object UWP_V231396, object UWP_V221395, object UWP_V211394, object UWP_V201393, object UWP_V191392, object UWP_V181391, object UWP_V171390, object UWP_V161389, object UWP_V151388, object UWP_V141387, object UWP_V131386, object UWP_V121385, object UWP_V111384, object UWP_V101383, object UWP_V91382, object UWP_V81381, object UWP_V71380, object UWP_V61379, object UWP_V51378, object UWP_V41377, object UWP_V31376, object UWP_V21375, object UWP_V11374, object UWP_COUNT1373, object UWP_RESULT1372, object B976, object A975)
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
    stloc UWP_RESULT1372
    leave DONE1437
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1373
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11374
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21375
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31376
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41377
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51378
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61379
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71380
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81381
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91382
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101383
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111384
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121385
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131386
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141387
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151388
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161389
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171390
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181391
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191392
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201393
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211394
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221395
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231396
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241397
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251398
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261399
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271400
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281401
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291402
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301403
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311404
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321405
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331406
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341407
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351408
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361409
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371410
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381411
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391412
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401413
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411414
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421415
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431416
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441417
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451418
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461419
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471420
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481421
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491422
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501423
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511424
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521425
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531426
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541427
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551428
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561429
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571430
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581431
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591432
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601433
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611434
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621435
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631436
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1373
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11374
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21375
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31376
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41377
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51378
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61379
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71380
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81381
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91382
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101383
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111384
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121385
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131386
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141387
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151388
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161389
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171390
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181391
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191392
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201393
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211394
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221395
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231396
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241397
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251398
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261399
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271400
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281401
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291402
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301403
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311404
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321405
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331406
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341407
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351408
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361409
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371410
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381411
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391412
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401413
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411414
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421415
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431416
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441417
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451418
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461419
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471420
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481421
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491422
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501423
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511424
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521425
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531426
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541427
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551428
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561429
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571430
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581431
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591432
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601433
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611434
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621435
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631436
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1437:
    ldloc UWP_RESULT1372
    stloc A975
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1438
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B976
    br DONE_VAL1439
SKIP_VAL1438:
    nop
    ldnull
    stloc B976
DONE_VAL1439:
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
    .locals init (object MVC_LIST1371, object MVC_FN1370)
    newobj instance void L_1015::'.ctor'()
    stloc MVC_FN1370
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1371
    ldloc MVC_LIST1371
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
    ldloc MVC_LIST1371
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
    ldloc MVC_LIST1371
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1370
    ldloc MVC_LIST1371
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
    .locals init (object MVC_LIST1369, object MVC_FN1368)
    newobj instance void L_1014::'.ctor'()
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
    .locals init (object TEMP1367, object MV_PROG1_V631366, object MV_PROG1_V621365, object MV_PROG1_V611364, object MV_PROG1_V601363, object MV_PROG1_V591362, object MV_PROG1_V581361, object MV_PROG1_V571360, object MV_PROG1_V561359, object MV_PROG1_V551358, object MV_PROG1_V541357, object MV_PROG1_V531356, object MV_PROG1_V521355, object MV_PROG1_V511354, object MV_PROG1_V501353, object MV_PROG1_V491352, object MV_PROG1_V481351, object MV_PROG1_V471350, object MV_PROG1_V461349, object MV_PROG1_V451348, object MV_PROG1_V441347, object MV_PROG1_V431346, object MV_PROG1_V421345, object MV_PROG1_V411344, object MV_PROG1_V401343, object MV_PROG1_V391342, object MV_PROG1_V381341, object MV_PROG1_V371340, object MV_PROG1_V361339, object MV_PROG1_V351338, object MV_PROG1_V341337, object MV_PROG1_V331336, object MV_PROG1_V321335, object MV_PROG1_V311334, object MV_PROG1_V301333, object MV_PROG1_V291332, object MV_PROG1_V281331, object MV_PROG1_V271330, object MV_PROG1_V261329, object MV_PROG1_V251328, object MV_PROG1_V241327, object MV_PROG1_V231326, object MV_PROG1_V221325, object MV_PROG1_V211324, object MV_PROG1_V201323, object MV_PROG1_V191322, object MV_PROG1_V181321, object MV_PROG1_V171320, object MV_PROG1_V161319, object MV_PROG1_V151318, object MV_PROG1_V141317, object MV_PROG1_V131316, object MV_PROG1_V121315, object MV_PROG1_V111314, object MV_PROG1_V101313, object MV_PROG1_V91312, object MV_PROG1_V81311, object MV_PROG1_V71310, object MV_PROG1_V61309, object MV_PROG1_V51308, object MV_PROG1_V41307, object MV_PROG1_V31306, object MV_PROG1_V21305, object MV_PROG1_V11304, object MV_PROG1_COUNT1303, object MV_PROG1_RES1302, object X953)
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
    stloc MV_PROG1_RES1302
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT1303
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V11304
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V21305
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V31306
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V41307
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V51308
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V61309
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V71310
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V81311
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V91312
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V101313
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V111314
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V121315
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V131316
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V141317
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V151318
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V161319
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V171320
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V181321
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V191322
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V201323
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V211324
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V221325
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V231326
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V241327
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V251328
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V261329
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V271330
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V281331
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V291332
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V301333
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V311334
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V321335
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V331336
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V341337
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V351338
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V361339
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V371340
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V381341
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V391342
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V401343
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V411344
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V421345
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V431346
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V441347
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V451348
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V461349
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V471350
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V481351
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V491352
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V501353
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V511354
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V521355
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V531356
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V541357
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V551358
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V561359
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V571360
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V581361
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V591362
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V601363
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V611364
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V621365
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V631366
    ldloc X953
    ldc.i4 10
    box int32
    stloc TEMP1367
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1367
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1367
    pop
    ldloc MV_PROG1_COUNT1303
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V11304
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V21305
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V31306
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V41307
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V51308
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V61309
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V71310
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V81311
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V91312
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V101313
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V111314
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V121315
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V131316
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V141317
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V151318
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V161319
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V171320
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V181321
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V191322
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V201323
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V211324
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V221325
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V231326
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V241327
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V251328
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V261329
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V271330
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V281331
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V291332
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V301333
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V311334
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V321335
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V331336
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V341337
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V351338
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V361339
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V371340
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V381341
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V391342
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V401343
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V411344
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V421345
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V431346
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V441347
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V451348
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V461349
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V471350
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V481351
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V491352
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V501353
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V511354
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V521355
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V531356
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V541357
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V551358
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V561359
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V571360
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V581361
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V591362
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V601363
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V611364
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V621365
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V631366
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES1302
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
    ble SKIP_VAL1300
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B948
    br DONE_VAL1301
SKIP_VAL1300:
    nop
    ldnull
    stloc B948
DONE_VAL1301:
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
    ble SKIP_VAL1298
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B942
    br DONE_VAL1299
SKIP_VAL1298:
    nop
    ldnull
    stloc B942
DONE_VAL1299:
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
    ble SKIP_VAL1294
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B935
    br DONE_VAL1295
SKIP_VAL1294:
    nop
    ldnull
    stloc B935
DONE_VAL1295:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1296
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C936
    br DONE_VAL1297
SKIP_VAL1296:
    nop
    ldnull
    stloc C936
DONE_VAL1297:
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
    ble SKIP_VAL1290
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B923
    br DONE_VAL1291
SKIP_VAL1290:
    nop
    ldnull
    stloc B923
DONE_VAL1291:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1292
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C924
    br DONE_VAL1293
SKIP_VAL1292:
    nop
    ldnull
    stloc C924
DONE_VAL1293:
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
    ble SKIP_VAL1288
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B917
    br DONE_VAL1289
SKIP_VAL1288:
    nop
    ldnull
    stloc B917
DONE_VAL1289:
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
    brtrue TRUE1273
    ldnull
    br END1274
TRUE1273:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
END1274:
    nop
    ldnull
    ceq
    brtrue ELSE1287
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE1287:
    nop
    ldarg 0
    ldc.i4 1
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
END1277:
    nop
    ldnull
    ceq
    brtrue ELSE1286
    ldc.i4 10
    box int32
    ret
ELSE1286:
    nop
    ldarg 0
    ldc.i4 2
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
END1279:
    nop
    ldnull
    ceq
    brtrue ELSE1285
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1285:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1280
    ldnull
    br END1281
TRUE1280:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1275'
END1281:
    nop
    ldnull
    ceq
    brtrue ELSE1284
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
ELSE1284:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1282'
    ldnull
    ceq
    brtrue ELSE1283
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
ELSE1283:
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

.class public auto ansi beforefieldinit L_1014
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
    callvirt instance object L_1014::'InvokeBody'(object, object, object, object, object, object)
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

} // end of class L_1014

.class public auto ansi beforefieldinit L_1015
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
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
    callvirt instance object L_1015::'InvokeBody'(object)
    ret
}

} // end of class L_1015

