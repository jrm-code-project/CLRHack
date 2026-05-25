.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S9266'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T9262'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S9266'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T9262'
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
    call object Program::'TEST_UWP_BASIC'()
    pop
    tail. call object Program::'TEST_UWP_NESTED_GO'()
    ret
BLOCK_END_MAIN_8977:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
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
    .locals init (object CELL_VAL_TMP9269, object CELL_TMP9268, object TEMP9263, object UWP_V639261, object UWP_V629260, object UWP_V619259, object UWP_V609258, object UWP_V599257, object UWP_V589256, object UWP_V579255, object UWP_V569254, object UWP_V559253, object UWP_V549252, object UWP_V539251, object UWP_V529250, object UWP_V519249, object UWP_V509248, object UWP_V499247, object UWP_V489246, object UWP_V479245, object UWP_V469244, object UWP_V459243, object UWP_V449242, object UWP_V439241, object UWP_V429240, object UWP_V419239, object UWP_V409238, object UWP_V399237, object UWP_V389236, object UWP_V379235, object UWP_V369234, object UWP_V359233, object UWP_V349232, object UWP_V339231, object UWP_V329230, object UWP_V319229, object UWP_V309228, object UWP_V299227, object UWP_V289226, object UWP_V279225, object UWP_V269224, object UWP_V259223, object UWP_V249222, object UWP_V239221, object UWP_V229220, object UWP_V219219, object UWP_V209218, object UWP_V199217, object UWP_V189216, object UWP_V179215, object UWP_V169214, object UWP_V159213, object UWP_V149212, object UWP_V139211, object UWP_V129210, object UWP_V119209, object UWP_V109208, object UWP_V99207, object UWP_V89206, object UWP_V79205, object UWP_V69204, object UWP_V59203, object UWP_V49202, object UWP_V39201, object UWP_V29200, object UWP_V19199, object UWP_COUNT9198, object UWP_RESULT9197, object CLEANUP_RUN8972)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN8972
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_8973
    stloc UWP_RESULT9197
    leave DONE9267
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT9198
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V19199
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V29200
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V39201
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V49202
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V59203
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V69204
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V79205
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V89206
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V99207
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V109208
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V119209
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V129210
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V139211
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V149212
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V159213
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V169214
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V179215
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V189216
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V199217
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V209218
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V219219
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V229220
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V239221
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V249222
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V259223
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V269224
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V279225
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V289226
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V299227
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V309228
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V319229
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V329230
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V339231
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V349232
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V359233
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V369234
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V379235
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V389236
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V399237
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V409238
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V419239
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V429240
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V439241
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V449242
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V459243
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V469244
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V479245
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V489246
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V499247
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V509248
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V519249
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V529250
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V539251
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V549252
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V559253
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V569254
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V579255
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V589256
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V599257
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V609258
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V619259
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V629260
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V639261
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8972
    stloc CELL_TMP9268
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T9262'
    stloc CELL_VAL_TMP9269
    ldloc CELL_TMP9268
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9269
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9269
    pop
    ldloc UWP_COUNT9198
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V19199
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V29200
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V39201
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V49202
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V59203
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V69204
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V79205
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V89206
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V99207
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V109208
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V119209
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V129210
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V139211
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V149212
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V159213
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V169214
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V179215
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V189216
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V199217
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V209218
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V219219
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V229220
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V239221
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V249222
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V259223
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V269224
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V279225
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V289226
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V299227
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V309228
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V319229
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V329230
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V339231
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V349232
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V359233
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V369234
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V379235
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V389236
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V399237
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V409238
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V419239
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V429240
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V439241
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V449242
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V459243
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V469244
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V479245
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V489246
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V499247
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V509248
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V519249
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V529250
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V539251
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V549252
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V559253
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V569254
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V579255
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V589256
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V599257
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V609258
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V619259
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V629260
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V639261
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE9267:
    ldloc UWP_RESULT9197
    pop
TAG_TARGET_8973:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8972
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T9262'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE9264
    ldnull
    br END9265
TRUE9264:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S9266'
END9265:
    nop
    ldnull
    ceq
    brtrue ELSE9270
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END9271
ELSE9270:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END9271:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_8970:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
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
    .locals init (object CELL_VAL_TMP9196, object CELL_TMP9195, object CELL_VAL_TMP9194, object CELL_TMP9193, object RES8966, object TEMP9191, object TEMP9190, object UWP_V639189, object UWP_V629188, object UWP_V619187, object UWP_V609186, object UWP_V599185, object UWP_V589184, object UWP_V579183, object UWP_V569182, object UWP_V559181, object UWP_V549180, object UWP_V539179, object UWP_V529178, object UWP_V519177, object UWP_V509176, object UWP_V499175, object UWP_V489174, object UWP_V479173, object UWP_V469172, object UWP_V459171, object UWP_V449170, object UWP_V439169, object UWP_V429168, object UWP_V419167, object UWP_V409166, object UWP_V399165, object UWP_V389164, object UWP_V379163, object UWP_V369162, object UWP_V359161, object UWP_V349160, object UWP_V339159, object UWP_V329158, object UWP_V319157, object UWP_V309156, object UWP_V299155, object UWP_V289154, object UWP_V279153, object UWP_V269152, object UWP_V259151, object UWP_V249150, object UWP_V239149, object UWP_V229148, object UWP_V219147, object UWP_V209146, object UWP_V199145, object UWP_V189144, object UWP_V179143, object UWP_V169142, object UWP_V159141, object UWP_V149140, object UWP_V139139, object UWP_V129138, object UWP_V119137, object UWP_V109136, object UWP_V99135, object UWP_V89134, object UWP_V79133, object UWP_V69132, object UWP_V59131, object UWP_V49130, object UWP_V39129, object UWP_V29128, object UWP_V19127, object UWP_COUNT9126, object UWP_RESULT9125, object X8965)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X8965
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8965
    stloc CELL_TMP9193
    ldstr "mutated"
    stloc CELL_VAL_TMP9194
    ldloc CELL_TMP9193
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9194
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9194
    pop
    ldstr "result"
    stloc UWP_RESULT9125
    leave DONE9192
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT9126
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V19127
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V29128
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V39129
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V49130
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V59131
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V69132
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V79133
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V89134
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V99135
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V109136
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V119137
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V129138
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V139139
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V149140
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V159141
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V169142
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V179143
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V189144
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V199145
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V209146
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V219147
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V229148
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V239149
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V249150
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V259151
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V269152
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V279153
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V289154
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V299155
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V309156
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V319157
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V329158
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V339159
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V349160
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V359161
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V369162
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V379163
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V389164
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V399165
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V409166
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V419167
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V429168
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V439169
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V449170
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V459171
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V469172
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V479173
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V489174
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V499175
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V509176
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V519177
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V529178
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V539179
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V549180
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V559181
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V569182
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V579183
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V589184
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V599185
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V609186
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V619187
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V629188
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V639189
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8965
    stloc CELL_TMP9195
    ldstr "cleaned"
    stloc CELL_VAL_TMP9196
    ldloc CELL_TMP9195
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9196
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9196
    pop
    ldloc UWP_COUNT9126
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V19127
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V29128
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V39129
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V49130
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V59131
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V69132
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V79133
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V89134
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V99135
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V109136
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V119137
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V129138
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V139139
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V149140
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V159141
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V169142
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V179143
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V189144
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V199145
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V209146
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V219147
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V229148
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V239149
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V249150
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V259151
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V269152
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V279153
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V289154
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V299155
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V309156
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V319157
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V329158
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V339159
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V349160
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V359161
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V369162
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V379163
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V389164
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V399165
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V409166
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V419167
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V429168
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V439169
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V449170
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V459171
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V469172
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V479173
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V489174
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V499175
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V509176
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V519177
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V529178
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V539179
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V549180
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V559181
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V569182
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V579183
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V589184
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V599185
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V609186
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V619187
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V629188
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V639189
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE9192:
    ldloc UWP_RESULT9125
    stloc RES8966
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES8966
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8965
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_8963:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

