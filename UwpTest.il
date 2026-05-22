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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2906'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2902'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2906'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2902'
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
BLOCK_END_MAIN_2627:
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
    .locals init (object TEMP2903, object UWP_V632901, object UWP_V622900, object UWP_V612899, object UWP_V602898, object UWP_V592897, object UWP_V582896, object UWP_V572895, object UWP_V562894, object UWP_V552893, object UWP_V542892, object UWP_V532891, object UWP_V522890, object UWP_V512889, object UWP_V502888, object UWP_V492887, object UWP_V482886, object UWP_V472885, object UWP_V462884, object UWP_V452883, object UWP_V442882, object UWP_V432881, object UWP_V422880, object UWP_V412879, object UWP_V402878, object UWP_V392877, object UWP_V382876, object UWP_V372875, object UWP_V362874, object UWP_V352873, object UWP_V342872, object UWP_V332871, object UWP_V322870, object UWP_V312869, object UWP_V302868, object UWP_V292867, object UWP_V282866, object UWP_V272865, object UWP_V262864, object UWP_V252863, object UWP_V242862, object UWP_V232861, object UWP_V222860, object UWP_V212859, object UWP_V202858, object UWP_V192857, object UWP_V182856, object UWP_V172855, object UWP_V162854, object UWP_V152853, object UWP_V142852, object UWP_V132851, object UWP_V122850, object UWP_V112849, object UWP_V102848, object UWP_V92847, object UWP_V82846, object UWP_V72845, object UWP_V62844, object UWP_V52843, object UWP_V42842, object UWP_V32841, object UWP_V22840, object UWP_V12839, object UWP_COUNT2838, object UWP_RESULT2837, object CLEANUP_RUN2623)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2623
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2624
    stloc UWP_RESULT2837
    leave DONE2907
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2838
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12839
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22840
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32841
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42842
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52843
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62844
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72845
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82846
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92847
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102848
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112849
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122850
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132851
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142852
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152853
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162854
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172855
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182856
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192857
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202858
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212859
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222860
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232861
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242862
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252863
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262864
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272865
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282866
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292867
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302868
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312869
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322870
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332871
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342872
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352873
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362874
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372875
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382876
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392877
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402878
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412879
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422880
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432881
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442882
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452883
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462884
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472885
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482886
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492887
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502888
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512889
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522890
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532891
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542892
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552893
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562894
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572895
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582896
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592897
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602898
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612899
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622900
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632901
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2623
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2902'
    stloc TEMP2903
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2903
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2903
    pop
    ldloc UWP_COUNT2838
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12839
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22840
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32841
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42842
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52843
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62844
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72845
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82846
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92847
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102848
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112849
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122850
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132851
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142852
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152853
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162854
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172855
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182856
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192857
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202858
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212859
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222860
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232861
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242862
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252863
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262864
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272865
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282866
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292867
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302868
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312869
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322870
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332871
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342872
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352873
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362874
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372875
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382876
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392877
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402878
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412879
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422880
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432881
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442882
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452883
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462884
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472885
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482886
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492887
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502888
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512889
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522890
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532891
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542892
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552893
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562894
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572895
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582896
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592897
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602898
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612899
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622900
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632901
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2907:
    ldloc UWP_RESULT2837
    pop
TAG_TARGET_2624:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2623
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2902'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2904
    ldnull
    br END2905
TRUE2904:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2906'
END2905:
    nop
    ldnull
    ceq
    brtrue ELSE2908
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2909
ELSE2908:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2909:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2621:
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
    .locals init (object RES2618, object TEMP2835, object TEMP2834, object UWP_V632833, object UWP_V622832, object UWP_V612831, object UWP_V602830, object UWP_V592829, object UWP_V582828, object UWP_V572827, object UWP_V562826, object UWP_V552825, object UWP_V542824, object UWP_V532823, object UWP_V522822, object UWP_V512821, object UWP_V502820, object UWP_V492819, object UWP_V482818, object UWP_V472817, object UWP_V462816, object UWP_V452815, object UWP_V442814, object UWP_V432813, object UWP_V422812, object UWP_V412811, object UWP_V402810, object UWP_V392809, object UWP_V382808, object UWP_V372807, object UWP_V362806, object UWP_V352805, object UWP_V342804, object UWP_V332803, object UWP_V322802, object UWP_V312801, object UWP_V302800, object UWP_V292799, object UWP_V282798, object UWP_V272797, object UWP_V262796, object UWP_V252795, object UWP_V242794, object UWP_V232793, object UWP_V222792, object UWP_V212791, object UWP_V202790, object UWP_V192789, object UWP_V182788, object UWP_V172787, object UWP_V162786, object UWP_V152785, object UWP_V142784, object UWP_V132783, object UWP_V122782, object UWP_V112781, object UWP_V102780, object UWP_V92779, object UWP_V82778, object UWP_V72777, object UWP_V62776, object UWP_V52775, object UWP_V42774, object UWP_V32773, object UWP_V22772, object UWP_V12771, object UWP_COUNT2770, object UWP_RESULT2769, object X2617)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2617
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2617
    ldstr "mutated"
    stloc TEMP2834
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2834
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2834
    pop
    ldstr "result"
    stloc UWP_RESULT2769
    leave DONE2836
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2770
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12771
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22772
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32773
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42774
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52775
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62776
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72777
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82778
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92779
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102780
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112781
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122782
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132783
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142784
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152785
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162786
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172787
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182788
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192789
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202790
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212791
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222792
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232793
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242794
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252795
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262796
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272797
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282798
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292799
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302800
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312801
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322802
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332803
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342804
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352805
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362806
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372807
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382808
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392809
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402810
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412811
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422812
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432813
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442814
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452815
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462816
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472817
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482818
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492819
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502820
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512821
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522822
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532823
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542824
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552825
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562826
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572827
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582828
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592829
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602830
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612831
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622832
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632833
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2617
    ldstr "cleaned"
    stloc TEMP2835
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2835
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2835
    pop
    ldloc UWP_COUNT2770
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12771
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22772
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32773
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42774
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52775
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62776
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72777
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82778
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92779
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102780
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112781
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122782
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132783
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142784
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152785
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162786
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172787
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182788
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192789
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202790
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212791
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222792
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232793
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242794
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252795
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262796
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272797
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282798
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292799
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302800
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312801
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322802
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332803
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342804
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352805
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362806
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372807
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382808
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392809
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402810
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412811
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422812
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432813
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442814
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452815
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462816
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472817
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482818
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492819
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502820
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512821
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522822
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532823
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542824
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552825
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562826
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572827
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582828
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592829
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602830
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612831
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622832
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632833
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2836:
    ldloc UWP_RESULT2769
    stloc RES2618
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2618
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2617
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2615:
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

