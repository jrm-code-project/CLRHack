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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3354'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3350'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3354'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3350'
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
BLOCK_END_MAIN_3075:
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
    .locals init (object TEMP3351, object UWP_V633349, object UWP_V623348, object UWP_V613347, object UWP_V603346, object UWP_V593345, object UWP_V583344, object UWP_V573343, object UWP_V563342, object UWP_V553341, object UWP_V543340, object UWP_V533339, object UWP_V523338, object UWP_V513337, object UWP_V503336, object UWP_V493335, object UWP_V483334, object UWP_V473333, object UWP_V463332, object UWP_V453331, object UWP_V443330, object UWP_V433329, object UWP_V423328, object UWP_V413327, object UWP_V403326, object UWP_V393325, object UWP_V383324, object UWP_V373323, object UWP_V363322, object UWP_V353321, object UWP_V343320, object UWP_V333319, object UWP_V323318, object UWP_V313317, object UWP_V303316, object UWP_V293315, object UWP_V283314, object UWP_V273313, object UWP_V263312, object UWP_V253311, object UWP_V243310, object UWP_V233309, object UWP_V223308, object UWP_V213307, object UWP_V203306, object UWP_V193305, object UWP_V183304, object UWP_V173303, object UWP_V163302, object UWP_V153301, object UWP_V143300, object UWP_V133299, object UWP_V123298, object UWP_V113297, object UWP_V103296, object UWP_V93295, object UWP_V83294, object UWP_V73293, object UWP_V63292, object UWP_V53291, object UWP_V43290, object UWP_V33289, object UWP_V23288, object UWP_V13287, object UWP_COUNT3286, object UWP_RESULT3285, object CLEANUP_RUN3071)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN3071
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_3072
    stloc UWP_RESULT3285
    leave DONE3355
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3286
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13287
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23288
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33289
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43290
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53291
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63292
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73293
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83294
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93295
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103296
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113297
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123298
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133299
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143300
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153301
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163302
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173303
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183304
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193305
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203306
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213307
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223308
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233309
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243310
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253311
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263312
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273313
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283314
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293315
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303316
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313317
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323318
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333319
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343320
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353321
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363322
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373323
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383324
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393325
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403326
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413327
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423328
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433329
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443330
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453331
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463332
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473333
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483334
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493335
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503336
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513337
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523338
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533339
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543340
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553341
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563342
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573343
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583344
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593345
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603346
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613347
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623348
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633349
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3071
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3350'
    stloc TEMP3351
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3351
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3351
    pop
    ldloc UWP_COUNT3286
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13287
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23288
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33289
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43290
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53291
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63292
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73293
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83294
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93295
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103296
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113297
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123298
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133299
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143300
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153301
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163302
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173303
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183304
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193305
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203306
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213307
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223308
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233309
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243310
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253311
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263312
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273313
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283314
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293315
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303316
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313317
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323318
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333319
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343320
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353321
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363322
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373323
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383324
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393325
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403326
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413327
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423328
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433329
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443330
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453331
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463332
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473333
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483334
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493335
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503336
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513337
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523338
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533339
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543340
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553341
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563342
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573343
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583344
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593345
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603346
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613347
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623348
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633349
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3355:
    ldloc UWP_RESULT3285
    pop
TAG_TARGET_3072:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN3071
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3350'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3352
    ldnull
    br END3353
TRUE3352:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3354'
END3353:
    nop
    ldnull
    ceq
    brtrue ELSE3356
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3357
ELSE3356:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3357:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_3069:
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
    .locals init (object RES3066, object TEMP3283, object TEMP3282, object UWP_V633281, object UWP_V623280, object UWP_V613279, object UWP_V603278, object UWP_V593277, object UWP_V583276, object UWP_V573275, object UWP_V563274, object UWP_V553273, object UWP_V543272, object UWP_V533271, object UWP_V523270, object UWP_V513269, object UWP_V503268, object UWP_V493267, object UWP_V483266, object UWP_V473265, object UWP_V463264, object UWP_V453263, object UWP_V443262, object UWP_V433261, object UWP_V423260, object UWP_V413259, object UWP_V403258, object UWP_V393257, object UWP_V383256, object UWP_V373255, object UWP_V363254, object UWP_V353253, object UWP_V343252, object UWP_V333251, object UWP_V323250, object UWP_V313249, object UWP_V303248, object UWP_V293247, object UWP_V283246, object UWP_V273245, object UWP_V263244, object UWP_V253243, object UWP_V243242, object UWP_V233241, object UWP_V223240, object UWP_V213239, object UWP_V203238, object UWP_V193237, object UWP_V183236, object UWP_V173235, object UWP_V163234, object UWP_V153233, object UWP_V143232, object UWP_V133231, object UWP_V123230, object UWP_V113229, object UWP_V103228, object UWP_V93227, object UWP_V83226, object UWP_V73225, object UWP_V63224, object UWP_V53223, object UWP_V43222, object UWP_V33221, object UWP_V23220, object UWP_V13219, object UWP_COUNT3218, object UWP_RESULT3217, object X3065)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X3065
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3065
    ldstr "mutated"
    stloc TEMP3282
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3282
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3282
    pop
    ldstr "result"
    stloc UWP_RESULT3217
    leave DONE3284
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT3218
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V13219
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V23220
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V33221
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V43222
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V53223
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V63224
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V73225
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V83226
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V93227
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V103228
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V113229
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V123230
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V133231
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V143232
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V153233
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V163234
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V173235
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V183236
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V193237
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V203238
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V213239
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V223240
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V233241
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V243242
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V253243
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V263244
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V273245
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V283246
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V293247
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V303248
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V313249
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V323250
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V333251
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V343252
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353253
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363254
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373255
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383256
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393257
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403258
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413259
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423260
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433261
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443262
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453263
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463264
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473265
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483266
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493267
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503268
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513269
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523270
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533271
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543272
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553273
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563274
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573275
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583276
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593277
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603278
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613279
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623280
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633281
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3065
    ldstr "cleaned"
    stloc TEMP3283
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3283
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3283
    pop
    ldloc UWP_COUNT3218
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V13219
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V23220
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V33221
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V43222
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V53223
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V63224
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V73225
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V83226
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V93227
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V103228
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V113229
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V123230
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V133231
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V143232
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V153233
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V163234
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V173235
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V183236
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V193237
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V203238
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V213239
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V223240
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V233241
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V243242
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V253243
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V263244
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V273245
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V283246
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V293247
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V303248
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V313249
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V323250
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V333251
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V343252
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353253
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363254
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373255
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383256
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393257
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403258
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413259
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423260
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433261
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443262
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453263
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463264
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473265
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483266
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493267
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503268
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513269
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523270
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533271
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543272
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553273
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563274
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573275
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583276
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593277
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603278
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613279
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623280
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633281
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3284:
    ldloc UWP_RESULT3217
    stloc RES3066
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES3066
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X3065
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_3063:
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

