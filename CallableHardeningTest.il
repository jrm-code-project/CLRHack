.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'CallableHardeningTest' {}
.module 'CallableHardeningTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'EQUAL'
    .field public static object 'TAG980985'
    .field public static object 'ID979987'
    .field public static object 'CONDITION978986'
    .field public static object 'TAG959964'
    .field public static object 'ID958966'
    .field public static object 'CONDITION957965'
    .field public static object 'TAG939944'
    .field public static object 'ID938946'
    .field public static object 'CONDITION937945'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1100'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1087'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1080'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1073'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'EQUAL'
    ldnull
    stsfld object Program::'TAG980985'
    ldnull
    stsfld object Program::'ID979987'
    ldnull
    stsfld object Program::'CONDITION978986'
    ldnull
    stsfld object Program::'TAG959964'
    ldnull
    stsfld object Program::'ID958966'
    ldnull
    stsfld object Program::'CONDITION957965'
    ldnull
    stsfld object Program::'TAG939944'
    ldnull
    stsfld object Program::'ID938946'
    ldnull
    stsfld object Program::'CONDITION937945'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1100'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "System.Exception981"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1087'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "System.Exception960"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1080'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "System.Exception940"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1073'
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED_Body'()
    ret
}

.method private static hidebysig object 'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP1140, object FN_TMP1136, object RES993, object E992, object CHOOSER991, object HANDLER_BIND_RESULT1130, object HANDLERS_LIST1129, object SAVED_HANDLERS1128, object CATCH_RESULT1127, object CATCH_TAG1126, object ID979987, object CONDITION978986, object TAG980985, object BLOCK_RESULT_EXIT977_984)
    ldstr "--- test-nested-computed-operator-undefined ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG980985
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION978986
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID979987
    ldloc TAG980985
    stloc CATCH_TAG1126
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS1128
    ldloc SAVED_HANDLERS1128
    stloc HANDLERS_LIST1129
    ldstr "System.Exception"
    ldloc TAG980985
    ldloc CONDITION978986
    ldloc ID979987
    newobj instance void L_997::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST1129
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST1129
    ldloc HANDLERS_LIST1129
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    newobj instance void L_998::'.ctor'()
    stloc CHOOSER991
    ldloc CHOOSER991
    stloc FN_TMP1140
    ldloc FN_TMP1140
    brtrue FN_NULL1141
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1140
FN_NULL1141:
    nop
    ldloc FN_TMP1140
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1142
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1142:
    nop
FN_AFTER1143:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    stloc FN_TMP1136
    ldloc FN_TMP1136
    brtrue FN_NULL1137
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1136
FN_NULL1137:
    nop
    ldloc FN_TMP1136
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1138
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1138:
    nop
FN_AFTER1139:
    nop
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ldstr "SHOULD-NOT-REACH"
    stloc BLOCK_RESULT_EXIT977_984
    leave BLOCK_END_EXIT977_983
    stloc HANDLER_BIND_RESULT1130
    leave DONE1135
    }
    finally
    {
    ldloc SAVED_HANDLERS1128
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE1135:
    ldloc HANDLER_BIND_RESULT1130
    stloc CATCH_RESULT1127
    leave CATCH_DONE1133
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1126
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1134
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1127
    leave CATCH_DONE1133
CATCH_RETHROW1134:
    pop
    rethrow
    }
CATCH_DONE1133:
    ldloc CATCH_RESULT1127
    pop
    ldloc ID979987
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1087'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1131
    ldnull
    br END1132
TRUE1131:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1100'
END1132:
    nop
    ldnull
    ceq
    brtrue ELSE1144
    ldloc CONDITION978986
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc E992
    ldstr "Caught .NET Exception:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc E992
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "CAUGHT"
    br END1145
ELSE1144:
    nop
    ldnull
END1145:
    nop
    stloc BLOCK_RESULT_EXIT977_984
BLOCK_END_EXIT977_983:
    nop
    ldloc BLOCK_RESULT_EXIT977_984
    stloc RES993
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES993
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED_975:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_NON_FUNCTION_OBJECT_CALL_Body'()
    ret
}

.method private static hidebysig object 'TEST_NON_FUNCTION_OBJECT_CALL_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP1120, object RES971, object E970, object F969, object HANDLER_BIND_RESULT1114, object HANDLERS_LIST1113, object SAVED_HANDLERS1112, object CATCH_RESULT1111, object CATCH_TAG1110, object ID958966, object CONDITION957965, object TAG959964, object BLOCK_RESULT_EXIT956_963)
    ldstr "--- test-non-function-object-call ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG959964
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION957965
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID958966
    ldloc TAG959964
    stloc CATCH_TAG1110
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS1112
    ldloc SAVED_HANDLERS1112
    stloc HANDLERS_LIST1113
    ldstr "System.Exception"
    ldloc TAG959964
    ldloc CONDITION957965
    ldloc ID958966
    newobj instance void L_996::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST1113
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST1113
    ldloc HANDLERS_LIST1113
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldc.i4 42
    box int32
    stloc F969
    ldloc F969
    stloc FN_TMP1120
    ldloc FN_TMP1120
    brtrue FN_NULL1121
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1120
FN_NULL1121:
    nop
    ldloc FN_TMP1120
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1122
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1122:
    nop
FN_AFTER1123:
    nop
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "SHOULD-NOT-REACH"
    stloc BLOCK_RESULT_EXIT956_963
    leave BLOCK_END_EXIT956_962
    stloc HANDLER_BIND_RESULT1114
    leave DONE1119
    }
    finally
    {
    ldloc SAVED_HANDLERS1112
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE1119:
    ldloc HANDLER_BIND_RESULT1114
    stloc CATCH_RESULT1111
    leave CATCH_DONE1117
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1110
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1118
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1111
    leave CATCH_DONE1117
CATCH_RETHROW1118:
    pop
    rethrow
    }
CATCH_DONE1117:
    ldloc CATCH_RESULT1111
    pop
    ldloc ID958966
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1080'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1115
    ldnull
    br END1116
TRUE1115:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1100'
END1116:
    nop
    ldnull
    ceq
    brtrue ELSE1124
    ldloc CONDITION957965
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc E970
    ldstr "Caught .NET Exception:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc E970
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "CAUGHT"
    br END1125
ELSE1124:
    nop
    ldnull
END1125:
    nop
    stloc BLOCK_RESULT_EXIT956_963
BLOCK_END_EXIT956_962:
    nop
    ldloc BLOCK_RESULT_EXIT956_963
    stloc RES971
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES971
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_NON_FUNCTION_OBJECT_CALL_954:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UNDEFINED_GLOBAL_FUNCTION_Body'()
    ret
}

.method private static hidebysig object 'TEST_UNDEFINED_GLOBAL_FUNCTION_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP1104, object RES950, object E949, object HANDLER_BIND_RESULT1097, object HANDLERS_LIST1096, object SAVED_HANDLERS1095, object CATCH_RESULT1094, object CATCH_TAG1093, object ID938946, object CONDITION937945, object TAG939944, object BLOCK_RESULT_EXIT936_943)
    ldstr "--- test-undefined-global-function ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG939944
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION937945
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID938946
    ldloc TAG939944
    stloc CATCH_TAG1093
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS1095
    ldloc SAVED_HANDLERS1095
    stloc HANDLERS_LIST1096
    ldstr "System.Exception"
    ldloc TAG939944
    ldloc CONDITION937945
    ldloc ID938946
    newobj instance void L_995::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST1096
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST1096
    ldloc HANDLERS_LIST1096
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld object Program::'EQUAL'
    stloc FN_TMP1104
    ldloc FN_TMP1104
    brtrue FN_NULL1105
    ldstr "Undefined function: EQUAL"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1104
FN_NULL1105:
    nop
    ldloc FN_TMP1104
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1106
    pop
    ldstr "Attempted to call non-function object in EQUAL"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1106:
    nop
FN_AFTER1107:
    nop
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ldstr "SHOULD-NOT-REACH"
    stloc BLOCK_RESULT_EXIT936_943
    leave BLOCK_END_EXIT936_942
    stloc HANDLER_BIND_RESULT1097
    leave DONE1103
    }
    finally
    {
    ldloc SAVED_HANDLERS1095
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE1103:
    ldloc HANDLER_BIND_RESULT1097
    stloc CATCH_RESULT1094
    leave CATCH_DONE1101
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG1093
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW1102
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT1094
    leave CATCH_DONE1101
CATCH_RETHROW1102:
    pop
    rethrow
    }
CATCH_DONE1101:
    ldloc CATCH_RESULT1094
    pop
    ldloc ID938946
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1073'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1098
    ldnull
    br END1099
TRUE1098:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1100'
END1099:
    nop
    ldnull
    ceq
    brtrue ELSE1108
    ldloc CONDITION937945
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc E949
    ldstr "Caught .NET Exception:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc E949
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "CAUGHT"
    br END1109
ELSE1108:
    nop
    ldnull
END1109:
    nop
    stloc BLOCK_RESULT_EXIT936_943
BLOCK_END_EXIT936_942:
    nop
    ldloc BLOCK_RESULT_EXIT936_943
    stloc RES950
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES950
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UNDEFINED_GLOBAL_FUNCTION_934:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'TEST_UNDEFINED_GLOBAL_FUNCTION'()
    pop
    call object Program::'TEST_NON_FUNCTION_OBJECT_CALL'()
    pop
    call object Program::'TEST_NESTED_COMPUTED_OPERATOR_UNDEFINED'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_995
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG939944'
    .field public object 'CONDITION937945'
    .field public object 'ID938946'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_995::'TAG939944'
    ldarg.0
    ldarg 2
    stfld object L_995::'CONDITION937945'
    ldarg.0
    ldarg 3
    stfld object L_995::'ID938946'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1078, object CELL_TMP1077, object CELL_VAL_TMP1076, object CELL_TMP1075, object TEMP1074, object TEMP1072)
    ldarg.0
    ldfld object L_995::'CONDITION937945'
    stloc CELL_TMP1075
    ldarg 1
    stloc CELL_VAL_TMP1076
    ldloc CELL_TMP1075
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1076
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1076
    pop
    ldarg.0
    ldfld object L_995::'ID938946'
    stloc CELL_TMP1077
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1073'
    stloc CELL_VAL_TMP1078
    ldloc CELL_TMP1077
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1078
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1078
    pop
    ldarg.0
    ldfld object L_995::'TAG939944'
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
    callvirt instance object L_995::'InvokeBody'(object)
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

} // end of class L_995

.class public auto ansi beforefieldinit L_996
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG959964'
    .field public object 'CONDITION957965'
    .field public object 'ID958966'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_996::'TAG959964'
    ldarg.0
    ldarg 2
    stfld object L_996::'CONDITION957965'
    ldarg.0
    ldarg 3
    stfld object L_996::'ID958966'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1085, object CELL_TMP1084, object CELL_VAL_TMP1083, object CELL_TMP1082, object TEMP1081, object TEMP1079)
    ldarg.0
    ldfld object L_996::'CONDITION957965'
    stloc CELL_TMP1082
    ldarg 1
    stloc CELL_VAL_TMP1083
    ldloc CELL_TMP1082
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1083
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1083
    pop
    ldarg.0
    ldfld object L_996::'ID958966'
    stloc CELL_TMP1084
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1080'
    stloc CELL_VAL_TMP1085
    ldloc CELL_TMP1084
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1085
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1085
    pop
    ldarg.0
    ldfld object L_996::'TAG959964'
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
    callvirt instance object L_996::'InvokeBody'(object)
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

} // end of class L_996

.class public auto ansi beforefieldinit L_997
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG980985'
    .field public object 'CONDITION978986'
    .field public object 'ID979987'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_997::'TAG980985'
    ldarg.0
    ldarg 2
    stfld object L_997::'CONDITION978986'
    ldarg.0
    ldarg 3
    stfld object L_997::'ID979987'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1092, object CELL_TMP1091, object CELL_VAL_TMP1090, object CELL_TMP1089, object TEMP1088, object TEMP1086)
    ldarg.0
    ldfld object L_997::'CONDITION978986'
    stloc CELL_TMP1089
    ldarg 1
    stloc CELL_VAL_TMP1090
    ldloc CELL_TMP1089
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1090
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1090
    pop
    ldarg.0
    ldfld object L_997::'ID979987'
    stloc CELL_TMP1091
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1087'
    stloc CELL_VAL_TMP1092
    ldloc CELL_TMP1091
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1092
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1092
    pop
    ldarg.0
    ldfld object L_997::'TAG980985'
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
    callvirt instance object L_997::'InvokeBody'(object)
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

} // end of class L_997

.class public auto ansi beforefieldinit L_998
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
    ldsfld object Program::'EQUAL'
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_998::'InvokeBody'()
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

} // end of class L_998

