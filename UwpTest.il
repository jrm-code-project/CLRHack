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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3100'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3096'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3100'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3096'
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
BLOCK_END_MAIN_2821:
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
    .locals init (object TEMP3097, object UWP_V633095, object UWP_V623094, object UWP_V613093, object UWP_V603092, object UWP_V593091, object UWP_V583090, object UWP_V573089, object UWP_V563088, object UWP_V553087, object UWP_V543086, object UWP_V533085, object UWP_V523084, object UWP_V513083, object UWP_V503082, object UWP_V493081, object UWP_V483080, object UWP_V473079, object UWP_V463078, object UWP_V453077, object UWP_V443076, object UWP_V433075, object UWP_V423074, object UWP_V413073, object UWP_V403072, object UWP_V393071, object UWP_V383070, object UWP_V373069, object UWP_V363068, object UWP_V353067, object UWP_V343066, object UWP_V333065, object UWP_V323064, object UWP_V313063, object UWP_V303062, object UWP_V293061, object UWP_V283060, object UWP_V273059, object UWP_V263058, object UWP_V253057, object UWP_V243056, object UWP_V233055, object UWP_V223054, object UWP_V213053, object UWP_V203052, object UWP_V193051, object UWP_V183050, object UWP_V173049, object UWP_V163048, object UWP_V153047, object UWP_V143046, object UWP_V133045, object UWP_V123044, object UWP_V113043, object UWP_V103042, object UWP_V93041, object UWP_V83040, object UWP_V73039, object UWP_V63038, object UWP_V53037, object UWP_V43036, object UWP_V33035, object UWP_V23034, object UWP_V13033, object UWP_COUNT3032, object UWP_RESULT3031, object CLEANUP_RUN2817)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2817
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2818
    stloc UWP_RESULT3031
    leave DONE3101
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3032
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13033
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23034
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33035
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43036
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53037
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63038
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73039
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83040
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93041
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103042
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113043
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123044
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133045
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143046
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153047
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163048
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173049
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183050
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193051
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203052
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213053
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223054
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233055
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243056
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253057
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263058
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273059
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283060
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293061
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303062
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313063
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323064
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333065
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343066
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353067
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363068
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373069
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383070
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393071
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403072
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413073
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423074
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433075
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443076
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453077
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463078
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473079
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483080
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493081
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503082
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513083
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523084
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533085
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543086
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553087
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563088
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573089
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583090
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593091
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603092
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613093
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623094
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633095
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2817
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3096'
    stloc TEMP3097
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3097
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3097
    pop
    ldloc UWP_COUNT3032
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13033
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23034
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33035
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43036
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53037
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63038
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73039
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83040
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93041
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103042
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113043
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123044
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133045
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143046
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153047
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163048
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173049
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183050
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193051
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203052
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213053
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223054
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233055
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243056
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253057
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263058
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273059
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283060
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293061
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303062
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313063
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323064
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333065
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343066
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353067
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363068
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373069
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383070
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393071
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403072
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413073
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423074
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433075
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443076
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453077
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463078
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473079
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483080
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493081
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503082
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513083
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523084
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533085
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543086
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553087
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563088
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573089
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583090
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593091
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603092
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613093
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623094
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633095
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3101:
    ldloc UWP_RESULT3031
    pop
TAG_TARGET_2818:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2817
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3096'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3098
    ldnull
    br END3099
TRUE3098:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3100'
END3099:
    nop
    ldnull
    ceq
    brtrue ELSE3102
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3103
ELSE3102:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3103:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2815:
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
    .locals init (object RES2812, object TEMP3029, object TEMP3028, object UWP_V633027, object UWP_V623026, object UWP_V613025, object UWP_V603024, object UWP_V593023, object UWP_V583022, object UWP_V573021, object UWP_V563020, object UWP_V553019, object UWP_V543018, object UWP_V533017, object UWP_V523016, object UWP_V513015, object UWP_V503014, object UWP_V493013, object UWP_V483012, object UWP_V473011, object UWP_V463010, object UWP_V453009, object UWP_V443008, object UWP_V433007, object UWP_V423006, object UWP_V413005, object UWP_V403004, object UWP_V393003, object UWP_V383002, object UWP_V373001, object UWP_V363000, object UWP_V352999, object UWP_V342998, object UWP_V332997, object UWP_V322996, object UWP_V312995, object UWP_V302994, object UWP_V292993, object UWP_V282992, object UWP_V272991, object UWP_V262990, object UWP_V252989, object UWP_V242988, object UWP_V232987, object UWP_V222986, object UWP_V212985, object UWP_V202984, object UWP_V192983, object UWP_V182982, object UWP_V172981, object UWP_V162980, object UWP_V152979, object UWP_V142978, object UWP_V132977, object UWP_V122976, object UWP_V112975, object UWP_V102974, object UWP_V92973, object UWP_V82972, object UWP_V72971, object UWP_V62970, object UWP_V52969, object UWP_V42968, object UWP_V32967, object UWP_V22966, object UWP_V12965, object UWP_COUNT2964, object UWP_RESULT2963, object X2811)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2811
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2811
    ldstr "mutated"
    stloc TEMP3028
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3028
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3028
    pop
    ldstr "result"
    stloc UWP_RESULT2963
    leave DONE3030
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2964
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12965
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22966
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32967
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42968
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52969
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62970
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72971
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82972
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92973
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102974
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112975
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122976
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132977
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142978
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152979
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162980
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172981
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182982
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192983
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202984
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212985
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222986
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232987
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242988
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252989
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262990
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272991
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282992
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292993
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302994
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312995
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322996
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332997
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342998
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352999
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363000
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373001
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383002
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393003
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403004
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413005
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423006
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433007
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443008
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453009
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463010
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473011
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483012
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493013
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503014
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513015
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523016
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533017
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543018
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553019
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563020
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573021
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583022
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593023
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603024
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613025
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623026
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633027
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2811
    ldstr "cleaned"
    stloc TEMP3029
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3029
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3029
    pop
    ldloc UWP_COUNT2964
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12965
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22966
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32967
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42968
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52969
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62970
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72971
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82972
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92973
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102974
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112975
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122976
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132977
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142978
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152979
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162980
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172981
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182982
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192983
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202984
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212985
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222986
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232987
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242988
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252989
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262990
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272991
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282992
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292993
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302994
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312995
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322996
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332997
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342998
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352999
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363000
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373001
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383002
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393003
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403004
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413005
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423006
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433007
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443008
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453009
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463010
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473011
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483012
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493013
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503014
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513015
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523016
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533017
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543018
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553019
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563020
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573021
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583022
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593023
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603024
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613025
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623026
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633027
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3030:
    ldloc UWP_RESULT2963
    stloc RES2812
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2812
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2811
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2809:
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

