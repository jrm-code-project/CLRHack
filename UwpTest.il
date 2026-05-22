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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2970'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2966'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2970'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2966'
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
BLOCK_END_MAIN_2691:
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
    .locals init (object TEMP2967, object UWP_V632965, object UWP_V622964, object UWP_V612963, object UWP_V602962, object UWP_V592961, object UWP_V582960, object UWP_V572959, object UWP_V562958, object UWP_V552957, object UWP_V542956, object UWP_V532955, object UWP_V522954, object UWP_V512953, object UWP_V502952, object UWP_V492951, object UWP_V482950, object UWP_V472949, object UWP_V462948, object UWP_V452947, object UWP_V442946, object UWP_V432945, object UWP_V422944, object UWP_V412943, object UWP_V402942, object UWP_V392941, object UWP_V382940, object UWP_V372939, object UWP_V362938, object UWP_V352937, object UWP_V342936, object UWP_V332935, object UWP_V322934, object UWP_V312933, object UWP_V302932, object UWP_V292931, object UWP_V282930, object UWP_V272929, object UWP_V262928, object UWP_V252927, object UWP_V242926, object UWP_V232925, object UWP_V222924, object UWP_V212923, object UWP_V202922, object UWP_V192921, object UWP_V182920, object UWP_V172919, object UWP_V162918, object UWP_V152917, object UWP_V142916, object UWP_V132915, object UWP_V122914, object UWP_V112913, object UWP_V102912, object UWP_V92911, object UWP_V82910, object UWP_V72909, object UWP_V62908, object UWP_V52907, object UWP_V42906, object UWP_V32905, object UWP_V22904, object UWP_V12903, object UWP_COUNT2902, object UWP_RESULT2901, object CLEANUP_RUN2687)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2687
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2688
    stloc UWP_RESULT2901
    leave DONE2971
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2902
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12903
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22904
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32905
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42906
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52907
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62908
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72909
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82910
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92911
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102912
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112913
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122914
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132915
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142916
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152917
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162918
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172919
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182920
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192921
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202922
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212923
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222924
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232925
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242926
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252927
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262928
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272929
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282930
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292931
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302932
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312933
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322934
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332935
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342936
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352937
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362938
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372939
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382940
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392941
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402942
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412943
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422944
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432945
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442946
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452947
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462948
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472949
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482950
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492951
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502952
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512953
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522954
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532955
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542956
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552957
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562958
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572959
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582960
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592961
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602962
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612963
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622964
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632965
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2687
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2966'
    stloc TEMP2967
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2967
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2967
    pop
    ldloc UWP_COUNT2902
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12903
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22904
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32905
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42906
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52907
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62908
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72909
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82910
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92911
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102912
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112913
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122914
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132915
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142916
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152917
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162918
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172919
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182920
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192921
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202922
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212923
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222924
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232925
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242926
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252927
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262928
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272929
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282930
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292931
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302932
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312933
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322934
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332935
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342936
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352937
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362938
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372939
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382940
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392941
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402942
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412943
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422944
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432945
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442946
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452947
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462948
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472949
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482950
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492951
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502952
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512953
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522954
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532955
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542956
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552957
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562958
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572959
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582960
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592961
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602962
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612963
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622964
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632965
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2971:
    ldloc UWP_RESULT2901
    pop
TAG_TARGET_2688:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2687
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2966'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2968
    ldnull
    br END2969
TRUE2968:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2970'
END2969:
    nop
    ldnull
    ceq
    brtrue ELSE2972
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2973
ELSE2972:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2973:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2685:
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
    .locals init (object RES2682, object TEMP2899, object TEMP2898, object UWP_V632897, object UWP_V622896, object UWP_V612895, object UWP_V602894, object UWP_V592893, object UWP_V582892, object UWP_V572891, object UWP_V562890, object UWP_V552889, object UWP_V542888, object UWP_V532887, object UWP_V522886, object UWP_V512885, object UWP_V502884, object UWP_V492883, object UWP_V482882, object UWP_V472881, object UWP_V462880, object UWP_V452879, object UWP_V442878, object UWP_V432877, object UWP_V422876, object UWP_V412875, object UWP_V402874, object UWP_V392873, object UWP_V382872, object UWP_V372871, object UWP_V362870, object UWP_V352869, object UWP_V342868, object UWP_V332867, object UWP_V322866, object UWP_V312865, object UWP_V302864, object UWP_V292863, object UWP_V282862, object UWP_V272861, object UWP_V262860, object UWP_V252859, object UWP_V242858, object UWP_V232857, object UWP_V222856, object UWP_V212855, object UWP_V202854, object UWP_V192853, object UWP_V182852, object UWP_V172851, object UWP_V162850, object UWP_V152849, object UWP_V142848, object UWP_V132847, object UWP_V122846, object UWP_V112845, object UWP_V102844, object UWP_V92843, object UWP_V82842, object UWP_V72841, object UWP_V62840, object UWP_V52839, object UWP_V42838, object UWP_V32837, object UWP_V22836, object UWP_V12835, object UWP_COUNT2834, object UWP_RESULT2833, object X2681)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2681
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2681
    ldstr "mutated"
    stloc TEMP2898
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2898
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2898
    pop
    ldstr "result"
    stloc UWP_RESULT2833
    leave DONE2900
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2834
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12835
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22836
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32837
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42838
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52839
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62840
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72841
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82842
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92843
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102844
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112845
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122846
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132847
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142848
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152849
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162850
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172851
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182852
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192853
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202854
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212855
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222856
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232857
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242858
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252859
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262860
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272861
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282862
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292863
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302864
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312865
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322866
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332867
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342868
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352869
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362870
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372871
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382872
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392873
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402874
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412875
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422876
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432877
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442878
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452879
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462880
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472881
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482882
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492883
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502884
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512885
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522886
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532887
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542888
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552889
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562890
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572891
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582892
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592893
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602894
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612895
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622896
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632897
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2681
    ldstr "cleaned"
    stloc TEMP2899
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2899
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2899
    pop
    ldloc UWP_COUNT2834
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12835
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22836
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32837
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42838
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52839
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62840
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72841
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82842
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92843
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102844
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112845
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122846
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132847
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142848
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152849
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162850
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172851
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182852
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192853
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202854
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212855
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222856
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232857
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242858
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252859
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262860
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272861
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282862
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292863
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302864
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312865
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322866
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332867
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342868
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352869
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362870
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372871
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382872
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392873
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402874
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412875
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422876
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432877
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442878
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452879
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462880
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472881
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482882
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492883
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502884
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512885
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522886
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532887
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542888
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552889
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562890
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572891
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582892
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592893
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602894
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612895
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622896
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632897
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2900:
    ldloc UWP_RESULT2833
    stloc RES2682
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2682
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2681
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2679:
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

