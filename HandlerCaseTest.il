.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HandlerCaseTest' {}
.module 'HandlerCaseTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEST_HANDLER_CASE_NESTED'
    .field public static object 'TEST_HANDLER_CASE_NO_CATCH'
    .field public static object 'TEST_HANDLER_CASE_SIMPLE'
    .field public static object '_CELL_VALUE'
    .field public static object 'EQ'
    .field public static object 'ERROR'
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'LIST'
    .field public static object 'PRINT'
    .field public static object 'TAG22082212'
    .field public static object 'ID22072214'
    .field public static object 'CONDITION22062213'
    .field public static object 'TAG21962200'
    .field public static object 'ID21952202'
    .field public static object 'CONDITION21942201'
    .field public static object 'TAG21782182'
    .field public static object 'ID21772184'
    .field public static object 'CONDITION21762183'
    .field public static object 'TAG21602164'
    .field public static object '_INTERN'
    .field public static object 'ID21592166'
    .field public static object 'CONDITION21582165'
    .field public static object '_SET_CELL_VALUE_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_OUTER_ERROR2354'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_ERROR2350'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2342'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2326'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_ERROR2316'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2312'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2311'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2308'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2301'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2298'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2295'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2292'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEST_HANDLER_CASE_NESTED'
    ldnull
    stsfld object Program::'TEST_HANDLER_CASE_NO_CATCH'
    ldnull
    stsfld object Program::'TEST_HANDLER_CASE_SIMPLE'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'ERROR'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'LIST'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'TAG22082212'
    ldnull
    stsfld object Program::'ID22072214'
    ldnull
    stsfld object Program::'CONDITION22062213'
    ldnull
    stsfld object Program::'TAG21962200'
    ldnull
    stsfld object Program::'ID21952202'
    ldnull
    stsfld object Program::'CONDITION21942201'
    ldnull
    stsfld object Program::'TAG21782182'
    ldnull
    stsfld object Program::'ID21772184'
    ldnull
    stsfld object Program::'CONDITION21762183'
    ldnull
    stsfld object Program::'TAG21602164'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'ID21592166'
    ldnull
    stsfld object Program::'CONDITION21582165'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR2354'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR2350'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2342'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SHOULD-NOT-HAPPEN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2326'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2316'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CAUGHT-IT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2312'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2311'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2308'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR2209"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2301'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR2197"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2298'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR2179"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2295'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR2161"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2292'
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    .locals init (object C2218, object C2217, object HANDLER_BIND_RESULT2341, object HANDLERS_LIST2340, object SAVED_HANDLERS2339, object CATCH_RESULT2338, object CATCH_TAG2337, object ID22072214, object CONDITION22062213, object TAG22082212, object BLOCK_RESULT_EXIT2205_2211, object HANDLER_BIND_RESULT2336, object HANDLERS_LIST2335, object SAVED_HANDLERS2334, object CATCH_RESULT2333, object CATCH_TAG2332, object ID21952202, object CONDITION21942201, object TAG21962200, object BLOCK_RESULT_EXIT2193_2199)
    ldstr "--- test-handler-case-nested ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG21962200
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION21942201
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID21952202
    ldloc TAG21962200
    stloc CATCH_TAG2332
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2334
    ldloc SAVED_HANDLERS2334
    stloc HANDLERS_LIST2335
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR2350'
    ldloc TAG21962200
    ldloc CONDITION21942201
    ldloc ID21952202
    newobj instance void L_2222::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2335
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2335
    ldloc HANDLERS_LIST2335
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG22082212
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION22062213
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID22072214
    ldloc TAG22082212
    stloc CATCH_TAG2337
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2339
    ldloc SAVED_HANDLERS2339
    stloc HANDLERS_LIST2340
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR2354'
    ldloc TAG22082212
    ldloc CONDITION22062213
    ldloc ID22072214
    newobj instance void L_2223::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2340
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2340
    ldloc HANDLERS_LIST2340
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2342'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT2205_2211
    leave BLOCK_END_EXIT2205_2210
    stloc HANDLER_BIND_RESULT2341
    leave DONE2353
    }
    finally
    {
    ldloc SAVED_HANDLERS2339
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2353:
    ldloc HANDLER_BIND_RESULT2341
    stloc CATCH_RESULT2338
    leave CATCH_DONE2351
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2337
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2352
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2338
    leave CATCH_DONE2351
CATCH_RETHROW2352:
    pop
    rethrow
    }
CATCH_DONE2351:
    ldloc CATCH_RESULT2338
    pop
    ldloc ID22072214
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2301'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2343
    ldnull
    br END2344
TRUE2343:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2311'
END2344:
    nop
    ldnull
    ceq
    brtrue ELSE2355
    ldloc CONDITION22062213
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2217
    ldstr "Caught outer in inner (wrong!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2356
ELSE2355:
    nop
    ldnull
END2356:
    nop
    stloc BLOCK_RESULT_EXIT2205_2211
BLOCK_END_EXIT2205_2210:
    nop
    ldloc BLOCK_RESULT_EXIT2205_2211
    stloc BLOCK_RESULT_EXIT2193_2199
    leave BLOCK_END_EXIT2193_2198
    stloc HANDLER_BIND_RESULT2336
    leave DONE2349
    }
    finally
    {
    ldloc SAVED_HANDLERS2334
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2349:
    ldloc HANDLER_BIND_RESULT2336
    stloc CATCH_RESULT2333
    leave CATCH_DONE2347
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2332
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2348
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2333
    leave CATCH_DONE2347
CATCH_RETHROW2348:
    pop
    rethrow
    }
CATCH_DONE2347:
    ldloc CATCH_RESULT2333
    pop
    ldloc ID21952202
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2298'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2345
    ldnull
    br END2346
TRUE2345:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2311'
END2346:
    nop
    ldnull
    ceq
    brtrue ELSE2357
    ldloc CONDITION21942201
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2218
    ldstr "Caught inner in outer (correct!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2358
ELSE2357:
    nop
    ldnull
END2358:
    nop
    stloc BLOCK_RESULT_EXIT2193_2199
BLOCK_END_EXIT2193_2198:
    nop
    ldloc BLOCK_RESULT_EXIT2193_2199
    ret
BLOCK_END_TEST_HANDLER_CASE_NESTED_2191:
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
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    .locals init (object RESULT2188, object C2187, object HANDLER_BIND_RESULT2323, object HANDLERS_LIST2322, object SAVED_HANDLERS2321, object CATCH_RESULT2320, object CATCH_TAG2319, object ID21772184, object CONDITION21762183, object TAG21782182, object BLOCK_RESULT_EXIT2175_2181)
    ldstr "--- test-handler-case-no-catch ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG21782182
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION21762183
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID21772184
    ldloc TAG21782182
    stloc CATCH_TAG2319
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2321
    ldloc SAVED_HANDLERS2321
    stloc HANDLERS_LIST2322
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2316'
    ldloc TAG21782182
    ldloc CONDITION21762183
    ldloc ID21772184
    newobj instance void L_2221::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2322
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2322
    ldloc HANDLERS_LIST2322
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Returning normally"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 42
    box int32
    stloc BLOCK_RESULT_EXIT2175_2181
    leave BLOCK_END_EXIT2175_2180
    stloc HANDLER_BIND_RESULT2323
    leave DONE2329
    }
    finally
    {
    ldloc SAVED_HANDLERS2321
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2329:
    ldloc HANDLER_BIND_RESULT2323
    stloc CATCH_RESULT2320
    leave CATCH_DONE2327
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2319
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2328
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2320
    leave CATCH_DONE2327
CATCH_RETHROW2328:
    pop
    rethrow
    }
CATCH_DONE2327:
    ldloc CATCH_RESULT2320
    pop
    ldloc ID21772184
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2295'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2324
    ldnull
    br END2325
TRUE2324:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2311'
END2325:
    nop
    ldnull
    ceq
    brtrue ELSE2330
    ldloc CONDITION21762183
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2187
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2326'
    br END2331
ELSE2330:
    nop
    ldnull
END2331:
    nop
    stloc BLOCK_RESULT_EXIT2175_2181
BLOCK_END_EXIT2175_2180:
    nop
    ldloc BLOCK_RESULT_EXIT2175_2181
    stloc RESULT2188
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2188
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_NO_CATCH_2173:
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
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    .locals init (object RESULT2170, object C2169, object HANDLER_BIND_RESULT2307, object HANDLERS_LIST2306, object SAVED_HANDLERS2305, object CATCH_RESULT2304, object CATCH_TAG2303, object ID21592166, object CONDITION21582165, object TAG21602164, object BLOCK_RESULT_EXIT2157_2163)
    ldstr "--- test-handler-case-simple ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG21602164
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION21582165
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID21592166
    ldloc TAG21602164
    stloc CATCH_TAG2303
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2305
    ldloc SAVED_HANDLERS2305
    stloc HANDLERS_LIST2306
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2316'
    ldloc TAG21602164
    ldloc CONDITION21582165
    ldloc ID21592166
    newobj instance void L_2220::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2306
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2306
    ldloc HANDLERS_LIST2306
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "About to error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2308'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT2157_2163
    leave BLOCK_END_EXIT2157_2162
    stloc HANDLER_BIND_RESULT2307
    leave DONE2315
    }
    finally
    {
    ldloc SAVED_HANDLERS2305
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2315:
    ldloc HANDLER_BIND_RESULT2307
    stloc CATCH_RESULT2304
    leave CATCH_DONE2313
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2303
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2314
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2304
    leave CATCH_DONE2313
CATCH_RETHROW2314:
    pop
    rethrow
    }
CATCH_DONE2313:
    ldloc CATCH_RESULT2304
    pop
    ldloc ID21592166
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2292'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2309
    ldnull
    br END2310
TRUE2309:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2311'
END2310:
    nop
    ldnull
    ceq
    brtrue ELSE2317
    ldloc CONDITION21582165
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2169
    ldstr "Caught my-error:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C2169
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2312'
    br END2318
ELSE2317:
    nop
    ldnull
END2318:
    nop
    stloc BLOCK_RESULT_EXIT2157_2163
BLOCK_END_EXIT2157_2162:
    nop
    ldloc BLOCK_RESULT_EXIT2157_2163
    stloc RESULT2170
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2170
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_SIMPLE_2155:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'TEST_HANDLER_CASE_SIMPLE'()
    pop
    call object Program::'TEST_HANDLER_CASE_NO_CATCH'()
    pop
    call object Program::'TEST_HANDLER_CASE_NESTED'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2220
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG21602164'
    .field public object 'CONDITION21582165'
    .field public object 'ID21592166'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2220::'TAG21602164'
    ldarg.0
    ldarg 2
    stfld object L_2220::'CONDITION21582165'
    ldarg.0
    ldarg 3
    stfld object L_2220::'ID21592166'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2293, object TEMP2291)
    ldarg.0
    ldfld object L_2220::'CONDITION21582165'
    ldarg 1
    stloc TEMP2291
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2291
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2291
    pop
    ldarg.0
    ldfld object L_2220::'ID21592166'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2292'
    stloc TEMP2293
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2293
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2293
    pop
    ldarg.0
    ldfld object L_2220::'TAG21602164'
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2220::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2220

.class public auto ansi beforefieldinit L_2221
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG21782182'
    .field public object 'CONDITION21762183'
    .field public object 'ID21772184'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2221::'TAG21782182'
    ldarg.0
    ldarg 2
    stfld object L_2221::'CONDITION21762183'
    ldarg.0
    ldarg 3
    stfld object L_2221::'ID21772184'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2296, object TEMP2294)
    ldarg.0
    ldfld object L_2221::'CONDITION21762183'
    ldarg 1
    stloc TEMP2294
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2294
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2294
    pop
    ldarg.0
    ldfld object L_2221::'ID21772184'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2295'
    stloc TEMP2296
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2296
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2296
    pop
    ldarg.0
    ldfld object L_2221::'TAG21782182'
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2221::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2221

.class public auto ansi beforefieldinit L_2222
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG21962200'
    .field public object 'CONDITION21942201'
    .field public object 'ID21952202'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2222::'TAG21962200'
    ldarg.0
    ldarg 2
    stfld object L_2222::'CONDITION21942201'
    ldarg.0
    ldarg 3
    stfld object L_2222::'ID21952202'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2299, object TEMP2297)
    ldarg.0
    ldfld object L_2222::'CONDITION21942201'
    ldarg 1
    stloc TEMP2297
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2297
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2297
    pop
    ldarg.0
    ldfld object L_2222::'ID21952202'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2298'
    stloc TEMP2299
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2299
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2299
    pop
    ldarg.0
    ldfld object L_2222::'TAG21962200'
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2222::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2222

.class public auto ansi beforefieldinit L_2223
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG22082212'
    .field public object 'CONDITION22062213'
    .field public object 'ID22072214'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2223::'TAG22082212'
    ldarg.0
    ldarg 2
    stfld object L_2223::'CONDITION22062213'
    ldarg.0
    ldarg 3
    stfld object L_2223::'ID22072214'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2302, object TEMP2300)
    ldarg.0
    ldfld object L_2223::'CONDITION22062213'
    ldarg 1
    stloc TEMP2300
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2300
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2300
    pop
    ldarg.0
    ldfld object L_2223::'ID22072214'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2301'
    stloc TEMP2302
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2302
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2302
    pop
    ldarg.0
    ldfld object L_2223::'TAG22082212'
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2223::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2223

