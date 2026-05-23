.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'RestartTest' {}
.module 'RestartTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEST_RESTART_BIND'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object '_CTOR'
    .field public static object '_GET_ACTIVE_RESTARTS'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_RESTART1954'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_RESTART1952'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEST_RESTART_BIND'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_GET_ACTIVE_RESTARTS'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART1954'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART1952'
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
    .locals init (object RESTARTS1931, object RESTARTS1930, object RESTART_BIND_RESULT1950, object RESTARTS_LIST1949, object SAVED_RESTARTS1948, object TEMP_ARG, object INST_TEMP, object ARGS_TEMP, object R1928, object RESTARTS1927, object RESTART_BIND_RESULT1947, object RESTARTS_LIST1946, object SAVED_RESTARTS1945, object RESTARTS1925)
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1925
    ldstr "Initial restarts:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1925
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS1945
    ldloc SAVED_RESTARTS1945
    stloc RESTARTS_LIST1946
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART1952'
    newobj instance void L_1933::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST1946
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST1946
    ldloc RESTARTS_LIST1946
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1927
    ldstr "Inside restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1927
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1927
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc R1928
    ldstr "Restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc R1928
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
    stloc SAVED_RESTARTS1948
    ldloc SAVED_RESTARTS1948
    stloc RESTARTS_LIST1949
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART1954'
    newobj instance void L_1934::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST1949
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST1949
    ldloc RESTARTS_LIST1949
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1930
    ldstr "Inside nested restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1930
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "First restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1930
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
    ldloc RESTARTS1930
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
    stloc RESTART_BIND_RESULT1950
    leave DONE1953
    }
    finally
    {
    ldloc SAVED_RESTARTS1948
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE1953:
    ldloc RESTART_BIND_RESULT1950
    stloc RESTART_BIND_RESULT1947
    leave DONE1951
    }
    finally
    {
    ldloc SAVED_RESTARTS1945
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE1951:
    ldloc RESTART_BIND_RESULT1947
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS1931
    ldstr "After all restart-binds:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS1931
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_RESTART_BIND_1923:
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
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_1933
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
    callvirt instance object L_1933::'InvokeBody'()
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

} // end of class L_1933

.class public auto ansi beforefieldinit L_1934
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
    callvirt instance object L_1934::'InvokeBody'()
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

} // end of class L_1934

