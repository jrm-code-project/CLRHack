.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MultipleValuesTest' {}
.module 'MultipleValuesTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEMP_B'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3169'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3162'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3155'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3147'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2902'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2892'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEMP_B'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3169'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAZ"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3162'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3155'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3147'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2902'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2892'
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_MV_TESTS'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object CELL_VAL_TMP3174, object CELL_TMP3173, object TEMP3170, object RES2605, object LIST26012602, object RESULTS2600)
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
    stloc RESULTS2600
    ldloc RESULTS2600
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LIST26012602
TAG_LOOP_2603:
    nop
    ldloc LIST26012602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3167
    ldnull
    br END3168
TRUE3167:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3169'
END3168:
    nop
    ldnull
    ceq
    brtrue ELSE3171
    leave TAG_END_2604
    br END3172
ELSE3171:
    nop
    ldnull
END3172:
    nop
    pop
    ldloc LIST26012602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc RES2605
    ldloc LIST26012602
    stloc CELL_TMP3173
    ldloc LIST26012602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc CELL_VAL_TMP3174
    ldloc CELL_TMP3173
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP3174
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP3174
    pop
    ldloc RES2605
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_LOOP_2603
    pop
TAG_END_2604:
    nop
    ldnull
    pop
    ldnull
    ret
BLOCK_END_RUN_MV_TESTS_2598:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_1_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object CATCH_RESULT3161, object CATCH_TAG3160, object B2594, object A2593)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3162'
    stloc CATCH_TAG3160
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3162'
    ldc.i4 42
    box int32
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT3161
    leave CATCH_DONE3163
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG3160
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW3164
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT3161
    leave CATCH_DONE3163
CATCH_RETHROW3164:
    pop
    rethrow
    }
CATCH_DONE3163:
    ldloc CATCH_RESULT3161
    stloc A2593
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3165
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2594
    br DONE_VAL3166
SKIP_VAL3165:
    nop
    ldnull
    stloc B2594
DONE_VAL3166:
    nop
    ldloc A2593
    ldloc B2594
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_1_MV_2591:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_0_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object CATCH_RESULT3154, object CATCH_TAG3153, object B2587, object A2586)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3155'
    stloc CATCH_TAG3153
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3155'
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT3154
    leave CATCH_DONE3156
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG3153
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW3157
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT3154
    leave CATCH_DONE3156
CATCH_RETHROW3157:
    pop
    rethrow
    }
CATCH_DONE3156:
    ldloc CATCH_RESULT3154
    stloc A2586
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3158
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2587
    br DONE_VAL3159
SKIP_VAL3158:
    nop
    ldnull
    stloc B2587
DONE_VAL3159:
    nop
    ldloc A2586
    ldloc B2587
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_0_MV_2584:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_THROW_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object VALUES_TEMP_13148, object CATCH_RESULT3146, object CATCH_TAG3145, object B2580, object A2579)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3147'
    stloc CATCH_TAG3145
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3147'
    ldc.i4 9
    box int32
    ldc.i4 10
    box int32
    stloc VALUES_TEMP_13148
    ldloc VALUES_TEMP_13148
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    stloc CATCH_RESULT3146
    leave CATCH_DONE3149
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG3145
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW3150
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT3146
    leave CATCH_DONE3149
CATCH_RETHROW3150:
    pop
    rethrow
    }
CATCH_DONE3149:
    ldloc CATCH_RESULT3146
    stloc A2579
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3151
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2580
    br DONE_VAL3152
SKIP_VAL3151:
    nop
    ldnull
    stloc B2580
DONE_VAL3152:
    nop
    ldloc A2579
    ldloc B2580
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_CATCH_THROW_MV_2577:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_RETURN_FROM_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object VALUES_TEMP_13141, object VALUES_TEMP_13140, object UWP_V633139, object UWP_V623138, object UWP_V613137, object UWP_V603136, object UWP_V593135, object UWP_V583134, object UWP_V573133, object UWP_V563132, object UWP_V553131, object UWP_V543130, object UWP_V533129, object UWP_V523128, object UWP_V513127, object UWP_V503126, object UWP_V493125, object UWP_V483124, object UWP_V473123, object UWP_V463122, object UWP_V453121, object UWP_V443120, object UWP_V433119, object UWP_V423118, object UWP_V413117, object UWP_V403116, object UWP_V393115, object UWP_V383114, object UWP_V373113, object UWP_V363112, object UWP_V353111, object UWP_V343110, object UWP_V333109, object UWP_V323108, object UWP_V313107, object UWP_V303106, object UWP_V293105, object UWP_V283104, object UWP_V273103, object UWP_V263102, object UWP_V253101, object UWP_V243100, object UWP_V233099, object UWP_V223098, object UWP_V213097, object UWP_V203096, object UWP_V193095, object UWP_V183094, object UWP_V173093, object UWP_V163092, object UWP_V153091, object UWP_V143090, object UWP_V133089, object UWP_V123088, object UWP_V113087, object UWP_V103086, object UWP_V93085, object UWP_V83084, object UWP_V73083, object UWP_V63082, object UWP_V53081, object UWP_V43080, object UWP_V33079, object UWP_V23078, object UWP_V13077, object UWP_COUNT3076, object UWP_RESULT3075, object BLOCK_RESULT_NIL_2571, object B2573, object A2572)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    ldc.i4 5
    box int32
    ldc.i4 6
    box int32
    stloc VALUES_TEMP_13140
    ldloc VALUES_TEMP_13140
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc BLOCK_RESULT_NIL_2571
    leave BLOCK_END_NIL_2570
    stloc UWP_RESULT3075
    leave DONE3142
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3076
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13077
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23078
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33079
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43080
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53081
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63082
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73083
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83084
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93085
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103086
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113087
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123088
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133089
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143090
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153091
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163092
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173093
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183094
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193095
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203096
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213097
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223098
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233099
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243100
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253101
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263102
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273103
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283104
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293105
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303106
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313107
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323108
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333109
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343110
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353111
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363112
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373113
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383114
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393115
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403116
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413117
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423118
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433119
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443120
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453121
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463122
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473123
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483124
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493125
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503126
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513127
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523128
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533129
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543130
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553131
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563132
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573133
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583134
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593135
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603136
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613137
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623138
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633139
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    stloc VALUES_TEMP_13141
    ldloc VALUES_TEMP_13141
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT3076
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13077
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23078
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33079
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43080
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53081
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63082
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73083
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83084
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93085
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103086
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113087
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123088
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133089
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143090
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153091
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163092
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173093
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183094
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193095
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203096
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213097
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223098
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233099
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243100
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253101
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263102
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273103
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283104
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293105
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303106
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313107
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323108
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333109
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343110
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353111
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363112
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373113
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383114
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393115
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403116
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413117
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423118
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433119
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443120
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453121
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463122
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473123
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483124
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493125
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503126
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513127
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523128
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533129
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543130
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553131
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563132
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573133
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583134
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593135
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603136
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613137
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623138
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633139
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3142:
    ldloc UWP_RESULT3075
    stloc BLOCK_RESULT_NIL_2571
BLOCK_END_NIL_2570:
    nop
    ldloc BLOCK_RESULT_NIL_2571
    stloc A2572
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3143
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2573
    br DONE_VAL3144
SKIP_VAL3143:
    nop
    ldnull
    stloc B2573
DONE_VAL3144:
    nop
    ldloc A2572
    ldloc B2573
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_RETURN_FROM_MV_2567:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_MV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object VALUES_TEMP_13071, object VALUES_TEMP_13070, object UWP_V633069, object UWP_V623068, object UWP_V613067, object UWP_V603066, object UWP_V593065, object UWP_V583064, object UWP_V573063, object UWP_V563062, object UWP_V553061, object UWP_V543060, object UWP_V533059, object UWP_V523058, object UWP_V513057, object UWP_V503056, object UWP_V493055, object UWP_V483054, object UWP_V473053, object UWP_V463052, object UWP_V453051, object UWP_V443050, object UWP_V433049, object UWP_V423048, object UWP_V413047, object UWP_V403046, object UWP_V393045, object UWP_V383044, object UWP_V373043, object UWP_V363042, object UWP_V353041, object UWP_V343040, object UWP_V333039, object UWP_V323038, object UWP_V313037, object UWP_V303036, object UWP_V293035, object UWP_V283034, object UWP_V273033, object UWP_V263032, object UWP_V253031, object UWP_V243030, object UWP_V233029, object UWP_V223028, object UWP_V213027, object UWP_V203026, object UWP_V193025, object UWP_V183024, object UWP_V173023, object UWP_V163022, object UWP_V153021, object UWP_V143020, object UWP_V133019, object UWP_V123018, object UWP_V113017, object UWP_V103016, object UWP_V93015, object UWP_V83014, object UWP_V73013, object UWP_V63012, object UWP_V53011, object UWP_V43010, object UWP_V33009, object UWP_V23008, object UWP_V13007, object UWP_COUNT3006, object UWP_RESULT3005, object B2563, object A2562)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_13070
    ldloc VALUES_TEMP_13070
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_RESULT3005
    leave DONE3072
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3006
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13007
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23008
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33009
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43010
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53011
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63012
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73013
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83014
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93015
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103016
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113017
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123018
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133019
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143020
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153021
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163022
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173023
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183024
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193025
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203026
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213027
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223028
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233029
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243030
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253031
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263032
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273033
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283034
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293035
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303036
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313037
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323038
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333039
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343040
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353041
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363042
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373043
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383044
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393045
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403046
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413047
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423048
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433049
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443050
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453051
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463052
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473053
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483054
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493055
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503056
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513057
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523058
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533059
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543060
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553061
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563062
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573063
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583064
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593065
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603066
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613067
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623068
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633069
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stloc VALUES_TEMP_13071
    ldloc VALUES_TEMP_13071
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    pop
    ldloc UWP_COUNT3006
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13007
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23008
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33009
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43010
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53011
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63012
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73013
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83014
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93015
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103016
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113017
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123018
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133019
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143020
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153021
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163022
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173023
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183024
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193025
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203026
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213027
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223028
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233029
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243030
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253031
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263032
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273033
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283034
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293035
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303036
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313037
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323038
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333039
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343040
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353041
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363042
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373043
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383044
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393045
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403046
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413047
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423048
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433049
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443050
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453051
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463052
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473053
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483054
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493055
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503056
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513057
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523058
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533059
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543060
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553061
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563062
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573063
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583064
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593065
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603066
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613067
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623068
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633069
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3072:
    ldloc UWP_RESULT3005
    stloc A2562
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3073
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2563
    br DONE_VAL3074
SKIP_VAL3073:
    nop
    ldnull
    stloc B2563
DONE_VAL3074:
    nop
    ldloc A2562
    ldloc B2563
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_UWP_MV_2560:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL_REST'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object VALUES_TEMP_23004, object VALUES_TEMP_13003, object VALUES_TEMP_13002, object MVC_LIST3001, object MVC_FN3000)
    newobj instance void L_2608::'.ctor'()
    stloc MVC_FN3000
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST3001
    ldloc MVC_LIST3001
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_13002
    ldloc VALUES_TEMP_13002
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST3001
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stloc VALUES_TEMP_13003
    ldc.i4 5
    box int32
    stloc VALUES_TEMP_23004
    ldloc VALUES_TEMP_13003
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_23004
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST3001
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN3000
    ldloc MVC_LIST3001
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_REST_2553:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_CALL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object VALUES_TEMP_22999, object VALUES_TEMP_12998, object VALUES_TEMP_12997, object MVC_LIST2996, object MVC_FN2995)
    newobj instance void L_2607::'.ctor'()
    stloc MVC_FN2995
    call object [LispBase]Lisp.Values::'CreateGatheringList'()
    stloc MVC_LIST2996
    ldloc MVC_LIST2996
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_12997
    ldloc VALUES_TEMP_12997
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST2996
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    ldc.i4 4
    box int32
    stloc VALUES_TEMP_12998
    ldc.i4 5
    box int32
    stloc VALUES_TEMP_22999
    ldloc VALUES_TEMP_12998
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_22999
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_LIST2996
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 6
    box int32
    call void [LispBase]Lisp.Values::'Accumulate'(object, object)
    ldloc MVC_FN2995
    ldloc MVC_LIST2996
    call object [LispBase]Lisp.Values::'InvokeWithList'(object, object)
    ret
BLOCK_END_TEST_MV_CALL_2541:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_PROG1'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object CELL_VAL_TMP2994, object CELL_TMP2993, object TEMP2992, object VALUES_TEMP_12991, object MV_PROG1_V632990, object MV_PROG1_V622989, object MV_PROG1_V612988, object MV_PROG1_V602987, object MV_PROG1_V592986, object MV_PROG1_V582985, object MV_PROG1_V572984, object MV_PROG1_V562983, object MV_PROG1_V552982, object MV_PROG1_V542981, object MV_PROG1_V532980, object MV_PROG1_V522979, object MV_PROG1_V512978, object MV_PROG1_V502977, object MV_PROG1_V492976, object MV_PROG1_V482975, object MV_PROG1_V472974, object MV_PROG1_V462973, object MV_PROG1_V452972, object MV_PROG1_V442971, object MV_PROG1_V432970, object MV_PROG1_V422969, object MV_PROG1_V412968, object MV_PROG1_V402967, object MV_PROG1_V392966, object MV_PROG1_V382965, object MV_PROG1_V372964, object MV_PROG1_V362963, object MV_PROG1_V352962, object MV_PROG1_V342961, object MV_PROG1_V332960, object MV_PROG1_V322959, object MV_PROG1_V312958, object MV_PROG1_V302957, object MV_PROG1_V292956, object MV_PROG1_V282955, object MV_PROG1_V272954, object MV_PROG1_V262953, object MV_PROG1_V252952, object MV_PROG1_V242951, object MV_PROG1_V232950, object MV_PROG1_V222949, object MV_PROG1_V212948, object MV_PROG1_V202947, object MV_PROG1_V192946, object MV_PROG1_V182945, object MV_PROG1_V172944, object MV_PROG1_V162943, object MV_PROG1_V152942, object MV_PROG1_V142941, object MV_PROG1_V132940, object MV_PROG1_V122939, object MV_PROG1_V112938, object MV_PROG1_V102937, object MV_PROG1_V92936, object MV_PROG1_V82935, object MV_PROG1_V72934, object MV_PROG1_V62933, object MV_PROG1_V52932, object MV_PROG1_V42931, object MV_PROG1_V32930, object MV_PROG1_V22929, object MV_PROG1_V12928, object MV_PROG1_COUNT2927, object MV_PROG1_RES2926, object X2537)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2537
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_12991
    ldloc VALUES_TEMP_12991
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_RES2926
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc MV_PROG1_COUNT2927
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc MV_PROG1_V12928
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc MV_PROG1_V22929
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc MV_PROG1_V32930
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc MV_PROG1_V42931
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc MV_PROG1_V52932
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc MV_PROG1_V62933
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc MV_PROG1_V72934
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc MV_PROG1_V82935
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc MV_PROG1_V92936
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc MV_PROG1_V102937
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc MV_PROG1_V112938
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc MV_PROG1_V122939
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc MV_PROG1_V132940
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc MV_PROG1_V142941
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc MV_PROG1_V152942
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc MV_PROG1_V162943
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc MV_PROG1_V172944
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc MV_PROG1_V182945
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc MV_PROG1_V192946
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc MV_PROG1_V202947
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc MV_PROG1_V212948
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc MV_PROG1_V222949
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc MV_PROG1_V232950
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc MV_PROG1_V242951
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc MV_PROG1_V252952
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc MV_PROG1_V262953
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc MV_PROG1_V272954
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc MV_PROG1_V282955
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc MV_PROG1_V292956
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc MV_PROG1_V302957
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc MV_PROG1_V312958
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc MV_PROG1_V322959
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc MV_PROG1_V332960
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc MV_PROG1_V342961
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc MV_PROG1_V352962
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc MV_PROG1_V362963
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc MV_PROG1_V372964
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc MV_PROG1_V382965
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc MV_PROG1_V392966
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc MV_PROG1_V402967
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc MV_PROG1_V412968
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc MV_PROG1_V422969
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc MV_PROG1_V432970
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc MV_PROG1_V442971
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc MV_PROG1_V452972
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc MV_PROG1_V462973
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc MV_PROG1_V472974
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc MV_PROG1_V482975
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc MV_PROG1_V492976
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc MV_PROG1_V502977
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc MV_PROG1_V512978
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc MV_PROG1_V522979
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc MV_PROG1_V532980
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc MV_PROG1_V542981
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc MV_PROG1_V552982
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc MV_PROG1_V562983
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc MV_PROG1_V572984
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc MV_PROG1_V582985
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc MV_PROG1_V592986
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc MV_PROG1_V602987
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc MV_PROG1_V612988
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc MV_PROG1_V622989
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc MV_PROG1_V632990
    ldloc X2537
    stloc CELL_TMP2993
    ldc.i4 10
    box int32
    stloc CELL_VAL_TMP2994
    ldloc CELL_TMP2993
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2994
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2994
    pop
    ldloc MV_PROG1_COUNT2927
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc MV_PROG1_V12928
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc MV_PROG1_V22929
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc MV_PROG1_V32930
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc MV_PROG1_V42931
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc MV_PROG1_V52932
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc MV_PROG1_V62933
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc MV_PROG1_V72934
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc MV_PROG1_V82935
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc MV_PROG1_V92936
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc MV_PROG1_V102937
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc MV_PROG1_V112938
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc MV_PROG1_V122939
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc MV_PROG1_V132940
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc MV_PROG1_V142941
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc MV_PROG1_V152942
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc MV_PROG1_V162943
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc MV_PROG1_V172944
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc MV_PROG1_V182945
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc MV_PROG1_V192946
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc MV_PROG1_V202947
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc MV_PROG1_V212948
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc MV_PROG1_V222949
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc MV_PROG1_V232950
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc MV_PROG1_V242951
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc MV_PROG1_V252952
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc MV_PROG1_V262953
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc MV_PROG1_V272954
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc MV_PROG1_V282955
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc MV_PROG1_V292956
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc MV_PROG1_V302957
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc MV_PROG1_V312958
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc MV_PROG1_V322959
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc MV_PROG1_V332960
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc MV_PROG1_V342961
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc MV_PROG1_V352962
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc MV_PROG1_V362963
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc MV_PROG1_V372964
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc MV_PROG1_V382965
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc MV_PROG1_V392966
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc MV_PROG1_V402967
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc MV_PROG1_V412968
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc MV_PROG1_V422969
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc MV_PROG1_V432970
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc MV_PROG1_V442971
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc MV_PROG1_V452972
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc MV_PROG1_V462973
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc MV_PROG1_V472974
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc MV_PROG1_V482975
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc MV_PROG1_V492976
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc MV_PROG1_V502977
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc MV_PROG1_V512978
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc MV_PROG1_V522979
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc MV_PROG1_V532980
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc MV_PROG1_V542981
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc MV_PROG1_V552982
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc MV_PROG1_V562983
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc MV_PROG1_V572984
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc MV_PROG1_V582985
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc MV_PROG1_V592986
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc MV_PROG1_V602987
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc MV_PROG1_V612988
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc MV_PROG1_V622989
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc MV_PROG1_V632990
    stsfld object [LispBase]Lisp.Values::Value63
    ldloc MV_PROG1_RES2926
    ldloc X2537
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_PROG1_2535:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_NORMAL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object B2531, object A2530)
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
    stloc A2530
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2924
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2531
    br DONE_VAL2925
SKIP_VAL2924:
    nop
    ldnull
    stloc B2531
DONE_VAL2925:
    nop
    ldloc A2530
    ldloc B2531
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_NORMAL_2528:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_0'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object B2524, object A2523)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 0
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A2523
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2922
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2524
    br DONE_VAL2923
SKIP_VAL2922:
    nop
    ldnull
    stloc B2524
DONE_VAL2923:
    nop
    ldloc A2523
    ldloc B2524
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_0_2521:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3_FROM_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object C2517, object B2516, object A2515)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A2515
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2918
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2516
    br DONE_VAL2919
SKIP_VAL2918:
    nop
    ldnull
    stloc B2516
DONE_VAL2919:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL2920
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C2517
    br DONE_VAL2921
SKIP_VAL2920:
    nop
    ldnull
    stloc C2517
DONE_VAL2921:
    nop
    ldloc A2515
    ldloc B2516
    ldloc C2517
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_FROM_2_2513:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_1_FROM_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object A2509)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A2509
    ldloc A2509
    ret
BLOCK_END_TEST_MV_BIND_1_FROM_2_2507:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_3'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object C2503, object B2502, object A2501)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A2501
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2914
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2502
    br DONE_VAL2915
SKIP_VAL2914:
    nop
    ldnull
    stloc B2502
DONE_VAL2915:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL2916
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C2503
    br DONE_VAL2917
SKIP_VAL2916:
    nop
    ldnull
    stloc C2503
DONE_VAL2917:
    nop
    ldloc A2501
    ldloc B2502
    ldloc C2503
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_3_2499:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MV_BIND_2'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object B2495, object A2494)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    box int32
    call object Program::'MV_PRODUCER'(object)
    stloc A2494
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2912
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2495
    br DONE_VAL2913
SKIP_VAL2912:
    nop
    ldnull
    stloc B2495
DONE_VAL2913:
    nop
    ldloc A2494
    ldloc B2495
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_MV_BIND_2_2492:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MV_PRODUCER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'MV_PRODUCER_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object VALUES_TEMP_42906, object VALUES_TEMP_32905, object VALUES_TEMP_22904, object VALUES_TEMP_12903, object VALUES_TEMP_22901, object VALUES_TEMP_12900, object VALUES_TEMP_12897)
    ldarg 0
    ldc.i4 0
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE2890
    ldnull
    br END2891
TRUE2890:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2892'
END2891:
    nop
    ldnull
    ceq
    brtrue ELSE2911
    ldc.i4.0
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldnull
    ret
ELSE2911:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE2893
    ldnull
    br END2894
TRUE2893:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2892'
END2894:
    nop
    ldnull
    ceq
    brtrue ELSE2910
    ldc.i4 10
    box int32
    ret
ELSE2910:
    nop
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE2895
    ldnull
    br END2896
TRUE2895:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2892'
END2896:
    nop
    ldnull
    ceq
    brtrue ELSE2909
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stloc VALUES_TEMP_12897
    ldloc VALUES_TEMP_12897
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE2909:
    nop
    ldarg 0
    ldc.i4 3
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE2898
    ldnull
    br END2899
TRUE2898:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2892'
END2899:
    nop
    ldnull
    ceq
    brtrue ELSE2908
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    stloc VALUES_TEMP_12900
    ldc.i4 30
    box int32
    stloc VALUES_TEMP_22901
    ldloc VALUES_TEMP_12900
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_22901
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE2908:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2902'
    ldnull
    ceq
    brtrue ELSE2907
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_12903
    ldc.i4 3
    box int32
    stloc VALUES_TEMP_22904
    ldc.i4 4
    box int32
    stloc VALUES_TEMP_32905
    ldc.i4 5
    box int32
    stloc VALUES_TEMP_42906
    ldloc VALUES_TEMP_12903
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_22904
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc VALUES_TEMP_32905
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc VALUES_TEMP_42906
    stsfld object [LispBase]Lisp.Values::Value4
    ldc.i4 5
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
ELSE2907:
    nop
    ldnull
    ret
BLOCK_END_MV_PRODUCER_2487:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'RUN_MV_TESTS'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2607
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
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
    tail.
    callvirt instance object L_2607::'InvokeBody'(object, object, object, object, object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 6
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2607

.class public auto ansi beforefieldinit L_2608
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
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
    callvirt instance object L_2608::'InvokeBody'(object)
    ret
}

} // end of class L_2608

