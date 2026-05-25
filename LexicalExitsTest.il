.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'LexicalExitsTest' {}
.module 'LexicalExitsTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2251'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2251'
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
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'()
    pop
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'()
    pop
    call object Program::'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'()
    pop
    tail. call object Program::'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'()
    ret
BLOCK_END_MAIN_2047:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP2263, object CELL_TMP2262, object FN_TMP2258, object BLOCK_RESULT_DONE_2041, object CELL_VAL_TMP2255, object CELL_TMP2254, object TEMP2253, object TEMP2252, object K2043, object UWP_V632250, object UWP_V622249, object UWP_V612248, object UWP_V602247, object UWP_V592246, object UWP_V582245, object UWP_V572244, object UWP_V562243, object UWP_V552242, object UWP_V542241, object UWP_V532240, object UWP_V522239, object UWP_V512238, object UWP_V502237, object UWP_V492236, object UWP_V482235, object UWP_V472234, object UWP_V462233, object UWP_V452232, object UWP_V442231, object UWP_V432230, object UWP_V422229, object UWP_V412228, object UWP_V402227, object UWP_V392226, object UWP_V382225, object UWP_V372224, object UWP_V362223, object UWP_V352222, object UWP_V342221, object UWP_V332220, object UWP_V322219, object UWP_V312218, object UWP_V302217, object UWP_V292216, object UWP_V282215, object UWP_V272214, object UWP_V262213, object UWP_V252212, object UWP_V242211, object UWP_V232210, object UWP_V222209, object UWP_V212208, object UWP_V202207, object UWP_V192206, object UWP_V182205, object UWP_V172204, object UWP_V162203, object UWP_V152202, object UWP_V142201, object UWP_V132200, object UWP_V122199, object UWP_V112198, object UWP_V102197, object UWP_V92196, object UWP_V82195, object UWP_V72194, object UWP_V62193, object UWP_V52192, object UWP_V42191, object UWP_V32190, object UWP_V22189, object UWP_V12188, object UWP_COUNT2187, object UWP_RESULT2186, object RESULT2038, object CLEANUP_RAN2037)
    ldstr "Lexical return with unwind-protect..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN2037
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2038
    ldloc RESULT2038
    stloc CELL_TMP2254
    .try
    {
    .try
    {
    newobj instance void L_2054::'.ctor'()
    stloc K2043
    ldloc K2043
    stloc FN_TMP2258
    ldloc FN_TMP2258
    brtrue FN_NULL2259
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2258
FN_NULL2259:
    nop
    ldloc FN_TMP2258
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2260
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2260:
    nop
FN_AFTER2261:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print uwp path"
    stloc UWP_RESULT2186
    leave DONE2257
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2187
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12188
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22189
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32190
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42191
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52192
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62193
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72194
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82195
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92196
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102197
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112198
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122199
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132200
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142201
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152202
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162203
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172204
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182205
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192206
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202207
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212208
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222209
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232210
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242211
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252212
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262213
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272214
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282215
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292216
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302217
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312218
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322219
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332220
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342221
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352222
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362223
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372224
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382225
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392226
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402227
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412228
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422229
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432230
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442231
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452232
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462233
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472234
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482235
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492236
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502237
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512238
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522239
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532240
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542241
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552242
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562243
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572244
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582245
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592246
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602247
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612248
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622249
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632250
    ldloc CLEANUP_RAN2037
    stloc CELL_TMP2262
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2251'
    stloc CELL_VAL_TMP2263
    ldloc CELL_TMP2262
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2263
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2263
    pop
    ldstr "Cleanup from lexical unwind-protect"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT2187
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12188
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22189
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32190
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42191
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52192
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62193
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72194
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82195
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92196
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102197
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112198
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122199
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132200
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142201
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152202
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162203
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172204
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182205
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192206
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202207
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212208
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222209
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232210
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242211
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252212
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262213
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272214
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282215
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292216
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302217
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312218
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322219
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332220
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342221
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352222
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362223
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372224
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382225
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392226
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402227
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412228
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422229
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432230
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442231
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452232
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462233
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472234
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482235
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492236
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502237
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512238
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522239
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532240
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542241
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552242
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562243
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572244
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582245
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592246
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602247
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612248
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622249
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632250
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2257:
    ldloc UWP_RESULT2186
    stloc BLOCK_RESULT_DONE_2041
    leave BLOCK_END_DONE_2040
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_2039"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW2256
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_2041
    leave BLOCK_END_DONE_2040
BLOCK_RETHROW2256:
    pop
    rethrow
    }
BLOCK_END_DONE_2040:
    nop
    ldloc BLOCK_RESULT_DONE_2041
    stloc CELL_VAL_TMP2255
    ldloc CELL_TMP2254
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2255
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2255
    pop
    ldstr "UWP result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2038
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Cleanup flag:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RAN2037
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_RETURN_WITH_UNWIND_PROTECT_2035:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_RETURN_MULTIPLE_VALUES_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_RETURN_MULTIPLE_VALUES_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP2178, object BLOCK_RESULT_DONE_2026, object VALUES_TEMP_22176, object VALUES_TEMP_12175, object K2028, object C2031, object B2030, object A2029)
    ldstr "Lexical return with multiple values..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    .try
    {
    newobj instance void L_2053::'.ctor'()
    stloc K2028
    ldloc K2028
    stloc FN_TMP2178
    ldloc FN_TMP2178
    brtrue FN_NULL2179
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2178
FN_NULL2179:
    nop
    ldloc FN_TMP2178
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2180
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2180:
    nop
FN_AFTER2181:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print mv path"
    ldnull
    stloc VALUES_TEMP_12175
    ldnull
    stloc VALUES_TEMP_22176
    ldloc VALUES_TEMP_12175
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_22176
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc BLOCK_RESULT_DONE_2026
    leave BLOCK_END_DONE_2025
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_2024"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW2177
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_2026
    leave BLOCK_END_DONE_2025
BLOCK_RETHROW2177:
    pop
    rethrow
    }
BLOCK_END_DONE_2025:
    nop
    ldloc BLOCK_RESULT_DONE_2026
    stloc A2029
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL2182
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc B2030
    br DONE_VAL2183
SKIP_VAL2182:
    nop
    ldnull
    stloc B2030
DONE_VAL2183:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL2184
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc C2031
    br DONE_VAL2185
SKIP_VAL2184:
    nop
    ldnull
    stloc C2031
DONE_VAL2185:
    nop
    ldstr "MV primary:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A2029
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "MV second:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B2030
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "MV third:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C2031
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_RETURN_MULTIPLE_VALUES_2022:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP2171, object BLOCK_RESULT_DONE_2013, object RESULT2018, object K12017)
    ldstr "Lexical return nested closures..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_2052::'.ctor'()
    stloc K12017
    ldloc K12017
    stloc FN_TMP2171
    ldloc FN_TMP2171
    brtrue FN_NULL2172
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2171
FN_NULL2172:
    nop
    ldloc FN_TMP2171
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2173
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2173:
    nop
FN_AFTER2174:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print nested outer"
    stloc BLOCK_RESULT_DONE_2013
    leave BLOCK_END_DONE_2012
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_2011"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW2170
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_2013
    leave BLOCK_END_DONE_2012
BLOCK_RETHROW2170:
    pop
    rethrow
    }
BLOCK_END_DONE_2012:
    nop
    ldloc BLOCK_RESULT_DONE_2013
    stloc RESULT2018
    ldstr "Nested result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2018
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_NON_LOCAL_RETURN_NESTED_2009:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_Body'()
    ret
}

.method private static hidebysig object 'TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP2166, object BLOCK_RESULT_DONE_2002, object RESULT2005, object K2004)
    ldstr "Lexical return simple closure..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_2050::'.ctor'()
    stloc K2004
    ldloc K2004
    stloc FN_TMP2166
    ldloc FN_TMP2166
    brtrue FN_NULL2167
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2166
FN_NULL2167:
    nop
    ldloc FN_TMP2166
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2168
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2168:
    nop
FN_AFTER2169:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print simple path"
    stloc BLOCK_RESULT_DONE_2002
    leave BLOCK_END_DONE_2001
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_2000"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW2165
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_2002
    leave BLOCK_END_DONE_2001
BLOCK_RETHROW2165:
    pop
    rethrow
    }
BLOCK_END_DONE_2001:
    nop
    ldloc BLOCK_RESULT_DONE_2002
    stloc RESULT2005
    ldstr "Simple result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2005
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LEXICAL_NON_LOCAL_RETURN_SIMPLE_1998:
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

.class public auto ansi beforefieldinit L_2050
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_2000"
    ldstr "escaped-simple"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2050::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2050

.class public auto ansi beforefieldinit L_2051
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_2011"
    ldstr "escaped-nested"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2051::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2051

.class public auto ansi beforefieldinit L_2052
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP2159, object K22016)
    newobj instance void L_2051::'.ctor'()
    stloc K22016
    ldloc K22016
    stloc FN_TMP2159
    ldloc FN_TMP2159
    brtrue FN_NULL2160
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2159
FN_NULL2160:
    nop
    ldloc FN_TMP2159
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2161
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2161:
    nop
FN_AFTER2162:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print nested inner"
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2052::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2052

.class public auto ansi beforefieldinit L_2053
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    .locals init (object VALUES_TEMP_22164, object VALUES_TEMP_12163)
    ldstr "BLOCK_ID_DONE_2024"
    ldstr "mv-primary"
    ldc.i4 22
    box int32
    stloc VALUES_TEMP_12163
    ldc.i4 33
    box int32
    stloc VALUES_TEMP_22164
    ldloc VALUES_TEMP_12163
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_22164
    stsfld object [LispBase]Lisp.Values::Value2
    ldc.i4 3
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2053::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2053

.class public auto ansi beforefieldinit L_2054
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldstr "BLOCK_ID_DONE_2039"
    ldstr "escaped-uwp"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2054::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2054

