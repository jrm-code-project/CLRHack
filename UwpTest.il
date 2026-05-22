.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_UWP_NESTED_GO'
    .field public static object 'TEST_UWP_BASIC'
    .field public static object 'EQ'
    .field public static object '_CELL_VALUE'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2962'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2958'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_UWP_NESTED_GO'
    ldnull
    stsfld object Program::'TEST_UWP_BASIC'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2962'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2958'
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
    call object Program::'TEST_UWP_BASIC'()
    pop
    tail. call object Program::'TEST_UWP_NESTED_GO'()
    ret
BLOCK_END_MAIN_2683:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_NESTED_GO_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_NESTED_GO_Body'() cil managed
{
    .maxstack 8
    .locals init (object TEMP2959, object UWP_V632957, object UWP_V622956, object UWP_V612955, object UWP_V602954, object UWP_V592953, object UWP_V582952, object UWP_V572951, object UWP_V562950, object UWP_V552949, object UWP_V542948, object UWP_V532947, object UWP_V522946, object UWP_V512945, object UWP_V502944, object UWP_V492943, object UWP_V482942, object UWP_V472941, object UWP_V462940, object UWP_V452939, object UWP_V442938, object UWP_V432937, object UWP_V422936, object UWP_V412935, object UWP_V402934, object UWP_V392933, object UWP_V382932, object UWP_V372931, object UWP_V362930, object UWP_V352929, object UWP_V342928, object UWP_V332927, object UWP_V322926, object UWP_V312925, object UWP_V302924, object UWP_V292923, object UWP_V282922, object UWP_V272921, object UWP_V262920, object UWP_V252919, object UWP_V242918, object UWP_V232917, object UWP_V222916, object UWP_V212915, object UWP_V202914, object UWP_V192913, object UWP_V182912, object UWP_V172911, object UWP_V162910, object UWP_V152909, object UWP_V142908, object UWP_V132907, object UWP_V122906, object UWP_V112905, object UWP_V102904, object UWP_V92903, object UWP_V82902, object UWP_V72901, object UWP_V62900, object UWP_V52899, object UWP_V42898, object UWP_V32897, object UWP_V22896, object UWP_V12895, object UWP_COUNT2894, object UWP_RESULT2893, object CLEANUP_RUN2679)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2679
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2680
    stloc UWP_RESULT2893
    leave DONE2963
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2894
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12895
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22896
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32897
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42898
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52899
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62900
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72901
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82902
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92903
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102904
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112905
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122906
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132907
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142908
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152909
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162910
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172911
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182912
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192913
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202914
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212915
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222916
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232917
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242918
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252919
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262920
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272921
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282922
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292923
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302924
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312925
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322926
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332927
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342928
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352929
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362930
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372931
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382932
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392933
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402934
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412935
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422936
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432937
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442938
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452939
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462940
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472941
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482942
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492943
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502944
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512945
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522946
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532947
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542948
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552949
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562950
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572951
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582952
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592953
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602954
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612955
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622956
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632957
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2679
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2958'
    stloc TEMP2959
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2959
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2959
    pop
    ldloc UWP_COUNT2894
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12895
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22896
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32897
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42898
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52899
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62900
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72901
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82902
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92903
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102904
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112905
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122906
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132907
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142908
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152909
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162910
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172911
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182912
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192913
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202914
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212915
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222916
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232917
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242918
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252919
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262920
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272921
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282922
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292923
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302924
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312925
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322926
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332927
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342928
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352929
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362930
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372931
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382932
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392933
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402934
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412935
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422936
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432937
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442938
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452939
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462940
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472941
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482942
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492943
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502944
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512945
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522946
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532947
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542948
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552949
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562950
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572951
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582952
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592953
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602954
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612955
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622956
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632957
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2963:
    ldloc UWP_RESULT2893
    pop
TAG_TARGET_2680:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2679
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2958'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2960
    ldnull
    br END2961
TRUE2960:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2962'
END2961:
    nop
    ldnull
    ceq
    brtrue ELSE2964
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2965
ELSE2964:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2965:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2677:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_BASIC_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_BASIC_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES2674, object TEMP2891, object TEMP2890, object UWP_V632889, object UWP_V622888, object UWP_V612887, object UWP_V602886, object UWP_V592885, object UWP_V582884, object UWP_V572883, object UWP_V562882, object UWP_V552881, object UWP_V542880, object UWP_V532879, object UWP_V522878, object UWP_V512877, object UWP_V502876, object UWP_V492875, object UWP_V482874, object UWP_V472873, object UWP_V462872, object UWP_V452871, object UWP_V442870, object UWP_V432869, object UWP_V422868, object UWP_V412867, object UWP_V402866, object UWP_V392865, object UWP_V382864, object UWP_V372863, object UWP_V362862, object UWP_V352861, object UWP_V342860, object UWP_V332859, object UWP_V322858, object UWP_V312857, object UWP_V302856, object UWP_V292855, object UWP_V282854, object UWP_V272853, object UWP_V262852, object UWP_V252851, object UWP_V242850, object UWP_V232849, object UWP_V222848, object UWP_V212847, object UWP_V202846, object UWP_V192845, object UWP_V182844, object UWP_V172843, object UWP_V162842, object UWP_V152841, object UWP_V142840, object UWP_V132839, object UWP_V122838, object UWP_V112837, object UWP_V102836, object UWP_V92835, object UWP_V82834, object UWP_V72833, object UWP_V62832, object UWP_V52831, object UWP_V42830, object UWP_V32829, object UWP_V22828, object UWP_V12827, object UWP_COUNT2826, object UWP_RESULT2825, object X2673)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2673
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2673
    ldstr "mutated"
    stloc TEMP2890
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2890
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2890
    pop
    ldstr "result"
    stloc UWP_RESULT2825
    leave DONE2892
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2826
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12827
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22828
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32829
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42830
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52831
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62832
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72833
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82834
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92835
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102836
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112837
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122838
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132839
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142840
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152841
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162842
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172843
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182844
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192845
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202846
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212847
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222848
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232849
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242850
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252851
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262852
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272853
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282854
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292855
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302856
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312857
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322858
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332859
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342860
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352861
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362862
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372863
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382864
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392865
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402866
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412867
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422868
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432869
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442870
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452871
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462872
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472873
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482874
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492875
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502876
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512877
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522878
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532879
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542880
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552881
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562882
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572883
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582884
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592885
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602886
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612887
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622888
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632889
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2673
    ldstr "cleaned"
    stloc TEMP2891
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2891
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2891
    pop
    ldloc UWP_COUNT2826
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12827
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22828
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32829
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42830
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52831
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62832
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72833
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82834
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92835
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102836
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112837
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122838
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132839
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142840
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152841
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162842
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172843
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182844
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192845
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202846
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212847
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222848
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232849
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242850
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252851
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262852
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272853
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282854
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292855
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302856
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312857
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322858
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332859
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342860
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352861
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362862
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372863
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382864
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392865
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402866
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412867
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422868
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432869
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442870
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452871
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462872
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472873
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482874
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492875
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502876
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512877
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522878
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532879
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542880
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552881
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562882
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572883
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582884
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592885
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602886
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612887
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622888
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632889
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2892:
    ldloc UWP_RESULT2825
    stloc RES2674
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2674
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2673
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2671:
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

