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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3328'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3324'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3328'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3324'
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
BLOCK_END_MAIN_3049:
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
    .locals init (object TEMP3325, object UWP_V633323, object UWP_V623322, object UWP_V613321, object UWP_V603320, object UWP_V593319, object UWP_V583318, object UWP_V573317, object UWP_V563316, object UWP_V553315, object UWP_V543314, object UWP_V533313, object UWP_V523312, object UWP_V513311, object UWP_V503310, object UWP_V493309, object UWP_V483308, object UWP_V473307, object UWP_V463306, object UWP_V453305, object UWP_V443304, object UWP_V433303, object UWP_V423302, object UWP_V413301, object UWP_V403300, object UWP_V393299, object UWP_V383298, object UWP_V373297, object UWP_V363296, object UWP_V353295, object UWP_V343294, object UWP_V333293, object UWP_V323292, object UWP_V313291, object UWP_V303290, object UWP_V293289, object UWP_V283288, object UWP_V273287, object UWP_V263286, object UWP_V253285, object UWP_V243284, object UWP_V233283, object UWP_V223282, object UWP_V213281, object UWP_V203280, object UWP_V193279, object UWP_V183278, object UWP_V173277, object UWP_V163276, object UWP_V153275, object UWP_V143274, object UWP_V133273, object UWP_V123272, object UWP_V113271, object UWP_V103270, object UWP_V93269, object UWP_V83268, object UWP_V73267, object UWP_V63266, object UWP_V53265, object UWP_V43264, object UWP_V33263, object UWP_V23262, object UWP_V13261, object UWP_COUNT3260, object UWP_RESULT3259, object CLEANUP_RUN3045)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN3045
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_3046
    stloc UWP_RESULT3259
    leave DONE3329
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3260
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13261
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23262
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33263
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43264
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53265
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63266
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73267
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83268
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93269
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103270
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113271
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123272
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133273
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143274
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153275
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163276
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173277
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183278
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193279
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203280
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213281
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223282
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233283
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243284
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253285
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263286
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273287
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283288
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293289
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303290
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313291
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323292
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333293
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343294
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353295
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363296
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373297
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383298
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393299
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403300
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413301
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423302
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433303
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443304
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453305
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463306
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473307
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483308
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493309
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503310
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513311
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523312
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533313
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543314
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553315
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563316
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573317
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583318
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593319
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603320
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613321
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623322
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633323
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3045
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3324'
    stloc TEMP3325
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3325
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3325
    pop
    ldloc UWP_COUNT3260
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13261
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23262
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33263
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43264
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53265
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63266
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73267
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83268
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93269
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103270
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113271
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123272
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133273
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143274
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153275
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163276
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173277
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183278
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193279
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203280
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213281
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223282
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233283
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243284
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253285
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263286
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273287
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283288
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293289
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303290
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313291
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323292
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333293
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343294
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353295
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363296
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373297
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383298
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393299
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403300
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413301
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423302
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433303
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443304
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453305
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463306
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473307
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483308
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493309
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503310
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513311
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523312
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533313
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543314
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553315
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563316
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573317
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583318
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593319
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603320
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613321
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623322
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633323
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3329:
    ldloc UWP_RESULT3259
    pop
TAG_TARGET_3046:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3045
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3324'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3326
    ldnull
    br END3327
TRUE3326:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3328'
END3327:
    nop
    ldnull
    ceq
    brtrue ELSE3330
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3331
ELSE3330:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3331:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_3043:
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
    .locals init (object RES3040, object TEMP3257, object TEMP3256, object UWP_V633255, object UWP_V623254, object UWP_V613253, object UWP_V603252, object UWP_V593251, object UWP_V583250, object UWP_V573249, object UWP_V563248, object UWP_V553247, object UWP_V543246, object UWP_V533245, object UWP_V523244, object UWP_V513243, object UWP_V503242, object UWP_V493241, object UWP_V483240, object UWP_V473239, object UWP_V463238, object UWP_V453237, object UWP_V443236, object UWP_V433235, object UWP_V423234, object UWP_V413233, object UWP_V403232, object UWP_V393231, object UWP_V383230, object UWP_V373229, object UWP_V363228, object UWP_V353227, object UWP_V343226, object UWP_V333225, object UWP_V323224, object UWP_V313223, object UWP_V303222, object UWP_V293221, object UWP_V283220, object UWP_V273219, object UWP_V263218, object UWP_V253217, object UWP_V243216, object UWP_V233215, object UWP_V223214, object UWP_V213213, object UWP_V203212, object UWP_V193211, object UWP_V183210, object UWP_V173209, object UWP_V163208, object UWP_V153207, object UWP_V143206, object UWP_V133205, object UWP_V123204, object UWP_V113203, object UWP_V103202, object UWP_V93201, object UWP_V83200, object UWP_V73199, object UWP_V63198, object UWP_V53197, object UWP_V43196, object UWP_V33195, object UWP_V23194, object UWP_V13193, object UWP_COUNT3192, object UWP_RESULT3191, object X3039)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X3039
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3039
    ldstr "mutated"
    stloc TEMP3256
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3256
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3256
    pop
    ldstr "result"
    stloc UWP_RESULT3191
    leave DONE3258
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3192
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13193
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23194
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33195
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43196
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53197
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63198
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73199
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83200
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93201
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103202
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113203
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123204
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133205
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143206
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153207
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163208
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173209
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183210
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193211
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203212
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213213
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223214
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233215
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243216
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253217
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263218
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273219
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283220
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293221
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303222
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313223
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323224
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333225
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343226
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353227
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363228
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373229
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383230
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393231
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403232
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413233
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423234
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433235
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443236
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453237
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463238
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473239
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483240
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493241
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503242
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513243
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523244
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533245
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543246
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553247
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563248
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573249
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583250
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593251
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603252
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613253
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623254
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633255
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3039
    ldstr "cleaned"
    stloc TEMP3257
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3257
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3257
    pop
    ldloc UWP_COUNT3192
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13193
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23194
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33195
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43196
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53197
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63198
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73199
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83200
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93201
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103202
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113203
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123204
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133205
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143206
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153207
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163208
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173209
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183210
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193211
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203212
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213213
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223214
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233215
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243216
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253217
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263218
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273219
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283220
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293221
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303222
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313223
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323224
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333225
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343226
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353227
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363228
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373229
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383230
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393231
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403232
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413233
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423234
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433235
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443236
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453237
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463238
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473239
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483240
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493241
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503242
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513243
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523244
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533245
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543246
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553247
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563248
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573249
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583250
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593251
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603252
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613253
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623254
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633255
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3258:
    ldloc UWP_RESULT3191
    stloc RES3040
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES3040
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3039
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_3037:
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

