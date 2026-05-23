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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3122'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3118'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3122'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3118'
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
BLOCK_END_MAIN_2843:
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
    .locals init (object TEMP3119, object UWP_V633117, object UWP_V623116, object UWP_V613115, object UWP_V603114, object UWP_V593113, object UWP_V583112, object UWP_V573111, object UWP_V563110, object UWP_V553109, object UWP_V543108, object UWP_V533107, object UWP_V523106, object UWP_V513105, object UWP_V503104, object UWP_V493103, object UWP_V483102, object UWP_V473101, object UWP_V463100, object UWP_V453099, object UWP_V443098, object UWP_V433097, object UWP_V423096, object UWP_V413095, object UWP_V403094, object UWP_V393093, object UWP_V383092, object UWP_V373091, object UWP_V363090, object UWP_V353089, object UWP_V343088, object UWP_V333087, object UWP_V323086, object UWP_V313085, object UWP_V303084, object UWP_V293083, object UWP_V283082, object UWP_V273081, object UWP_V263080, object UWP_V253079, object UWP_V243078, object UWP_V233077, object UWP_V223076, object UWP_V213075, object UWP_V203074, object UWP_V193073, object UWP_V183072, object UWP_V173071, object UWP_V163070, object UWP_V153069, object UWP_V143068, object UWP_V133067, object UWP_V123066, object UWP_V113065, object UWP_V103064, object UWP_V93063, object UWP_V83062, object UWP_V73061, object UWP_V63060, object UWP_V53059, object UWP_V43058, object UWP_V33057, object UWP_V23056, object UWP_V13055, object UWP_COUNT3054, object UWP_RESULT3053, object CLEANUP_RUN2839)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2839
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2840
    stloc UWP_RESULT3053
    leave DONE3123
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3054
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13055
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23056
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33057
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43058
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53059
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63060
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73061
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83062
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93063
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103064
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113065
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123066
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133067
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143068
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153069
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163070
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173071
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183072
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193073
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203074
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213075
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223076
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233077
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243078
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253079
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263080
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273081
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283082
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293083
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303084
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313085
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323086
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333087
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343088
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353089
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363090
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373091
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383092
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393093
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403094
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413095
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423096
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433097
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443098
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453099
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463100
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473101
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483102
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493103
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503104
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513105
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523106
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533107
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543108
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553109
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563110
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573111
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583112
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593113
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603114
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613115
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623116
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633117
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2839
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3118'
    stloc TEMP3119
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3119
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3119
    pop
    ldloc UWP_COUNT3054
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13055
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23056
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33057
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43058
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53059
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63060
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73061
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83062
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93063
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103064
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113065
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123066
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133067
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143068
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153069
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163070
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173071
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183072
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193073
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203074
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213075
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223076
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233077
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243078
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253079
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263080
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273081
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283082
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293083
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303084
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313085
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323086
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333087
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343088
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353089
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363090
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373091
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383092
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393093
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403094
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413095
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423096
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433097
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443098
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453099
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463100
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473101
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483102
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493103
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503104
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513105
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523106
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533107
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543108
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553109
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563110
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573111
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583112
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593113
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603114
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613115
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623116
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633117
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3123:
    ldloc UWP_RESULT3053
    pop
TAG_TARGET_2840:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2839
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3118'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3120
    ldnull
    br END3121
TRUE3120:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3122'
END3121:
    nop
    ldnull
    ceq
    brtrue ELSE3124
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3125
ELSE3124:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3125:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2837:
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
    .locals init (object RES2834, object TEMP3051, object TEMP3050, object UWP_V633049, object UWP_V623048, object UWP_V613047, object UWP_V603046, object UWP_V593045, object UWP_V583044, object UWP_V573043, object UWP_V563042, object UWP_V553041, object UWP_V543040, object UWP_V533039, object UWP_V523038, object UWP_V513037, object UWP_V503036, object UWP_V493035, object UWP_V483034, object UWP_V473033, object UWP_V463032, object UWP_V453031, object UWP_V443030, object UWP_V433029, object UWP_V423028, object UWP_V413027, object UWP_V403026, object UWP_V393025, object UWP_V383024, object UWP_V373023, object UWP_V363022, object UWP_V353021, object UWP_V343020, object UWP_V333019, object UWP_V323018, object UWP_V313017, object UWP_V303016, object UWP_V293015, object UWP_V283014, object UWP_V273013, object UWP_V263012, object UWP_V253011, object UWP_V243010, object UWP_V233009, object UWP_V223008, object UWP_V213007, object UWP_V203006, object UWP_V193005, object UWP_V183004, object UWP_V173003, object UWP_V163002, object UWP_V153001, object UWP_V143000, object UWP_V132999, object UWP_V122998, object UWP_V112997, object UWP_V102996, object UWP_V92995, object UWP_V82994, object UWP_V72993, object UWP_V62992, object UWP_V52991, object UWP_V42990, object UWP_V32989, object UWP_V22988, object UWP_V12987, object UWP_COUNT2986, object UWP_RESULT2985, object X2833)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2833
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2833
    ldstr "mutated"
    stloc TEMP3050
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3050
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3050
    pop
    ldstr "result"
    stloc UWP_RESULT2985
    leave DONE3052
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2986
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12987
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22988
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32989
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42990
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52991
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62992
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72993
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82994
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92995
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102996
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112997
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122998
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132999
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143000
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153001
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163002
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173003
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183004
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193005
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203006
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213007
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223008
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233009
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243010
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253011
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263012
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273013
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283014
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293015
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303016
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313017
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323018
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333019
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343020
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353021
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363022
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373023
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383024
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393025
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403026
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413027
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423028
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433029
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443030
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453031
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463032
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473033
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483034
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493035
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503036
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513037
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523038
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533039
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543040
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553041
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563042
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573043
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583044
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593045
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603046
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613047
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623048
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633049
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2833
    ldstr "cleaned"
    stloc TEMP3051
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3051
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3051
    pop
    ldloc UWP_COUNT2986
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12987
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22988
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32989
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42990
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52991
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62992
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72993
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82994
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92995
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102996
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112997
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122998
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132999
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143000
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153001
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163002
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173003
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183004
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193005
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203006
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213007
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223008
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233009
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243010
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253011
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263012
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273013
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283014
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293015
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303016
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313017
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323018
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333019
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343020
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353021
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363022
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373023
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383024
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393025
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403026
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413027
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423028
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433029
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443030
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453031
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463032
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473033
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483034
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493035
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503036
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513037
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523038
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533039
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543040
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553041
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563042
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573043
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583044
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593045
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603046
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613047
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623048
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633049
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3052:
    ldloc UWP_RESULT2985
    stloc RES2834
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2834
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2833
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2831:
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

