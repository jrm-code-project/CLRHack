.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'test-lexical-exits' {}
.module 'test-lexical-exits.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_T966'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T966'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'()
    pop
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'()
    pop
    call object Program::'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'()
    pop
    tail. call object Program::'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'()
    ret
BLOCK_END_MAIN_798:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP974, object CELL_TMP973, object BLOCK_RESULT_DONE_792, object CELL_VAL_TMP970, object CELL_TMP969, object TEMP968, object TEMP967, object K794, object UWP_V63965, object UWP_V62964, object UWP_V61963, object UWP_V60962, object UWP_V59961, object UWP_V58960, object UWP_V57959, object UWP_V56958, object UWP_V55957, object UWP_V54956, object UWP_V53955, object UWP_V52954, object UWP_V51953, object UWP_V50952, object UWP_V49951, object UWP_V48950, object UWP_V47949, object UWP_V46948, object UWP_V45947, object UWP_V44946, object UWP_V43945, object UWP_V42944, object UWP_V41943, object UWP_V40942, object UWP_V39941, object UWP_V38940, object UWP_V37939, object UWP_V36938, object UWP_V35937, object UWP_V34936, object UWP_V33935, object UWP_V32934, object UWP_V31933, object UWP_V30932, object UWP_V29931, object UWP_V28930, object UWP_V27929, object UWP_V26928, object UWP_V25927, object UWP_V24926, object UWP_V23925, object UWP_V22924, object UWP_V21923, object UWP_V20922, object UWP_V19921, object UWP_V18920, object UWP_V17919, object UWP_V16918, object UWP_V15917, object UWP_V14916, object UWP_V13915, object UWP_V12914, object UWP_V11913, object UWP_V10912, object UWP_V9911, object UWP_V8910, object UWP_V7909, object UWP_V6908, object UWP_V5907, object UWP_V4906, object UWP_V3905, object UWP_V2904, object UWP_V1903, object UWP_COUNT902, object UWP_RESULT901, object RESULT789, object CLEANUP_RAN788)
    ldstr "Lexical return with unwind-protect..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN788
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT789
    ldloc RESULT789
    stloc CELL_TMP969
    .try
    {
    .try
    {
    newobj instance void L_805::'.ctor'()
    stloc K794
    ldloc K794
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print uwp path"
    stloc UWP_RESULT901
    leave DONE972
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT902
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V1903
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V2904
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V3905
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V4906
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V5907
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V6908
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V7909
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V8910
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V9911
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V10912
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V11913
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V12914
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V13915
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V14916
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V15917
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V16918
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V17919
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V18920
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V19921
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V20922
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V21923
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V22924
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V23925
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V24926
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V25927
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V26928
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V27929
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V28930
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V29931
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V30932
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V31933
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V32934
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V33935
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V34936
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V35937
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V36938
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V37939
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V38940
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V39941
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V40942
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V41943
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V42944
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V43945
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V44946
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V45947
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V46948
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V47949
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V48950
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V49951
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V50952
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V51953
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V52954
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V53955
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V54956
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V55957
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V56958
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V57959
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V58960
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V59961
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V60962
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V61963
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V62964
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V63965
    ldloc CLEANUP_RAN788
    stloc CELL_TMP973
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T966'
    stloc CELL_VAL_TMP974
    ldloc CELL_TMP973
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP974
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP974
    pop
    ldstr "Cleanup from lexical unwind-protect"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT902
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V1903
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V2904
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V3905
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V4906
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V5907
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V6908
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V7909
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V8910
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V9911
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V10912
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V11913
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V12914
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V13915
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V14916
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V15917
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V16918
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V17919
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V18920
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V19921
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V20922
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V21923
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V22924
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V23925
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V24926
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V25927
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V26928
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V27929
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V28930
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V29931
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V30932
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V31933
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V32934
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V33935
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V34936
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V35937
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V36938
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V37939
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V38940
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V39941
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V40942
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V41943
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V42944
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V43945
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V44946
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V45947
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V46948
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V47949
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V48950
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V49951
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V50952
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V51953
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V52954
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V53955
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V54956
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V55957
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V56958
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V57959
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V58960
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V59961
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V60962
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V61963
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V62964
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V63965
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE972:
    ldloc UWP_RESULT901
    stloc BLOCK_RESULT_DONE_792
    leave BLOCK_END_DONE_791
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_790"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW971
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_792
    leave BLOCK_END_DONE_791
BLOCK_RETHROW971:
    pop
    rethrow
    }
BLOCK_END_DONE_791:
    nop
    ldloc BLOCK_RESULT_DONE_792
    stloc CELL_VAL_TMP970
    ldloc CELL_TMP969
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP970
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP970
    pop
    ldstr "UWP result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT789
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Cleanup flag:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RAN788
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_786:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_RETURN_MULTIPLE_VALUES_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_DONE_777, object VALUES_TEMP_2895, object VALUES_TEMP_1894, object K779, object C782, object B781, object A780)
    ldstr "Lexical return with multiple values..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    newobj instance void L_804::'.ctor'()
    stloc K779
    ldloc K779
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print mv path"
    ldnull
    stloc VALUES_TEMP_1894
    ldnull
    stloc VALUES_TEMP_2895
    ldloc VALUES_TEMP_1894
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_2895
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc BLOCK_RESULT_DONE_777
    leave BLOCK_END_DONE_776
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_775"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW896
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_777
    leave BLOCK_END_DONE_776
BLOCK_RETHROW896:
    pop
    rethrow
    }
BLOCK_END_DONE_776:
    nop
    ldloc BLOCK_RESULT_DONE_777
    stloc A780
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL897
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B781
    br DONE_VAL898
SKIP_VAL897:
    nop
    ldnull
    stloc B781
DONE_VAL898:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL899
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C782
    br DONE_VAL900
SKIP_VAL899:
    nop
    ldnull
    stloc C782
DONE_VAL900:
    nop
    ldstr "MV primary:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A780
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "MV second:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B781
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "MV third:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C782
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_RETURN_MULTIPLE_VALUES_773:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_DONE_764, object RESULT769, object K1768)
    ldstr "Lexical return nested closures..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_803::'.ctor'()
    stloc K1768
    ldloc K1768
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print nested outer"
    stloc BLOCK_RESULT_DONE_764
    leave BLOCK_END_DONE_763
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_762"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW893
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_764
    leave BLOCK_END_DONE_763
BLOCK_RETHROW893:
    pop
    rethrow
    }
BLOCK_END_DONE_763:
    nop
    ldloc BLOCK_RESULT_DONE_764
    stloc RESULT769
    ldstr "Nested result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT769
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_760:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_DONE_753, object RESULT756, object K755)
    ldstr "Lexical return simple closure..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_801::'.ctor'()
    stloc K755
    ldloc K755
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print simple path"
    stloc BLOCK_RESULT_DONE_753
    leave BLOCK_END_DONE_752
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_751"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW892
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_753
    leave BLOCK_END_DONE_752
BLOCK_RETHROW892:
    pop
    rethrow
    }
BLOCK_END_DONE_752:
    nop
    ldloc BLOCK_RESULT_DONE_753
    stloc RESULT756
    ldstr "Simple result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT756
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_749:
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

.class public auto ansi beforefieldinit L_801
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_751"
    ldstr "escaped-simple"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_801::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_801

.class public auto ansi beforefieldinit L_802
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_762"
    ldstr "escaped-nested"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_802::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_802

.class public auto ansi beforefieldinit L_803
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    .locals init (object K2767)
    newobj instance void L_802::'.ctor'()
    stloc K2767
    ldloc K2767
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print nested inner"
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_803::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_803

.class public auto ansi beforefieldinit L_804
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    .locals init (object VALUES_TEMP_2891, object VALUES_TEMP_1890)
    ldstr "BLOCK_ID_DONE_775"
    ldstr "mv-primary"
    ldc.i4 22
    box int32
    stloc VALUES_TEMP_1890
    ldc.i4 33
    box int32
    stloc VALUES_TEMP_2891
    ldloc VALUES_TEMP_1890
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_2891
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_804::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_804

.class public auto ansi beforefieldinit L_805
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_790"
    ldstr "escaped-uwp"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_805::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_805

