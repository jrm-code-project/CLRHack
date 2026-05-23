.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'RestartTest' {}
.module 'RestartTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TEST_RESTART_CASE'
    .field public static object 'TEST_RESTART_INTERACTIVE'
    .field public static object 'TEST_RESTART_INVOCATION'
    .field public static object 'TEST_RESTART_BIND'
    .field public static object 'APPLY'
    .field public static object '_CELL_VALUE'
    .field public static object 'EQ'
    .field public static object '_MAKE_CELL'
    .field public static object 'INVOKE_RESTART_INTERACTIVELY'
    .field public static object 'INVOKE_RESTART'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object '_CTOR'
    .field public static object '_GET_ACTIVE_RESTARTS'
    .field public static object 'TAG20312035'
    .field public static object '_INTERN'
    .field public static object 'ID20302037'
    .field public static object 'ARGS20292036'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'LIST'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_GIVE_UP2128'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2124'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2121'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_INTERACTIVE_RESTART2115'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2113'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2108'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_RESTART2104'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_RESTART2102'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2093'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TEST_RESTART_CASE'
    ldnull
    stsfld object Program::'TEST_RESTART_INTERACTIVE'
    ldnull
    stsfld object Program::'TEST_RESTART_INVOCATION'
    ldnull
    stsfld object Program::'TEST_RESTART_BIND'
    ldnull
    stsfld object Program::'APPLY'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'INVOKE_RESTART_INTERACTIVELY'
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
    stsfld object Program::'TAG20312035'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'ID20302037'
    ldnull
    stsfld object Program::'ARGS20292036'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'LIST'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GIVE-UP"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_GIVE_UP2128'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2124'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GIVE-UP"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2121'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-INTERACTIVE-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_INTERACTIVE_RESTART2115'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-INTERACTIVE-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2113'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2108'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART2104'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-RESTART"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2102'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GIVE-UP2032"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2093'
    ret
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_RESTART_CASE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_RESTART_CASE_Body'()
    ret
}

.method private static hidebysig object 'TEST_RESTART_CASE_Body'() cil managed
{
    .maxstack 8
    .locals init (object RESULT2044, object RESTART_ARG_TEMP, object RESTART_ARGS_TEMP, object RESTART_BIND_RESULT2120, object RESTARTS_LIST2119, object SAVED_RESTARTS2118, object CATCH_RESULT2117, object CATCH_TAG2116, object ID20302037, object ARGS20292036, object TAG20312035, object BLOCK_RESULT_EXIT2028_2034)
    ldstr "--- test-restart-case ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG20312035
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ARGS20292036
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID20302037
    ldloc TAG20312035
    stloc CATCH_TAG2116
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2118
    ldloc SAVED_RESTARTS2118
    stloc RESTARTS_LIST2119
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_GIVE_UP2128'
    ldloc TAG20312035
    ldloc ARGS20292036
    ldloc ID20302037
    newobj instance void L_2051::'.ctor'(object, object, object)
    newobj instance void L_2052::'.ctor'()
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2119
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2119
    ldloc RESTARTS_LIST2119
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2121'
    ldc.i4 42
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
    stloc BLOCK_RESULT_EXIT2028_2034
    leave BLOCK_END_EXIT2028_2033
    stloc RESTART_BIND_RESULT2120
    leave DONE2127
    }
    finally
    {
    ldloc SAVED_RESTARTS2118
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2127:
    ldloc RESTART_BIND_RESULT2120
    stloc CATCH_RESULT2117
    leave CATCH_DONE2125
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2116
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2126
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2117
    leave CATCH_DONE2125
CATCH_RETHROW2126:
    pop
    rethrow
    }
CATCH_DONE2125:
    ldloc CATCH_RESULT2117
    pop
    ldloc ID20302037
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2093'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2122
    ldnull
    br END2123
TRUE2122:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2124'
END2123:
    nop
    ldnull
    ceq
    brtrue ELSE2129
    newobj instance void L_2053::'.ctor'()
    ldloc ARGS20292036
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Closure::'Apply'(object, object)
    br END2130
ELSE2129:
    nop
    ldnull
END2130:
    nop
    stloc BLOCK_RESULT_EXIT2028_2034
BLOCK_END_EXIT2028_2033:
    nop
    ldloc BLOCK_RESULT_EXIT2028_2034
    stloc RESULT2044
    ldstr "Result of restart-case:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2044
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_RESTART_CASE_2026:
    nop
    ldnull
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
    .locals init (object RESTART_BIND_RESULT2112, object RESTARTS_LIST2111, object SAVED_RESTARTS2110)
    ldstr "--- test-restart-interactive ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2110
    ldloc SAVED_RESTARTS2110
    stloc RESTARTS_LIST2111
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_INTERACTIVE_RESTART2115'
    newobj instance void L_2049::'.ctor'()
    ldnull
    newobj instance void L_2050::'.ctor'()
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2111
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2111
    ldloc RESTARTS_LIST2111
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    ldstr "Result of invoke-restart-interactively:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2113'
    call object [LispBase]Lisp.RestartControl::'InvokeRestartInteractively'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc RESTART_BIND_RESULT2112
    leave DONE2114
    }
    finally
    {
    ldloc SAVED_RESTARTS2110
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2114:
    ldloc RESTART_BIND_RESULT2112
    ret
BLOCK_END_TEST_RESTART_INTERACTIVE_2018:
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
    .locals init (object RESTART_ARG_TEMP, object RESTART_ARGS_TEMP, object RESTART_BIND_RESULT2107, object RESTARTS_LIST2106, object SAVED_RESTARTS2105)
    ldstr "--- test-restart-invocation ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2105
    ldloc SAVED_RESTARTS2105
    stloc RESTARTS_LIST2106
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2102'
    newobj instance void L_2048::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2106
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2106
    ldloc RESTARTS_LIST2106
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    ldstr "Result of invoke-restart:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2108'
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
    stloc RESTART_BIND_RESULT2107
    leave DONE2109
    }
    finally
    {
    ldloc SAVED_RESTARTS2105
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2109:
    ldloc RESTART_BIND_RESULT2107
    ret
BLOCK_END_TEST_RESTART_INVOCATION_2012:
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
    .locals init (object RESTARTS2009, object RESTARTS2008, object RESTART_BIND_RESULT2100, object RESTARTS_LIST2099, object SAVED_RESTARTS2098, object TEMP_ARG, object INST_TEMP, object ARGS_TEMP, object R2006, object RESTARTS2005, object RESTART_BIND_RESULT2097, object RESTARTS_LIST2096, object SAVED_RESTARTS2095, object RESTARTS2003)
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2003
    ldstr "Initial restarts:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2003
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc SAVED_RESTARTS2095
    ldloc SAVED_RESTARTS2095
    stloc RESTARTS_LIST2096
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_RESTART2102'
    newobj instance void L_2046::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2096
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2096
    ldloc RESTARTS_LIST2096
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2005
    ldstr "Inside restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2005
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2005
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc R2006
    ldstr "Restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc R2006
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
    stloc SAVED_RESTARTS2098
    ldloc SAVED_RESTARTS2098
    stloc RESTARTS_LIST2099
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_RESTART2104'
    newobj instance void L_2047::'.ctor'()
    ldnull
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.Restart::'.ctor'(object, object, object, object, object)
    ldloc RESTARTS_LIST2099
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc RESTARTS_LIST2099
    ldloc RESTARTS_LIST2099
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    .try
    {
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2008
    ldstr "Inside nested restart-bind:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2008
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "First restart name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2008
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
    ldloc RESTARTS2008
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
    stloc RESTART_BIND_RESULT2100
    leave DONE2103
    }
    finally
    {
    ldloc SAVED_RESTARTS2098
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2103:
    ldloc RESTART_BIND_RESULT2100
    stloc RESTART_BIND_RESULT2097
    leave DONE2101
    }
    finally
    {
    ldloc SAVED_RESTARTS2095
    call void [LispBase]Lisp.RestartControl::'SetActiveRestarts'(object)
    endfinally
    }
DONE2101:
    ldloc RESTART_BIND_RESULT2097
    pop
    call object [LispBase]Lisp.RestartControl::'GetActiveRestarts'()
    stloc RESTARTS2009
    ldstr "After all restart-binds:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESTARTS2009
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_RESTART_BIND_2001:
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
    call object Program::'TEST_RESTART_CASE'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2046
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
    callvirt instance object L_2046::'InvokeBody'()
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

} // end of class L_2046

.class public auto ansi beforefieldinit L_2047
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
    callvirt instance object L_2047::'InvokeBody'()
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

} // end of class L_2047

.class public auto ansi beforefieldinit L_2048
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
    callvirt instance object L_2048::'InvokeBody'(object)
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

} // end of class L_2048

.class public auto ansi beforefieldinit L_2049
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
    callvirt instance object L_2049::'InvokeBody'(object, object)
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

} // end of class L_2049

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
    callvirt instance object L_2050::'InvokeBody'()
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

} // end of class L_2050

.class public auto ansi beforefieldinit L_2051
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG20312035'
    .field public object 'ARGS20292036'
    .field public object 'ID20302037'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2051::'TAG20312035'
    ldarg.0
    ldarg 2
    stfld object L_2051::'ARGS20292036'
    ldarg.0
    ldarg 3
    stfld object L_2051::'ID20302037'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2094, object TEMP2092)
    ldarg.0
    ldfld object L_2051::'ARGS20292036'
    ldarg 1
    stloc TEMP2092
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2092
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2092
    pop
    ldarg.0
    ldfld object L_2051::'ID20302037'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2093'
    stloc TEMP2094
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2094
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2094
    pop
    ldarg.0
    ldfld object L_2051::'TAG20312035'
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
    ldarg.0
    ldnull
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 9
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 10
    ldarg.0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    ldarg 5
    ldarg 6
    ldarg 7
    ldarg 8
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail.
    callvirt instance object L_2051::'InvokeBody'(object)
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

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Give up and return VAL"
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
    callvirt instance object L_2052::'InvokeBody'(object)
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

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Give up clause called with:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    ldc.i4 100
    box int32
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
    callvirt instance object L_2053::'InvokeBody'(object)
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

} // end of class L_2053

