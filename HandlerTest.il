.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HandlerTest' {}
.module 'HandlerTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEST_HANDLER_BIND'
    .field public static object 'CAR'
    .field public static object '_CTOR'
    .field public static object '_GET_ACTIVE_HANDLERS'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ERROR2152'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEST_HANDLER_BIND'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_GET_ACTIVE_HANDLERS'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ERROR2152'
    ret
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_HANDLER_BIND'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_HANDLER_BIND_Body'()
    ret
}

.method private static hidebysig object 'TEST_HANDLER_BIND_Body'() cil managed
{
    .maxstack 8
    .locals init (object HANDLERS2140, object TEMP_ARG, object INST_TEMP, object ARGS_TEMP, object H2139, object HANDLERS2138, object HANDLER_BIND_RESULT2150, object HANDLERS_LIST2149, object SAVED_HANDLERS2148, object HANDLERS2135)
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc HANDLERS2135
    ldstr "Initial handlers:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc HANDLERS2135
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2148
    ldloc SAVED_HANDLERS2148
    stloc HANDLERS_LIST2149
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ERROR2152'
    newobj instance void L_2142::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2149
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2149
    ldloc HANDLERS_LIST2149
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc HANDLERS2138
    ldstr "Inside handler-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc HANDLERS2138
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc HANDLERS2138
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc H2139
    ldstr "Handler condition type:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc H2139
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc ARGS_TEMP
    stloc INST_TEMP
    ldstr "get_ConditionType"
    ldloc INST_TEMP
    ldloc ARGS_TEMP
    call object [LispBase]Lisp.Interop::'InstanceCall'(string, object, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc HANDLER_BIND_RESULT2150
    leave DONE2151
    }
    finally
    {
    ldloc SAVED_HANDLERS2148
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2151:
    ldloc HANDLER_BIND_RESULT2150
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc HANDLERS2140
    ldstr "After handler-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc HANDLERS2140
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_BIND_2133:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'TEST_HANDLER_BIND'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2142
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
    ldstr "Error handler called!"
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2142::'InvokeBody'(object)
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

} // end of class L_2142

