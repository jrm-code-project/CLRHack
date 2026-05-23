.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'RestartTest' {}
.module 'RestartTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEST_RESTART_INTERACTIVE'
    .field public static object 'TEST_RESTART_INVOCATION'
    .field public static object 'TEST_RESTART_BIND'
    .field public static object 'INVOKE_RESTART_INTERACTIVELY'
    .field public static object '_INTERN'
    .field public static object 'INVOKE_RESTART'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object '_CTOR'
    .field public static object '_GET_ACTIVE_RESTARTS'
    .field public static object 'LIST'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_INTERACTIVE_RESTART2063'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2061'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2056'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_RESTART2052'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_RESTART2050'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEST_RESTART_INTERACTIVE'
    ldnull
    stsfld object Program::'TEST_RESTART_INVOCATION'
    ldnull
    stsfld object Program::'TEST_RESTART_BIND'
    ldnull
    stsfld object Program::'INVOKE_RESTART_INTERACTIVELY'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'INVOKE_RESTART'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_GET_ACTIVE_RESTARTS'
    ldnull
    stsfld object Program::'LIST'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-INTERACTIVE-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_INTERACTIVE_RESTART2063'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-INTERACTIVE-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2061'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2056'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART2052'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2050'
    ret
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INTERACTIVE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_RESTART_INTERACTIVE_Body'()
    ret
}

.method private static hidebysig object 'TEST_RESTART_INTERACTIVE_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESTART_BIND_RESULT2060, object RESTARTS_LIST2059, object SAVED_RESTARTS2058)
    ldstr "--- test-restart-interactive ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2058
    ldloc SAVED_RESTARTS2058
    stloc RESTARTS_LIST2059
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_INTERACTIVE_RESTART2063'
    newobj instance void L_2020::'.ctor'()
    ldnull
    newobj instance void L_2021::'.ctor'()
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2059
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2059
    ldloc RESTARTS_LIST2059
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    ldstr "Result of invoke-restart-interactively:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2061'
    call object [LispBase]Lisp.RestartControl::'InvokeRestartInteractively'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc RESTART_BIND_RESULT2060
    leave DONE2062
    }
    finally
    {
    ldloc SAVED_RESTARTS2058
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2062:
    ldloc RESTART_BIND_RESULT2060
    ret
BLOCK_END_TEST_RESTART_INTERACTIVE_2010:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_INVOCATION'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_RESTART_INVOCATION_Body'()
    ret
}

.method private static hidebysig object 'TEST_RESTART_INVOCATION_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESTART_ARG_TEMP, object RESTART_ARGS_TEMP, object RESTART_BIND_RESULT2055, object RESTARTS_LIST2054, object SAVED_RESTARTS2053)
    ldstr "--- test-restart-invocation ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2053
    ldloc SAVED_RESTARTS2053
    stloc RESTARTS_LIST2054
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2050'
    newobj instance void L_2019::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2054
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2054
    ldloc RESTARTS_LIST2054
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    ldstr "Result of invoke-restart:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2056'
    ldc.i4 21
    box int32
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc RESTART_ARGS_TEMP
    stloc RESTART_ARG_TEMP
    ldloc RESTART_ARGS_TEMP
    ldc.i4 0
    ldloc RESTART_ARG_TEMP
    stelem.ref
    ldloc RESTART_ARGS_TEMP
    call object [LispBase]Lisp.RestartControl::'InvokeRestart'(object, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc RESTART_BIND_RESULT2055
    leave DONE2057
    }
    finally
    {
    ldloc SAVED_RESTARTS2053
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2057:
    ldloc RESTART_BIND_RESULT2055
    ret
BLOCK_END_TEST_RESTART_INVOCATION_2004:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_BIND'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_RESTART_BIND_Body'()
    ret
}

.method private static hidebysig object 'TEST_RESTART_BIND_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESTARTS2001, object RESTARTS2000, object RESTART_BIND_RESULT2048, object RESTARTS_LIST2047, object SAVED_RESTARTS2046, object TEMP_ARG, object INST_TEMP, object ARGS_TEMP, object R1998, object RESTARTS1997, object RESTART_BIND_RESULT2045, object RESTARTS_LIST2044, object SAVED_RESTARTS2043, object RESTARTS1995)
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1995
    ldstr "Initial restarts:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1995
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2043
    ldloc SAVED_RESTARTS2043
    stloc RESTARTS_LIST2044
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2050'
    newobj instance void L_2017::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2044
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2044
    ldloc RESTARTS_LIST2044
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1997
    ldstr "Inside restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1997
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1997
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc R1998
    ldstr "Restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc R1998
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc ARGS_TEMP
    stloc INST_TEMP
    ldstr "get_Name"
    ldloc INST_TEMP
    ldloc ARGS_TEMP
    call object [LispBase]Lisp.Interop::'InstanceCall'(string, object, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2046
    ldloc SAVED_RESTARTS2046
    stloc RESTARTS_LIST2047
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART2052'
    newobj instance void L_2018::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2047
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2047
    ldloc RESTARTS_LIST2047
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2000
    ldstr "Inside nested restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2000
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "First restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2000
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc ARGS_TEMP
    stloc INST_TEMP
    ldstr "get_Name"
    ldloc INST_TEMP
    ldloc ARGS_TEMP
    call object [LispBase]Lisp.Interop::'InstanceCall'(string, object, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Second restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2000
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc ARGS_TEMP
    stloc INST_TEMP
    ldstr "get_Name"
    ldloc INST_TEMP
    ldloc ARGS_TEMP
    call object [LispBase]Lisp.Interop::'InstanceCall'(string, object, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc RESTART_BIND_RESULT2048
    leave DONE2051
    }
    finally
    {
    ldloc SAVED_RESTARTS2046
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2051:
    ldloc RESTART_BIND_RESULT2048
    stloc RESTART_BIND_RESULT2045
    leave DONE2049
    }
    finally
    {
    ldloc SAVED_RESTARTS2043
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2049:
    ldloc RESTART_BIND_RESULT2045
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2001
    ldstr "After all restart-binds:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2001
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_RESTART_BIND_1993:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'TEST_RESTART_BIND'()
    pop
    call object Program::'TEST_RESTART_INVOCATION'()
    pop
    call object Program::'TEST_RESTART_INTERACTIVE'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2017
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
    ldstr "Restart invoked!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2017::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2017

.class public auto ansi beforefieldinit L_2018
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
    ldstr "Inner invoked!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2018::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2018

.class public auto ansi beforefieldinit L_2019
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
    ldstr "Restart called with:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
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
    callvirt instance object L_2019::'InvokeBody'(object)
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

} // end of class L_2019

.class public auto ansi beforefieldinit L_2020
       extends [LispBase]Lisp.Closure
{
.method public hidebysig void '.ctor'() cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    ldstr "Interactive restart called with:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 2
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_2020::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2020

.class public auto ansi beforefieldinit L_2021
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
    ldc.i4 10
    box int32
    ldc.i4 20
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_2021::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_2021

