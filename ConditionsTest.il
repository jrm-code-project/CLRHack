.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ConditionsTest' {}
.module 'ConditionsTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TAG64266431'
    .field public static object 'ID64256433'
    .field public static object 'CONDITION64246432'
    .field public static object 'TAG64066411'
    .field public static object 'ID64056413'
    .field public static object 'CONDITION64046412'
    .field public static object 'TAG63876392'
    .field public static object 'ID63866394'
    .field public static object 'CONDITION63856393'
    .field public static object 'TAG63566361'
    .field public static object 'ID63556363'
    .field public static object 'CONDITION63546362'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6616'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_COND6612'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6603'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6602'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6599'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_ERROR6598'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6592'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6589'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_CONDITION6585'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6576'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6569'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6562'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6555'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TAG64266431'
    ldnull
    stsfld object Program::'ID64256433'
    ldnull
    stsfld object Program::'CONDITION64246432'
    ldnull
    stsfld object Program::'TAG64066411'
    ldnull
    stsfld object Program::'ID64056413'
    ldnull
    stsfld object Program::'CONDITION64046412'
    ldnull
    stsfld object Program::'TAG63876392'
    ldnull
    stsfld object Program::'ID63866394'
    ldnull
    stsfld object Program::'CONDITION63856393'
    ldnull
    stsfld object Program::'TAG63566361'
    ldnull
    stsfld object Program::'ID63556363'
    ldnull
    stsfld object Program::'CONDITION63546362'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6616'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND6612'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "HANDLED-SUCCESSFULLY"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6603'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6602'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6599'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6598'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "UNHANDLED-CONDITION"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6592'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-CONDITION"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6589'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-CONDITION"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_CONDITION6585'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Lisp.WrongNumberOfArgumentsException6427"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6576'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "System.Exception6407"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6569'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR6388"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6562'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR6357"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6555'
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
    call object Program::'TEST_SIGNAL_RETURN'()
    pop
    call object Program::'TEST_SIGNAL_NO_HANDLER'()
    pop
    call object Program::'TEST_ERROR_HANDLED'()
    pop
    call object Program::'TEST_SIGNAL_ORDER'()
    pop
    call object Program::'TEST_ERROR_NESTED_HANDLERS'()
    pop
    call object Program::'TEST_DOTNET_EXCEPTION'()
    pop
    tail. call object Program::'TEST_ARITY_ERROR_CAUGHT'()
    ret
BLOCK_END_MAIN_6441:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ARITY_ERROR_CAUGHT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_ARITY_ERROR_CAUGHT_Body'()
    ret
}

.method private static hidebysig object 'TEST_ARITY_ERROR_CAUGHT_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES6437, object C6436, object HANDLER_BIND_RESULT6652, object HANDLERS_LIST6651, object SAVED_HANDLERS6650, object CATCH_RESULT6649, object CATCH_TAG6648, object ID64256433, object CONDITION64246432, object TAG64266431, object BLOCK_RESULT_EXIT6423_6430)
    ldstr "--- test-arity-error-caught ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG64266431
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION64246432
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID64256433
    ldloc TAG64266431
    stloc CATCH_TAG6648
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6650
    ldloc SAVED_HANDLERS6650
    stloc HANDLERS_LIST6651
    ldstr "Lisp.WrongNumberOfArgumentsException"
    ldloc TAG64266431
    ldloc CONDITION64246432
    ldloc ID64256433
    newobj instance void L_6452::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6651
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6651
    ldloc HANDLERS_LIST6651
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Calling main with too many args"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 3
    box int32
    call object Program::'MAIN'(object, object, object)
    stloc BLOCK_RESULT_EXIT6423_6430
    leave BLOCK_END_EXIT6423_6429
    stloc HANDLER_BIND_RESULT6652
    leave DONE6657
    }
    finally
    {
    ldloc SAVED_HANDLERS6650
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6657:
    ldloc HANDLER_BIND_RESULT6652
    stloc CATCH_RESULT6649
    leave CATCH_DONE6655
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6648
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6656
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6649
    leave CATCH_DONE6655
CATCH_RETHROW6656:
    pop
    rethrow
    }
CATCH_DONE6655:
    ldloc CATCH_RESULT6649
    pop
    ldloc ID64256433
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6576'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6653
    ldnull
    br END6654
TRUE6653:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6602'
END6654:
    nop
    ldnull
    ceq
    brtrue ELSE6658
    ldloc CONDITION64246432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6436
    ldstr "Caught WrongNumberOfArgumentsException:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C6436
    ldstr "Message"
    call object [LispBase]Lisp.Reflection::'GetProperty'(object, string)
    br END6659
ELSE6658:
    nop
    ldnull
END6659:
    nop
    stloc BLOCK_RESULT_EXIT6423_6430
BLOCK_END_EXIT6423_6429:
    nop
    ldloc BLOCK_RESULT_EXIT6423_6430
    stloc RES6437
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES6437
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_ARITY_ERROR_CAUGHT_6421:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_DOTNET_EXCEPTION'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_DOTNET_EXCEPTION_Body'()
    ret
}

.method private static hidebysig object 'TEST_DOTNET_EXCEPTION_Body'() cil managed
{
    .maxstack 8
    .locals init (object REFLECT_ARGS6645, object RES6417, object C6416, object HANDLER_BIND_RESULT6639, object HANDLERS_LIST6638, object SAVED_HANDLERS6637, object CATCH_RESULT6636, object CATCH_TAG6635, object ID64056413, object CONDITION64046412, object TAG64066411, object BLOCK_RESULT_EXIT6403_6410)
    ldstr "--- test-dotnet-exception ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG64066411
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION64046412
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID64056413
    ldloc TAG64066411
    stloc CATCH_TAG6635
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6637
    ldloc SAVED_HANDLERS6637
    stloc HANDLERS_LIST6638
    ldstr "System.Exception"
    ldloc TAG64066411
    ldloc CONDITION64046412
    ldloc ID64056413
    newobj instance void L_6451::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6638
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6638
    ldloc HANDLERS_LIST6638
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Erroring with System.Exception"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "System.Exception"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS6645
    ldloc REFLECT_ARGS6645
    ldc.i4 0
    ldstr "My .NET Exception"
    stelem.ref
    ldloc REFLECT_ARGS6645
    call object [LispBase]Lisp.Reflection::'New'(object, object[])
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6403_6410
    leave BLOCK_END_EXIT6403_6409
    stloc HANDLER_BIND_RESULT6639
    leave DONE6644
    }
    finally
    {
    ldloc SAVED_HANDLERS6637
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6644:
    ldloc HANDLER_BIND_RESULT6639
    stloc CATCH_RESULT6636
    leave CATCH_DONE6642
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6635
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6643
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6636
    leave CATCH_DONE6642
CATCH_RETHROW6643:
    pop
    rethrow
    }
CATCH_DONE6642:
    ldloc CATCH_RESULT6636
    pop
    ldloc ID64056413
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6569'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6640
    ldnull
    br END6641
TRUE6640:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6602'
END6641:
    nop
    ldnull
    ceq
    brtrue ELSE6646
    ldloc CONDITION64046412
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6416
    ldstr "Caught .NET Exception:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C6416
    ldstr "Message"
    call object [LispBase]Lisp.Reflection::'GetProperty'(object, string)
    br END6647
ELSE6646:
    nop
    ldnull
END6647:
    nop
    stloc BLOCK_RESULT_EXIT6403_6410
BLOCK_END_EXIT6403_6409:
    nop
    ldloc BLOCK_RESULT_EXIT6403_6410
    stloc RES6417
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES6417
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_DOTNET_EXCEPTION_6401:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_NESTED_HANDLERS'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_ERROR_NESTED_HANDLERS_Body'()
    ret
}

.method private static hidebysig object 'TEST_ERROR_NESTED_HANDLERS_Body'() cil managed
{
    .maxstack 8
    .locals init (object C6397, object HANDLER_BIND_RESULT6626, object HANDLERS_LIST6625, object SAVED_HANDLERS6624, object CATCH_RESULT6623, object CATCH_TAG6622, object ID63866394, object CONDITION63856393, object TAG63876392, object BLOCK_RESULT_EXIT6384_6391, object HANDLER_BIND_RESULT6621, object HANDLERS_LIST6620, object SAVED_HANDLERS6619)
    ldstr "--- test-error-nested-handlers ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6619
    ldloc SAVED_HANDLERS6619
    stloc HANDLERS_LIST6620
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6598'
    newobj instance void L_6449::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6620
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6620
    ldloc HANDLERS_LIST6620
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG63876392
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION63856393
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID63866394
    ldloc TAG63876392
    stloc CATCH_TAG6622
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6624
    ldloc SAVED_HANDLERS6624
    stloc HANDLERS_LIST6625
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6598'
    ldloc TAG63876392
    ldloc CONDITION63856393
    ldloc ID63866394
    newobj instance void L_6450::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6625
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6625
    ldloc HANDLERS_LIST6625
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Signaling error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6599'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6384_6391
    leave BLOCK_END_EXIT6384_6390
    stloc HANDLER_BIND_RESULT6626
    leave DONE6632
    }
    finally
    {
    ldloc SAVED_HANDLERS6624
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6632:
    ldloc HANDLER_BIND_RESULT6626
    stloc CATCH_RESULT6623
    leave CATCH_DONE6630
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6622
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6631
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6623
    leave CATCH_DONE6630
CATCH_RETHROW6631:
    pop
    rethrow
    }
CATCH_DONE6630:
    ldloc CATCH_RESULT6623
    pop
    ldloc ID63866394
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6562'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6627
    ldnull
    br END6628
TRUE6627:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6602'
END6628:
    nop
    ldnull
    ceq
    brtrue ELSE6633
    ldloc CONDITION63856393
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6397
    ldstr "Handler-case caught it"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END6634
ELSE6633:
    nop
    ldnull
END6634:
    nop
    stloc BLOCK_RESULT_EXIT6384_6391
BLOCK_END_EXIT6384_6390:
    nop
    ldloc BLOCK_RESULT_EXIT6384_6391
    stloc HANDLER_BIND_RESULT6621
    leave DONE6629
    }
    finally
    {
    ldloc SAVED_HANDLERS6619
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6629:
    ldloc HANDLER_BIND_RESULT6621
    ret
BLOCK_END_TEST_ERROR_NESTED_HANDLERS_6380:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_ORDER'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_SIGNAL_ORDER_Body'()
    ret
}

.method private static hidebysig object 'TEST_SIGNAL_ORDER_Body'() cil managed
{
    .maxstack 8
    .locals init (object HANDLER_BIND_RESULT6615, object HANDLERS_LIST6614, object SAVED_HANDLERS6613, object HANDLER_BIND_RESULT6611, object HANDLERS_LIST6610, object SAVED_HANDLERS6609)
    ldstr "--- test-signal-order ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6609
    ldloc SAVED_HANDLERS6609
    stloc HANDLERS_LIST6610
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND6612'
    newobj instance void L_6447::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6610
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6610
    ldloc HANDLERS_LIST6610
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6613
    ldloc SAVED_HANDLERS6613
    stloc HANDLERS_LIST6614
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND6612'
    newobj instance void L_6448::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6614
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6614
    ldloc HANDLERS_LIST6614
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6616'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    stloc HANDLER_BIND_RESULT6615
    leave DONE6618
    }
    finally
    {
    ldloc SAVED_HANDLERS6613
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6618:
    ldloc HANDLER_BIND_RESULT6615
    stloc HANDLER_BIND_RESULT6611
    leave DONE6617
    }
    finally
    {
    ldloc SAVED_HANDLERS6609
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6617:
    ldloc HANDLER_BIND_RESULT6611
    ret
BLOCK_END_TEST_SIGNAL_ORDER_6371:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ERROR_HANDLED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_ERROR_HANDLED_Body'()
    ret
}

.method private static hidebysig object 'TEST_ERROR_HANDLED_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES6367, object C6366, object HANDLER_BIND_RESULT6597, object HANDLERS_LIST6596, object SAVED_HANDLERS6595, object CATCH_RESULT6594, object CATCH_TAG6593, object ID63556363, object CONDITION63546362, object TAG63566361, object BLOCK_RESULT_EXIT6353_6360)
    ldstr "--- test-error-handled ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG63566361
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION63546362
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID63556363
    ldloc TAG63566361
    stloc CATCH_TAG6593
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6595
    ldloc SAVED_HANDLERS6595
    stloc HANDLERS_LIST6596
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6598'
    ldloc TAG63566361
    ldloc CONDITION63546362
    ldloc ID63556363
    newobj instance void L_6446::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6596
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6596
    ldloc HANDLERS_LIST6596
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Erroring my-error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6599'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6353_6360
    leave BLOCK_END_EXIT6353_6359
    stloc HANDLER_BIND_RESULT6597
    leave DONE6606
    }
    finally
    {
    ldloc SAVED_HANDLERS6595
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6606:
    ldloc HANDLER_BIND_RESULT6597
    stloc CATCH_RESULT6594
    leave CATCH_DONE6604
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6593
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6605
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6594
    leave CATCH_DONE6604
CATCH_RETHROW6605:
    pop
    rethrow
    }
CATCH_DONE6604:
    ldloc CATCH_RESULT6594
    pop
    ldloc ID63556363
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6555'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6600
    ldnull
    br END6601
TRUE6600:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6602'
END6601:
    nop
    ldnull
    ceq
    brtrue ELSE6607
    ldloc CONDITION63546362
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6366
    ldstr "Caught error:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C6366
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6603'
    br END6608
ELSE6607:
    nop
    ldnull
END6608:
    nop
    stloc BLOCK_RESULT_EXIT6353_6360
BLOCK_END_EXIT6353_6359:
    nop
    ldloc BLOCK_RESULT_EXIT6353_6360
    stloc RES6367
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES6367
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_ERROR_HANDLED_6351:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_NO_HANDLER'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_SIGNAL_NO_HANDLER_Body'()
    ret
}

.method private static hidebysig object 'TEST_SIGNAL_NO_HANDLER_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESULT6347)
    ldstr "--- test-signal-no-handler ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Signaling unhandled-condition"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6592'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    stloc RESULT6347
    ldstr "Result (should be NIL):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT6347
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_SIGNAL_NO_HANDLER_6345:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_SIGNAL_RETURN'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_SIGNAL_RETURN_Body'()
    ret
}

.method private static hidebysig object 'TEST_SIGNAL_RETURN_Body'() cil managed
{
    .maxstack 8
    .locals init (object HANDLER_BIND_RESULT6588, object HANDLERS_LIST6587, object SAVED_HANDLERS6586, object HANDLER_BIND_RESULT6584, object HANDLERS_LIST6583, object SAVED_HANDLERS6582)
    ldstr "--- test-signal-return ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6582
    ldloc SAVED_HANDLERS6582
    stloc HANDLERS_LIST6583
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_CONDITION6585'
    newobj instance void L_6444::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6583
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6583
    ldloc HANDLERS_LIST6583
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6586
    ldloc SAVED_HANDLERS6586
    stloc HANDLERS_LIST6587
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_CONDITION6585'
    newobj instance void L_6445::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6587
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6587
    ldloc HANDLERS_LIST6587
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Signaling my-condition"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6589'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldstr "Signal returned"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc HANDLER_BIND_RESULT6588
    leave DONE6591
    }
    finally
    {
    ldloc SAVED_HANDLERS6586
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6591:
    ldloc HANDLER_BIND_RESULT6588
    stloc HANDLER_BIND_RESULT6584
    leave DONE6590
    }
    finally
    {
    ldloc SAVED_HANDLERS6582
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6590:
    ldloc HANDLER_BIND_RESULT6584
    ret
BLOCK_END_TEST_SIGNAL_RETURN_6336:
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

.class public auto ansi beforefieldinit L_6444
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Handler 1 called"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
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
    callvirt instance object L_6444::'InvokeBody'(object)
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

} // end of class L_6444

.class public auto ansi beforefieldinit L_6445
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Handler 2 called"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
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
    callvirt instance object L_6445::'InvokeBody'(object)
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

} // end of class L_6445

.class public auto ansi beforefieldinit L_6446
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG63566361'
    .field public object 'CONDITION63546362'
    .field public object 'ID63556363'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6446::'TAG63566361'
    ldarg.0
    ldarg 2
    stfld object L_6446::'CONDITION63546362'
    ldarg.0
    ldarg 3
    stfld object L_6446::'ID63556363'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6560, object CELL_TMP6559, object CELL_VAL_TMP6558, object CELL_TMP6557, object TEMP6556, object TEMP6554)
    ldarg.0
    ldfld object L_6446::'CONDITION63546362'
    stloc CELL_TMP6557
    ldarg 1
    stloc CELL_VAL_TMP6558
    ldloc CELL_TMP6557
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6558
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6558
    pop
    ldarg.0
    ldfld object L_6446::'ID63556363'
    stloc CELL_TMP6559
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6555'
    stloc CELL_VAL_TMP6560
    ldloc CELL_TMP6559
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6560
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6560
    pop
    ldarg.0
    ldfld object L_6446::'TAG63566361'
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
    callvirt instance object L_6446::'InvokeBody'(object)
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

} // end of class L_6446

.class public auto ansi beforefieldinit L_6447
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Outer handler"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
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
    callvirt instance object L_6447::'InvokeBody'(object)
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

} // end of class L_6447

.class public auto ansi beforefieldinit L_6448
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Inner handler"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
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
    callvirt instance object L_6448::'InvokeBody'(object)
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

} // end of class L_6448

.class public auto ansi beforefieldinit L_6449
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Handler-bind called (returning)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
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
    callvirt instance object L_6449::'InvokeBody'(object)
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

} // end of class L_6449

.class public auto ansi beforefieldinit L_6450
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG63876392'
    .field public object 'CONDITION63856393'
    .field public object 'ID63866394'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6450::'TAG63876392'
    ldarg.0
    ldarg 2
    stfld object L_6450::'CONDITION63856393'
    ldarg.0
    ldarg 3
    stfld object L_6450::'ID63866394'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6567, object CELL_TMP6566, object CELL_VAL_TMP6565, object CELL_TMP6564, object TEMP6563, object TEMP6561)
    ldarg.0
    ldfld object L_6450::'CONDITION63856393'
    stloc CELL_TMP6564
    ldarg 1
    stloc CELL_VAL_TMP6565
    ldloc CELL_TMP6564
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6565
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6565
    pop
    ldarg.0
    ldfld object L_6450::'ID63866394'
    stloc CELL_TMP6566
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6562'
    stloc CELL_VAL_TMP6567
    ldloc CELL_TMP6566
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6567
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6567
    pop
    ldarg.0
    ldfld object L_6450::'TAG63876392'
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
    callvirt instance object L_6450::'InvokeBody'(object)
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

} // end of class L_6450

.class public auto ansi beforefieldinit L_6451
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG64066411'
    .field public object 'CONDITION64046412'
    .field public object 'ID64056413'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6451::'TAG64066411'
    ldarg.0
    ldarg 2
    stfld object L_6451::'CONDITION64046412'
    ldarg.0
    ldarg 3
    stfld object L_6451::'ID64056413'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6574, object CELL_TMP6573, object CELL_VAL_TMP6572, object CELL_TMP6571, object TEMP6570, object TEMP6568)
    ldarg.0
    ldfld object L_6451::'CONDITION64046412'
    stloc CELL_TMP6571
    ldarg 1
    stloc CELL_VAL_TMP6572
    ldloc CELL_TMP6571
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6572
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6572
    pop
    ldarg.0
    ldfld object L_6451::'ID64056413'
    stloc CELL_TMP6573
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6569'
    stloc CELL_VAL_TMP6574
    ldloc CELL_TMP6573
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6574
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6574
    pop
    ldarg.0
    ldfld object L_6451::'TAG64066411'
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
    callvirt instance object L_6451::'InvokeBody'(object)
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

} // end of class L_6451

.class public auto ansi beforefieldinit L_6452
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG64266431'
    .field public object 'CONDITION64246432'
    .field public object 'ID64256433'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6452::'TAG64266431'
    ldarg.0
    ldarg 2
    stfld object L_6452::'CONDITION64246432'
    ldarg.0
    ldarg 3
    stfld object L_6452::'ID64256433'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6581, object CELL_TMP6580, object CELL_VAL_TMP6579, object CELL_TMP6578, object TEMP6577, object TEMP6575)
    ldarg.0
    ldfld object L_6452::'CONDITION64246432'
    stloc CELL_TMP6578
    ldarg 1
    stloc CELL_VAL_TMP6579
    ldloc CELL_TMP6578
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6579
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6579
    pop
    ldarg.0
    ldfld object L_6452::'ID64256433'
    stloc CELL_TMP6580
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6576'
    stloc CELL_VAL_TMP6581
    ldloc CELL_TMP6580
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6581
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6581
    pop
    ldarg.0
    ldfld object L_6452::'TAG64266431'
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
    callvirt instance object L_6452::'InvokeBody'(object)
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

} // end of class L_6452

