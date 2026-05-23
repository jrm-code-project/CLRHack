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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2924'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2920'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2924'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2920'
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
BLOCK_END_MAIN_2645:
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
    .locals init (object TEMP2921, object UWP_V632919, object UWP_V622918, object UWP_V612917, object UWP_V602916, object UWP_V592915, object UWP_V582914, object UWP_V572913, object UWP_V562912, object UWP_V552911, object UWP_V542910, object UWP_V532909, object UWP_V522908, object UWP_V512907, object UWP_V502906, object UWP_V492905, object UWP_V482904, object UWP_V472903, object UWP_V462902, object UWP_V452901, object UWP_V442900, object UWP_V432899, object UWP_V422898, object UWP_V412897, object UWP_V402896, object UWP_V392895, object UWP_V382894, object UWP_V372893, object UWP_V362892, object UWP_V352891, object UWP_V342890, object UWP_V332889, object UWP_V322888, object UWP_V312887, object UWP_V302886, object UWP_V292885, object UWP_V282884, object UWP_V272883, object UWP_V262882, object UWP_V252881, object UWP_V242880, object UWP_V232879, object UWP_V222878, object UWP_V212877, object UWP_V202876, object UWP_V192875, object UWP_V182874, object UWP_V172873, object UWP_V162872, object UWP_V152871, object UWP_V142870, object UWP_V132869, object UWP_V122868, object UWP_V112867, object UWP_V102866, object UWP_V92865, object UWP_V82864, object UWP_V72863, object UWP_V62862, object UWP_V52861, object UWP_V42860, object UWP_V32859, object UWP_V22858, object UWP_V12857, object UWP_COUNT2856, object UWP_RESULT2855, object CLEANUP_RUN2641)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2641
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2642
    stloc UWP_RESULT2855
    leave DONE2925
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2856
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12857
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22858
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32859
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42860
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52861
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62862
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72863
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82864
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92865
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102866
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112867
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122868
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132869
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142870
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152871
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162872
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172873
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182874
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192875
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202876
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212877
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222878
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232879
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242880
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252881
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262882
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272883
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282884
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292885
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302886
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312887
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322888
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332889
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342890
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352891
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362892
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372893
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382894
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392895
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402896
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412897
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422898
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432899
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442900
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452901
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462902
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472903
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482904
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492905
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502906
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512907
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522908
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532909
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542910
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552911
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562912
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572913
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582914
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592915
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602916
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612917
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622918
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632919
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2641
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2920'
    stloc TEMP2921
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2921
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2921
    pop
    ldloc UWP_COUNT2856
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12857
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22858
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32859
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42860
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52861
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62862
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72863
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82864
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92865
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102866
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112867
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122868
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132869
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142870
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152871
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162872
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172873
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182874
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192875
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202876
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212877
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222878
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232879
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242880
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252881
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262882
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272883
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282884
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292885
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302886
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312887
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322888
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332889
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342890
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352891
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362892
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372893
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382894
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392895
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402896
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412897
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422898
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432899
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442900
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452901
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462902
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472903
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482904
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492905
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502906
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512907
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522908
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532909
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542910
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552911
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562912
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572913
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582914
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592915
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602916
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612917
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622918
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632919
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2925:
    ldloc UWP_RESULT2855
    pop
TAG_TARGET_2642:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2641
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2920'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2922
    ldnull
    br END2923
TRUE2922:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2924'
END2923:
    nop
    ldnull
    ceq
    brtrue ELSE2926
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2927
ELSE2926:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2927:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2639:
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
    .locals init (object RES2636, object TEMP2853, object TEMP2852, object UWP_V632851, object UWP_V622850, object UWP_V612849, object UWP_V602848, object UWP_V592847, object UWP_V582846, object UWP_V572845, object UWP_V562844, object UWP_V552843, object UWP_V542842, object UWP_V532841, object UWP_V522840, object UWP_V512839, object UWP_V502838, object UWP_V492837, object UWP_V482836, object UWP_V472835, object UWP_V462834, object UWP_V452833, object UWP_V442832, object UWP_V432831, object UWP_V422830, object UWP_V412829, object UWP_V402828, object UWP_V392827, object UWP_V382826, object UWP_V372825, object UWP_V362824, object UWP_V352823, object UWP_V342822, object UWP_V332821, object UWP_V322820, object UWP_V312819, object UWP_V302818, object UWP_V292817, object UWP_V282816, object UWP_V272815, object UWP_V262814, object UWP_V252813, object UWP_V242812, object UWP_V232811, object UWP_V222810, object UWP_V212809, object UWP_V202808, object UWP_V192807, object UWP_V182806, object UWP_V172805, object UWP_V162804, object UWP_V152803, object UWP_V142802, object UWP_V132801, object UWP_V122800, object UWP_V112799, object UWP_V102798, object UWP_V92797, object UWP_V82796, object UWP_V72795, object UWP_V62794, object UWP_V52793, object UWP_V42792, object UWP_V32791, object UWP_V22790, object UWP_V12789, object UWP_COUNT2788, object UWP_RESULT2787, object X2635)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2635
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2635
    ldstr "mutated"
    stloc TEMP2852
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2852
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2852
    pop
    ldstr "result"
    stloc UWP_RESULT2787
    leave DONE2854
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2788
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12789
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22790
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32791
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42792
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52793
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62794
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72795
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82796
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92797
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102798
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112799
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122800
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132801
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142802
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152803
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162804
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172805
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182806
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192807
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202808
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212809
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222810
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232811
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242812
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252813
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262814
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272815
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282816
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292817
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302818
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312819
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322820
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332821
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342822
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352823
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362824
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372825
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382826
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392827
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402828
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412829
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422830
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432831
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442832
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452833
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462834
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472835
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482836
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492837
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502838
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512839
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522840
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532841
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542842
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552843
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562844
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572845
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582846
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592847
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602848
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612849
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622850
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632851
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2635
    ldstr "cleaned"
    stloc TEMP2853
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2853
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2853
    pop
    ldloc UWP_COUNT2788
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12789
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22790
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32791
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42792
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52793
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62794
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72795
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82796
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92797
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102798
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112799
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122800
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132801
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142802
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152803
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162804
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172805
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182806
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192807
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202808
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212809
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222810
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232811
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242812
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252813
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262814
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272815
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282816
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292817
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302818
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312819
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322820
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332821
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342822
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352823
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362824
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372825
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382826
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392827
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402828
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412829
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422830
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432831
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442832
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452833
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462834
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472835
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482836
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492837
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502838
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512839
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522840
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532841
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542842
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552843
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562844
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572845
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582846
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592847
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602848
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612849
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622850
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632851
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2854:
    ldloc UWP_RESULT2787
    stloc RES2636
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2636
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2635
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2633:
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

