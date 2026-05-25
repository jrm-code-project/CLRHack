.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HandlerCaseTest' {}
.module 'HandlerCaseTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TAG61516156'
    .field public static object 'ID61506158'
    .field public static object 'CONDITION61496157'
    .field public static object 'TAG61386143'
    .field public static object 'ID61376145'
    .field public static object 'CONDITION61366144'
    .field public static object 'TAG61186123'
    .field public static object 'ID61176125'
    .field public static object 'CONDITION61166124'
    .field public static object 'TAG60986103'
    .field public static object 'ID60976105'
    .field public static object 'CONDITION60966104'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6318'
    .field public static class [LispBase]Lisp.Symbol 'SYM_OUTER_ERROR6317'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_ERROR6311'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6300'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6287'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6286'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6283'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_ERROR6282'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6271'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6264'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6257'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6250'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TAG61516156'
    ldnull
    stsfld object Program::'ID61506158'
    ldnull
    stsfld object Program::'CONDITION61496157'
    ldnull
    stsfld object Program::'TAG61386143'
    ldnull
    stsfld object Program::'ID61376145'
    ldnull
    stsfld object Program::'CONDITION61366144'
    ldnull
    stsfld object Program::'TAG61186123'
    ldnull
    stsfld object Program::'ID61176125'
    ldnull
    stsfld object Program::'CONDITION61166124'
    ldnull
    stsfld object Program::'TAG60986103'
    ldnull
    stsfld object Program::'ID60976105'
    ldnull
    stsfld object Program::'CONDITION60966104'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6318'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR6317'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR6311'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SHOULD-NOT-HAPPEN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6300'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CAUGHT-IT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6287'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6286'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6283'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6282'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR6152"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6271'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR6139"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6264'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR6119"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6257'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR6099"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6250'
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_HANDLER_CASE_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_HANDLER_CASE_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object C6162, object C6161, object HANDLER_BIND_RESULT6316, object HANDLERS_LIST6315, object SAVED_HANDLERS6314, object CATCH_RESULT6313, object CATCH_TAG6312, object ID61506158, object CONDITION61496157, object TAG61516156, object BLOCK_RESULT_EXIT6148_6155, object HANDLER_BIND_RESULT6310, object HANDLERS_LIST6309, object SAVED_HANDLERS6308, object CATCH_RESULT6307, object CATCH_TAG6306, object ID61376145, object CONDITION61366144, object TAG61386143, object BLOCK_RESULT_EXIT6135_6142)
    ldstr "--- test-handler-case-nested ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG61386143
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION61366144
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID61376145
    ldloc TAG61386143
    stloc CATCH_TAG6306
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6308
    ldloc SAVED_HANDLERS6308
    stloc HANDLERS_LIST6309
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR6311'
    ldloc TAG61386143
    ldloc CONDITION61366144
    ldloc ID61376145
    newobj instance void L_6166::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6309
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6309
    ldloc HANDLERS_LIST6309
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG61516156
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION61496157
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID61506158
    ldloc TAG61516156
    stloc CATCH_TAG6312
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6314
    ldloc SAVED_HANDLERS6314
    stloc HANDLERS_LIST6315
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR6317'
    ldloc TAG61516156
    ldloc CONDITION61496157
    ldloc ID61506158
    newobj instance void L_6167::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6315
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6315
    ldloc HANDLERS_LIST6315
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6318'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6148_6155
    leave BLOCK_END_EXIT6148_6154
    stloc HANDLER_BIND_RESULT6316
    leave DONE6328
    }
    finally
    {
    ldloc SAVED_HANDLERS6314
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6328:
    ldloc HANDLER_BIND_RESULT6316
    stloc CATCH_RESULT6313
    leave CATCH_DONE6326
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6312
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6327
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6313
    leave CATCH_DONE6326
CATCH_RETHROW6327:
    pop
    rethrow
    }
CATCH_DONE6326:
    ldloc CATCH_RESULT6313
    pop
    ldloc ID61506158
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6271'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6319
    ldnull
    br END6320
TRUE6319:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6286'
END6320:
    nop
    ldnull
    ceq
    brtrue ELSE6329
    ldloc CONDITION61496157
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6161
    ldstr "Caught outer in inner (wrong!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END6330
ELSE6329:
    nop
    ldnull
END6330:
    nop
    stloc BLOCK_RESULT_EXIT6148_6155
BLOCK_END_EXIT6148_6154:
    nop
    ldloc BLOCK_RESULT_EXIT6148_6155
    stloc BLOCK_RESULT_EXIT6135_6142
    leave BLOCK_END_EXIT6135_6141
    stloc HANDLER_BIND_RESULT6310
    leave DONE6325
    }
    finally
    {
    ldloc SAVED_HANDLERS6308
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6325:
    ldloc HANDLER_BIND_RESULT6310
    stloc CATCH_RESULT6307
    leave CATCH_DONE6323
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6306
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6324
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6307
    leave CATCH_DONE6323
CATCH_RETHROW6324:
    pop
    rethrow
    }
CATCH_DONE6323:
    ldloc CATCH_RESULT6307
    pop
    ldloc ID61376145
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6264'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6321
    ldnull
    br END6322
TRUE6321:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6286'
END6322:
    nop
    ldnull
    ceq
    brtrue ELSE6331
    ldloc CONDITION61366144
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6162
    ldstr "Caught inner in outer (correct!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END6332
ELSE6331:
    nop
    ldnull
END6332:
    nop
    stloc BLOCK_RESULT_EXIT6135_6142
BLOCK_END_EXIT6135_6141:
    nop
    ldloc BLOCK_RESULT_EXIT6135_6142
    ret
BLOCK_END_TEST_HANDLER_CASE_NESTED_6133:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_HANDLER_CASE_NO_CATCH_Body'()
    ret
}

.method private static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESULT6129, object C6128, object HANDLER_BIND_RESULT6297, object HANDLERS_LIST6296, object SAVED_HANDLERS6295, object CATCH_RESULT6294, object CATCH_TAG6293, object ID61176125, object CONDITION61166124, object TAG61186123, object BLOCK_RESULT_EXIT6115_6122)
    ldstr "--- test-handler-case-no-catch ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG61186123
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION61166124
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID61176125
    ldloc TAG61186123
    stloc CATCH_TAG6293
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6295
    ldloc SAVED_HANDLERS6295
    stloc HANDLERS_LIST6296
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6282'
    ldloc TAG61186123
    ldloc CONDITION61166124
    ldloc ID61176125
    newobj instance void L_6165::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6296
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6296
    ldloc HANDLERS_LIST6296
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Returning normally"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 42
    box int32
    stloc BLOCK_RESULT_EXIT6115_6122
    leave BLOCK_END_EXIT6115_6121
    stloc HANDLER_BIND_RESULT6297
    leave DONE6303
    }
    finally
    {
    ldloc SAVED_HANDLERS6295
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6303:
    ldloc HANDLER_BIND_RESULT6297
    stloc CATCH_RESULT6294
    leave CATCH_DONE6301
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6293
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6302
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6294
    leave CATCH_DONE6301
CATCH_RETHROW6302:
    pop
    rethrow
    }
CATCH_DONE6301:
    ldloc CATCH_RESULT6294
    pop
    ldloc ID61176125
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6257'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6298
    ldnull
    br END6299
TRUE6298:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6286'
END6299:
    nop
    ldnull
    ceq
    brtrue ELSE6304
    ldloc CONDITION61166124
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6128
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6300'
    br END6305
ELSE6304:
    nop
    ldnull
END6305:
    nop
    stloc BLOCK_RESULT_EXIT6115_6122
BLOCK_END_EXIT6115_6121:
    nop
    ldloc BLOCK_RESULT_EXIT6115_6122
    stloc RESULT6129
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT6129
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_NO_CATCH_6113:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_HANDLER_CASE_SIMPLE_Body'()
    ret
}

.method private static hidebysig object 'TEST_HANDLER_CASE_SIMPLE_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESULT6109, object C6108, object HANDLER_BIND_RESULT6281, object HANDLERS_LIST6280, object SAVED_HANDLERS6279, object CATCH_RESULT6278, object CATCH_TAG6277, object ID60976105, object CONDITION60966104, object TAG60986103, object BLOCK_RESULT_EXIT6095_6102)
    ldstr "--- test-handler-case-simple ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG60986103
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION60966104
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID60976105
    ldloc TAG60986103
    stloc CATCH_TAG6277
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6279
    ldloc SAVED_HANDLERS6279
    stloc HANDLERS_LIST6280
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6282'
    ldloc TAG60986103
    ldloc CONDITION60966104
    ldloc ID60976105
    newobj instance void L_6164::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6280
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6280
    ldloc HANDLERS_LIST6280
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "About to error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6283'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6095_6102
    leave BLOCK_END_EXIT6095_6101
    stloc HANDLER_BIND_RESULT6281
    leave DONE6290
    }
    finally
    {
    ldloc SAVED_HANDLERS6279
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6290:
    ldloc HANDLER_BIND_RESULT6281
    stloc CATCH_RESULT6278
    leave CATCH_DONE6288
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6277
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6289
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6278
    leave CATCH_DONE6288
CATCH_RETHROW6289:
    pop
    rethrow
    }
CATCH_DONE6288:
    ldloc CATCH_RESULT6278
    pop
    ldloc ID60976105
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6250'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6284
    ldnull
    br END6285
TRUE6284:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6286'
END6285:
    nop
    ldnull
    ceq
    brtrue ELSE6291
    ldloc CONDITION60966104
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6108
    ldstr "Caught my-error:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C6108
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6287'
    br END6292
ELSE6291:
    nop
    ldnull
END6292:
    nop
    stloc BLOCK_RESULT_EXIT6095_6102
BLOCK_END_EXIT6095_6101:
    nop
    ldloc BLOCK_RESULT_EXIT6095_6102
    stloc RESULT6109
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT6109
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_SIMPLE_6093:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'TEST_HANDLER_CASE_SIMPLE'()
    pop
    call object Program::'TEST_HANDLER_CASE_NO_CATCH'()
    pop
    call object Program::'TEST_HANDLER_CASE_NESTED'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_6164
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG60986103'
    .field public object 'CONDITION60966104'
    .field public object 'ID60976105'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6164::'TAG60986103'
    ldarg.0
    ldarg 2
    stfld object L_6164::'CONDITION60966104'
    ldarg.0
    ldarg 3
    stfld object L_6164::'ID60976105'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6255, object CELL_TMP6254, object CELL_VAL_TMP6253, object CELL_TMP6252, object TEMP6251, object TEMP6249)
    ldarg.0
    ldfld object L_6164::'CONDITION60966104'
    stloc CELL_TMP6252
    ldarg 1
    stloc CELL_VAL_TMP6253
    ldloc CELL_TMP6252
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6253
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6253
    pop
    ldarg.0
    ldfld object L_6164::'ID60976105'
    stloc CELL_TMP6254
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6250'
    stloc CELL_VAL_TMP6255
    ldloc CELL_TMP6254
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6255
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6255
    pop
    ldarg.0
    ldfld object L_6164::'TAG60986103'
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_6164::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_6164

.class public auto ansi beforefieldinit L_6165
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG61186123'
    .field public object 'CONDITION61166124'
    .field public object 'ID61176125'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6165::'TAG61186123'
    ldarg.0
    ldarg 2
    stfld object L_6165::'CONDITION61166124'
    ldarg.0
    ldarg 3
    stfld object L_6165::'ID61176125'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6262, object CELL_TMP6261, object CELL_VAL_TMP6260, object CELL_TMP6259, object TEMP6258, object TEMP6256)
    ldarg.0
    ldfld object L_6165::'CONDITION61166124'
    stloc CELL_TMP6259
    ldarg 1
    stloc CELL_VAL_TMP6260
    ldloc CELL_TMP6259
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6260
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6260
    pop
    ldarg.0
    ldfld object L_6165::'ID61176125'
    stloc CELL_TMP6261
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6257'
    stloc CELL_VAL_TMP6262
    ldloc CELL_TMP6261
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6262
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6262
    pop
    ldarg.0
    ldfld object L_6165::'TAG61186123'
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_6165::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_6165

.class public auto ansi beforefieldinit L_6166
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG61386143'
    .field public object 'CONDITION61366144'
    .field public object 'ID61376145'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6166::'TAG61386143'
    ldarg.0
    ldarg 2
    stfld object L_6166::'CONDITION61366144'
    ldarg.0
    ldarg 3
    stfld object L_6166::'ID61376145'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6269, object CELL_TMP6268, object CELL_VAL_TMP6267, object CELL_TMP6266, object TEMP6265, object TEMP6263)
    ldarg.0
    ldfld object L_6166::'CONDITION61366144'
    stloc CELL_TMP6266
    ldarg 1
    stloc CELL_VAL_TMP6267
    ldloc CELL_TMP6266
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6267
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6267
    pop
    ldarg.0
    ldfld object L_6166::'ID61376145'
    stloc CELL_TMP6268
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6264'
    stloc CELL_VAL_TMP6269
    ldloc CELL_TMP6268
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6269
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6269
    pop
    ldarg.0
    ldfld object L_6166::'TAG61386143'
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_6166::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_6166

.class public auto ansi beforefieldinit L_6167
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG61516156'
    .field public object 'CONDITION61496157'
    .field public object 'ID61506158'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6167::'TAG61516156'
    ldarg.0
    ldarg 2
    stfld object L_6167::'CONDITION61496157'
    ldarg.0
    ldarg 3
    stfld object L_6167::'ID61506158'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6276, object CELL_TMP6275, object CELL_VAL_TMP6274, object CELL_TMP6273, object TEMP6272, object TEMP6270)
    ldarg.0
    ldfld object L_6167::'CONDITION61496157'
    stloc CELL_TMP6273
    ldarg 1
    stloc CELL_VAL_TMP6274
    ldloc CELL_TMP6273
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6274
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6274
    pop
    ldarg.0
    ldfld object L_6167::'ID61506158'
    stloc CELL_TMP6275
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6271'
    stloc CELL_VAL_TMP6276
    ldloc CELL_TMP6275
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6276
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6276
    pop
    ldarg.0
    ldfld object L_6167::'TAG61516156'
    ldnull
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_6167::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_6167

