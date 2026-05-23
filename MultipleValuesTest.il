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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1530'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1523'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1516'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1288'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1281'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1530'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1523'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1516'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1288'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
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
    .locals init (object TEMP1537, object RES1018, object LIST10141015, object RESULTS1013)
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
    stloc RESULTS1013
    ldloc RESULTS1013
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST10141015
TAG_LOOP_1016:
    nop
    ldloc LIST10141015
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1535
    ldnull
    br END1536
TRUE1535:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
END1536:
    nop
    ldnull
    ceq
    brtrue ELSE1538
    leave TAG_END_1017
    br END1539
ELSE1538:
    nop
    ldnull
END1539:
    nop
    pop
    ldloc LIST10141015
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES1018
    ldloc LIST10141015
    ldloc LIST10141015
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP1537
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1537
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1537
    pop
    ldloc RES1018
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_1016
    pop
TAG_END_1017:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_1011:
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
    .locals init (object CATCH_RESULT1529, object CATCH_TAG1528, object B1008, object A1007)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1530'
    stloc CATCH_TAG1528
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1530'
    ldc.i4 42
    box int32
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1529
    leave CATCH_DONE1531
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1528
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1532
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1529
    leave CATCH_DONE1531
CATCH_RETHROW1532:
    pop
    rethrow
    }
CATCH_DONE1531:
    ldloc CATCH_RESULT1529
    stloc A1007
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1533
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B1008
    br DONE_VAL1534
SKIP_VAL1533:
    nop
    ldnull
    stloc B1008
DONE_VAL1534:
    nop
    ldloc A1007
    ldloc B1008
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_1_MV_1005:
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
    .locals init (object CATCH_RESULT1522, object CATCH_TAG1521, object B1002, object A1001)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1523'
    stloc CATCH_TAG1521
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1523'
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT1522
    leave CATCH_DONE1524
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1521
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1525
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1522
    leave CATCH_DONE1524
CATCH_RETHROW1525:
    pop
    rethrow
    }
CATCH_DONE1524:
    ldloc CATCH_RESULT1522
    stloc A1001
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1526
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B1002
    br DONE_VAL1527
SKIP_VAL1526:
    nop
    ldnull
    stloc B1002
DONE_VAL1527:
    nop
    ldloc A1001
    ldloc B1002
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_0_MV_999:
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
    .locals init (object CATCH_RESULT1515, object CATCH_TAG1514, object B996, object A995)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1516'
    stloc CATCH_TAG1514
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1516'
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
    stloc CATCH_RESULT1515
    leave CATCH_DONE1517
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1514
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1518
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1515
    leave CATCH_DONE1517
CATCH_RETHROW1518:
    pop
    rethrow
    }
CATCH_DONE1517:
    ldloc CATCH_RESULT1515
    stloc A995
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1519
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B996
    br DONE_VAL1520
SKIP_VAL1519:
    nop
    ldnull
    stloc B996
DONE_VAL1520:
    nop
    ldloc A995
    ldloc B996
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_MV_993:
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
    .locals init (object UWP_V631510, object UWP_V621509, object UWP_V611508, object UWP_V601507, object UWP_V591506, object UWP_V581505, object UWP_V571504, object UWP_V561503, object UWP_V551502, object UWP_V541501, object UWP_V531500, object UWP_V521499, object UWP_V511498, object UWP_V501497, object UWP_V491496, object UWP_V481495, object UWP_V471494, object UWP_V461493, object UWP_V451492, object UWP_V441491, object UWP_V431490, object UWP_V421489, object UWP_V411488, object UWP_V401487, object UWP_V391486, object UWP_V381485, object UWP_V371484, object UWP_V361483, object UWP_V351482, object UWP_V341481, object UWP_V331480, object UWP_V321479, object UWP_V311478, object UWP_V301477, object UWP_V291476, object UWP_V281475, object UWP_V271474, object UWP_V261473, object UWP_V251472, object UWP_V241471, object UWP_V231470, object UWP_V221469, object UWP_V211468, object UWP_V201467, object UWP_V191466, object UWP_V181465, object UWP_V171464, object UWP_V161463, object UWP_V151462, object UWP_V141461, object UWP_V131460, object UWP_V121459, object UWP_V111458, object UWP_V101457, object UWP_V91456, object UWP_V81455, object UWP_V71454, object UWP_V61453, object UWP_V51452, object UWP_V41451, object UWP_V31450, object UWP_V21449, object UWP_V11448, object UWP_COUNT1447, object UWP_RESULT1446, object BLOCK_RESULT_NIL_988, object B990, object A989)
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
    stloc BLOCK_RESULT_NIL_988
    leave BLOCK_END_NIL_987
    stloc UWP_RESULT1446
    leave DONE1511
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1447
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11448
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21449
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31450
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41451
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51452
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61453
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71454
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81455
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91456
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101457
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111458
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121459
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131460
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141461
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151462
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161463
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171464
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181465
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191466
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201467
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211468
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221469
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231470
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241471
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251472
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261473
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271474
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281475
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291476
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301477
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311478
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321479
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331480
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341481
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351482
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361483
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371484
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381485
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391486
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401487
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411488
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421489
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431490
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441491
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451492
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461493
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471494
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481495
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491496
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501497
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511498
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521499
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531500
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541501
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551502
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561503
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571504
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581505
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591506
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601507
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611508
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621509
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631510
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1447
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11448
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21449
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31450
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41451
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51452
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61453
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71454
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81455
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91456
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101457
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111458
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121459
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131460
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141461
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151462
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161463
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171464
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181465
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191466
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201467
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211468
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221469
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231470
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241471
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251472
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261473
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271474
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281475
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291476
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301477
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311478
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321479
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331480
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341481
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351482
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361483
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371484
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381485
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391486
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401487
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411488
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421489
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431490
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441491
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451492
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461493
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471494
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481495
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491496
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501497
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511498
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521499
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531500
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541501
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551502
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561503
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571504
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581505
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591506
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601507
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611508
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621509
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631510
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1511:
    ldloc UWP_RESULT1446
    stloc BLOCK_RESULT_NIL_988
BLOCK_END_NIL_987:
    nop
    ldloc BLOCK_RESULT_NIL_988
    stloc A989
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1512
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B990
    br DONE_VAL1513
SKIP_VAL1512:
    nop
    ldnull
    stloc B990
DONE_VAL1513:
    nop
    ldloc A989
    ldloc B990
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_RETURN_FROM_MV_985:
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
    .locals init (object UWP_V631442, object UWP_V621441, object UWP_V611440, object UWP_V601439, object UWP_V591438, object UWP_V581437, object UWP_V571436, object UWP_V561435, object UWP_V551434, object UWP_V541433, object UWP_V531432, object UWP_V521431, object UWP_V511430, object UWP_V501429, object UWP_V491428, object UWP_V481427, object UWP_V471426, object UWP_V461425, object UWP_V451424, object UWP_V441423, object UWP_V431422, object UWP_V421421, object UWP_V411420, object UWP_V401419, object UWP_V391418, object UWP_V381417, object UWP_V371416, object UWP_V361415, object UWP_V351414, object UWP_V341413, object UWP_V331412, object UWP_V321411, object UWP_V311410, object UWP_V301409, object UWP_V291408, object UWP_V281407, object UWP_V271406, object UWP_V261405, object UWP_V251404, object UWP_V241403, object UWP_V231402, object UWP_V221401, object UWP_V211400, object UWP_V201399, object UWP_V191398, object UWP_V181397, object UWP_V171396, object UWP_V161395, object UWP_V151394, object UWP_V141393, object UWP_V131392, object UWP_V121391, object UWP_V111390, object UWP_V101389, object UWP_V91388, object UWP_V81387, object UWP_V71386, object UWP_V61385, object UWP_V51384, object UWP_V41383, object UWP_V31382, object UWP_V21381, object UWP_V11380, object UWP_COUNT1379, object UWP_RESULT1378, object B982, object A981)
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
    stloc UWP_RESULT1378
    leave DONE1443
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT1379
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V11380
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V21381
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V31382
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V41383
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V51384
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V61385
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V71386
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V81387
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V91388
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V101389
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V111390
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V121391
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V131392
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V141393
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V151394
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V161395
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V171396
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V181397
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V191398
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V201399
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V211400
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V221401
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V231402
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V241403
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V251404
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V261405
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V271406
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V281407
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V291408
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V301409
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V311410
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V321411
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V331412
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V341413
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V351414
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V361415
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V371416
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V381417
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V391418
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V401419
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V411420
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V421421
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V431422
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V441423
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V451424
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V461425
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V471426
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V481427
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V491428
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V501429
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V511430
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V521431
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V531432
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V541433
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V551434
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V561435
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V571436
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V581437
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V591438
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V601439
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V611440
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V621441
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V631442
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT1379
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V11380
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V21381
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V31382
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V41383
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V51384
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V61385
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V71386
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V81387
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V91388
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V101389
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V111390
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V121391
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V131392
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V141393
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V151394
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V161395
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V171396
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V181397
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V191398
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V201399
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V211400
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V221401
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V231402
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V241403
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V251404
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V261405
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V271406
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V281407
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V291408
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V301409
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V311410
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V321411
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V331412
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V341413
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V351414
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V361415
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V371416
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V381417
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V391418
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V401419
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V411420
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V421421
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V431422
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V441423
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V451424
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V461425
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V471426
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V481427
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V491428
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V501429
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V511430
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V521431
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V531432
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V541433
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V551434
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V561435
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V571436
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V581437
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V591438
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V601439
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V611440
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V621441
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V631442
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE1443:
    ldloc UWP_RESULT1378
    stloc A981
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1444
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B982
    br DONE_VAL1445
SKIP_VAL1444:
    nop
    ldnull
    stloc B982
DONE_VAL1445:
    nop
    ldloc A981
    ldloc B982
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_MV_979:
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
    .locals init (object MVC_LIST1377, object MVC_FN1376)
    newobj instance void L_1021::'.ctor'()
    stloc MVC_FN1376
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1377
    ldloc MVC_LIST1377
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
    ldloc MVC_LIST1377
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
    ldloc MVC_LIST1377
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1376
    ldloc MVC_LIST1377
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_REST_973:
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
    .locals init (object MVC_LIST1375, object MVC_FN1374)
    newobj instance void L_1020::'.ctor'()
    stloc MVC_FN1374
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST1375
    ldloc MVC_LIST1375
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
    ldloc MVC_LIST1375
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
    ldloc MVC_LIST1375
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN1374
    ldloc MVC_LIST1375
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_962:
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
    .locals init (object TEMP1373, object MV_PROG1_V631372, object MV_PROG1_V621371, object MV_PROG1_V611370, object MV_PROG1_V601369, object MV_PROG1_V591368, object MV_PROG1_V581367, object MV_PROG1_V571366, object MV_PROG1_V561365, object MV_PROG1_V551364, object MV_PROG1_V541363, object MV_PROG1_V531362, object MV_PROG1_V521361, object MV_PROG1_V511360, object MV_PROG1_V501359, object MV_PROG1_V491358, object MV_PROG1_V481357, object MV_PROG1_V471356, object MV_PROG1_V461355, object MV_PROG1_V451354, object MV_PROG1_V441353, object MV_PROG1_V431352, object MV_PROG1_V421351, object MV_PROG1_V411350, object MV_PROG1_V401349, object MV_PROG1_V391348, object MV_PROG1_V381347, object MV_PROG1_V371346, object MV_PROG1_V361345, object MV_PROG1_V351344, object MV_PROG1_V341343, object MV_PROG1_V331342, object MV_PROG1_V321341, object MV_PROG1_V311340, object MV_PROG1_V301339, object MV_PROG1_V291338, object MV_PROG1_V281337, object MV_PROG1_V271336, object MV_PROG1_V261335, object MV_PROG1_V251334, object MV_PROG1_V241333, object MV_PROG1_V231332, object MV_PROG1_V221331, object MV_PROG1_V211330, object MV_PROG1_V201329, object MV_PROG1_V191328, object MV_PROG1_V181327, object MV_PROG1_V171326, object MV_PROG1_V161325, object MV_PROG1_V151324, object MV_PROG1_V141323, object MV_PROG1_V131322, object MV_PROG1_V121321, object MV_PROG1_V111320, object MV_PROG1_V101319, object MV_PROG1_V91318, object MV_PROG1_V81317, object MV_PROG1_V71316, object MV_PROG1_V61315, object MV_PROG1_V51314, object MV_PROG1_V41313, object MV_PROG1_V31312, object MV_PROG1_V21311, object MV_PROG1_V11310, object MV_PROG1_COUNT1309, object MV_PROG1_RES1308, object X959)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X959
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_RES1308
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT1309
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V11310
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V21311
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V31312
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V41313
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V51314
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V61315
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V71316
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V81317
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V91318
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V101319
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V111320
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V121321
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V131322
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V141323
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V151324
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V161325
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V171326
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V181327
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V191328
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V201329
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V211330
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V221331
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V231332
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V241333
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V251334
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V261335
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V271336
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V281337
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V291338
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V301339
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V311340
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V321341
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V331342
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V341343
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V351344
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V361345
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V371346
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V381347
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V391348
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V401349
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V411350
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V421351
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V431352
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V441353
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V451354
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V461355
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V471356
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V481357
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V491358
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V501359
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V511360
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V521361
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V531362
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V541363
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V551364
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V561365
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V571366
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V581367
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V591368
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V601369
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V611370
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V621371
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V631372
    ldloc X959
    ldc.i4 10
    box int32
    stloc TEMP1373
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1373
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1373
    pop
    ldloc MV_PROG1_COUNT1309
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V11310
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V21311
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V31312
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V41313
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V51314
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V61315
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V71316
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V81317
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V91318
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V101319
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V111320
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V121321
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V131322
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V141323
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V151324
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V161325
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V171326
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V181327
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V191328
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V201329
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V211330
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V221331
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V231332
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V241333
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V251334
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V261335
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V271336
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V281337
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V291338
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V301339
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V311340
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V321341
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V331342
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V341343
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V351344
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V361345
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V371346
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V381347
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V391348
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V401349
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V411350
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V421351
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V431352
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V441353
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V451354
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V461355
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V471356
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V481357
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V491358
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V501359
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V511360
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V521361
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V531362
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V541363
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V551364
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V561365
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V571366
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V581367
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V591368
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V601369
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V611370
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V621371
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V631372
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES1308
    ldloc X959
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_PROG1_957:
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
    .locals init (object B954, object A953)
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
    stloc A953
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1306
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B954
    br DONE_VAL1307
SKIP_VAL1306:
    nop
    ldnull
    stloc B954
DONE_VAL1307:
    nop
    ldloc A953
    ldloc B954
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_NORMAL_951:
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
    .locals init (object B948, object A947)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 0
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A947
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1304
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B948
    br DONE_VAL1305
SKIP_VAL1304:
    nop
    ldnull
    stloc B948
DONE_VAL1305:
    nop
    ldloc A947
    ldloc B948
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_0_945:
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
    .locals init (object C942, object B941, object A940)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A940
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1300
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B941
    br DONE_VAL1301
SKIP_VAL1300:
    nop
    ldnull
    stloc B941
DONE_VAL1301:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1302
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C942
    br DONE_VAL1303
SKIP_VAL1302:
    nop
    ldnull
    stloc C942
DONE_VAL1303:
    nop
    ldloc A940
    ldloc B941
    ldloc C942
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_FROM_2_938:
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
    .locals init (object A935)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A935
    ldloc A935
    ret
BLOCK_END_TEST_MV_BIND_1_FROM_2_933:
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
    .locals init (object C930, object B929, object A928)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A928
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1296
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B929
    br DONE_VAL1297
SKIP_VAL1296:
    nop
    ldnull
    stloc B929
DONE_VAL1297:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL1298
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C930
    br DONE_VAL1299
SKIP_VAL1298:
    nop
    ldnull
    stloc C930
DONE_VAL1299:
    nop
    ldloc A928
    ldloc B929
    ldloc C930
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_926:
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
    .locals init (object B923, object A922)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A922
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL1294
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B923
    br DONE_VAL1295
SKIP_VAL1294:
    nop
    ldnull
    stloc B923
DONE_VAL1295:
    nop
    ldloc A922
    ldloc B923
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_2_920:
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
    brtrue TRUE1279
    ldnull
    br END1280
TRUE1279:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
END1280:
    nop
    ldnull
    ceq
    brtrue ELSE1293
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE1293:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1282
    ldnull
    br END1283
TRUE1282:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
END1283:
    nop
    ldnull
    ceq
    brtrue ELSE1292
    ldc.i4 10
    box int32
    ret
ELSE1292:
    nop
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1284
    ldnull
    br END1285
TRUE1284:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
END1285:
    nop
    ldnull
    ceq
    brtrue ELSE1291
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE1291:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE1286
    ldnull
    br END1287
TRUE1286:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1281'
END1287:
    nop
    ldnull
    ceq
    brtrue ELSE1290
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
ELSE1290:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1288'
    ldnull
    ceq
    brtrue ELSE1289
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
ELSE1289:
    nop
    ldnull
    ret
BLOCK_END_MV_PRODUCER_916:
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

.class public auto ansi beforefieldinit L_1020
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
    callvirt instance object L_1020::'InvokeBody'(object, object, object, object, object, object)
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

} // end of class L_1020

.class public auto ansi beforefieldinit L_1021
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
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
    callvirt instance object L_1021::'InvokeBody'(object)
    ret
}

} // end of class L_1021

