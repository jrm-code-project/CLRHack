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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3971'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3967'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3971'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3967'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
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
    call object Program::'TEST_UWP_BASIC'()
    pop
    tail. call object Program::'TEST_UWP_NESTED_GO'()
    ret
BLOCK_END_MAIN_3692:
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object TEMP3968, object UWP_V633966, object UWP_V623965, object UWP_V613964, object UWP_V603963, object UWP_V593962, object UWP_V583961, object UWP_V573960, object UWP_V563959, object UWP_V553958, object UWP_V543957, object UWP_V533956, object UWP_V523955, object UWP_V513954, object UWP_V503953, object UWP_V493952, object UWP_V483951, object UWP_V473950, object UWP_V463949, object UWP_V453948, object UWP_V443947, object UWP_V433946, object UWP_V423945, object UWP_V413944, object UWP_V403943, object UWP_V393942, object UWP_V383941, object UWP_V373940, object UWP_V363939, object UWP_V353938, object UWP_V343937, object UWP_V333936, object UWP_V323935, object UWP_V313934, object UWP_V303933, object UWP_V293932, object UWP_V283931, object UWP_V273930, object UWP_V263929, object UWP_V253928, object UWP_V243927, object UWP_V233926, object UWP_V223925, object UWP_V213924, object UWP_V203923, object UWP_V193922, object UWP_V183921, object UWP_V173920, object UWP_V163919, object UWP_V153918, object UWP_V143917, object UWP_V133916, object UWP_V123915, object UWP_V113914, object UWP_V103913, object UWP_V93912, object UWP_V83911, object UWP_V73910, object UWP_V63909, object UWP_V53908, object UWP_V43907, object UWP_V33906, object UWP_V23905, object UWP_V13904, object UWP_COUNT3903, object UWP_RESULT3902, object CLEANUP_RUN3688)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN3688
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_3689
    stloc UWP_RESULT3902
    leave DONE3972
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3903
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13904
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23905
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33906
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43907
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53908
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63909
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73910
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83911
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93912
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103913
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113914
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123915
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133916
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143917
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153918
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163919
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173920
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183921
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193922
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203923
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213924
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223925
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233926
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243927
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253928
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263929
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273930
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283931
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293932
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303933
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313934
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323935
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333936
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343937
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353938
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363939
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373940
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383941
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393942
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403943
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413944
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423945
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433946
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443947
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453948
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463949
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473950
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483951
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493952
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503953
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513954
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523955
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533956
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543957
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553958
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563959
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573960
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583961
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593962
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603963
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613964
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623965
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633966
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3688
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3967'
    stloc TEMP3968
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3968
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3968
    pop
    ldloc UWP_COUNT3903
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13904
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23905
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33906
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43907
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53908
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63909
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73910
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83911
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93912
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103913
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113914
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123915
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133916
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143917
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153918
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163919
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173920
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183921
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193922
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203923
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213924
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223925
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233926
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243927
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253928
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263929
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273930
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283931
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293932
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303933
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313934
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323935
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333936
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343937
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353938
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363939
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373940
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383941
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393942
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403943
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413944
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423945
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433946
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443947
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453948
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463949
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473950
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483951
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493952
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503953
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513954
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523955
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533956
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543957
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553958
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563959
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573960
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583961
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593962
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603963
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613964
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623965
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633966
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3972:
    ldloc UWP_RESULT3902
    pop
TAG_TARGET_3689:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3688
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3967'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3969
    ldnull
    br END3970
TRUE3969:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3971'
END3970:
    nop
    ldnull
    ceq
    brtrue ELSE3973
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3974
ELSE3973:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3974:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_3686:
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object RES3683, object TEMP3900, object TEMP3899, object UWP_V633898, object UWP_V623897, object UWP_V613896, object UWP_V603895, object UWP_V593894, object UWP_V583893, object UWP_V573892, object UWP_V563891, object UWP_V553890, object UWP_V543889, object UWP_V533888, object UWP_V523887, object UWP_V513886, object UWP_V503885, object UWP_V493884, object UWP_V483883, object UWP_V473882, object UWP_V463881, object UWP_V453880, object UWP_V443879, object UWP_V433878, object UWP_V423877, object UWP_V413876, object UWP_V403875, object UWP_V393874, object UWP_V383873, object UWP_V373872, object UWP_V363871, object UWP_V353870, object UWP_V343869, object UWP_V333868, object UWP_V323867, object UWP_V313866, object UWP_V303865, object UWP_V293864, object UWP_V283863, object UWP_V273862, object UWP_V263861, object UWP_V253860, object UWP_V243859, object UWP_V233858, object UWP_V223857, object UWP_V213856, object UWP_V203855, object UWP_V193854, object UWP_V183853, object UWP_V173852, object UWP_V163851, object UWP_V153850, object UWP_V143849, object UWP_V133848, object UWP_V123847, object UWP_V113846, object UWP_V103845, object UWP_V93844, object UWP_V83843, object UWP_V73842, object UWP_V63841, object UWP_V53840, object UWP_V43839, object UWP_V33838, object UWP_V23837, object UWP_V13836, object UWP_COUNT3835, object UWP_RESULT3834, object X3682)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X3682
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3682
    ldstr "mutated"
    stloc TEMP3899
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3899
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3899
    pop
    ldstr "result"
    stloc UWP_RESULT3834
    leave DONE3901
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3835
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13836
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23837
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33838
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43839
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53840
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63841
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73842
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83843
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93844
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103845
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113846
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123847
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133848
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143849
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153850
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163851
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173852
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183853
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193854
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203855
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213856
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223857
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233858
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243859
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253860
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263861
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273862
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283863
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293864
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303865
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313866
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323867
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333868
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343869
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353870
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363871
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373872
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383873
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393874
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403875
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413876
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423877
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433878
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443879
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453880
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463881
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473882
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483883
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493884
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503885
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513886
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523887
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533888
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543889
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553890
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563891
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573892
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583893
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593894
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603895
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613896
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623897
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633898
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3682
    ldstr "cleaned"
    stloc TEMP3900
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3900
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3900
    pop
    ldloc UWP_COUNT3835
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13836
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23837
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33838
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43839
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53840
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63841
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73842
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83843
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93844
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103845
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113846
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123847
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133848
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143849
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153850
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163851
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173852
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183853
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193854
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203855
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213856
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223857
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233858
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243859
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253860
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263861
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273862
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283863
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293864
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303865
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313866
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323867
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333868
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343869
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353870
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363871
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373872
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383873
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393874
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403875
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413876
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423877
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433878
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443879
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453880
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463881
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473882
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483883
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493884
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503885
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513886
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523887
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533888
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543889
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553890
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563891
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573892
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583893
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593894
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603895
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613896
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623897
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633898
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3901:
    ldloc UWP_RESULT3834
    stloc RES3683
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES3683
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3682
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_3680:
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

