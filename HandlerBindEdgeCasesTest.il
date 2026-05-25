.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HandlerBindEdgeCasesTest' {}
.module 'HandlerBindEdgeCasesTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TAG55085513'
    .field public static object 'ID55075515'
    .field public static object 'CONDITION55065514'
    .field public static object 'HB_CALLED5501'
    .field public static object 'B_COUNT5470'
    .field public static object 'A_COUNT5469'
    .field public static object 'EVENTS5459'
    .field public static object 'TEMP_B'
    .field public static object 'COUNT_LIST5439'
    .field public static class [LispBase]Lisp.Symbol 'SYM_CAUGHT6079'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S6075'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_ERROR6069'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SHOULD_NOT_REACH6054'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5902'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5901'
    .field public static class [LispBase]Lisp.Symbol 'SYM_COND_B5900'
    .field public static class [LispBase]Lisp.Symbol 'SYM_COND_A5896'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5880'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5862'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5859'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5858'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_COND5855'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5838'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T5833'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ESCAPED5832'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER5822'
    .field public static class [LispBase]Lisp.Symbol 'SYM_OUTER5818'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S5812'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TAG55085513'
    ldnull
    stsfld object Program::'ID55075515'
    ldnull
    stsfld object Program::'CONDITION55065514'
    ldnull
    stsfld object Program::'HB_CALLED5501'
    ldnull
    stsfld object Program::'B_COUNT5470'
    ldnull
    stsfld object Program::'A_COUNT5469'
    ldnull
    stsfld object Program::'EVENTS5459'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'COUNT_LIST5439'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "CAUGHT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT6079'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S6075'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6069'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "SHOULD-NOT-REACH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SHOULD_NOT_REACH6054'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "COND-B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5902'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "COND-A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5901'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "COND-B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_COND_B5900'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "COND-A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_COND_A5896'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5880'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5859'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR5509"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5838'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T5833'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ESCAPED"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED5832'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "INNER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER5822'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "OUTER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER5818'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'RUN_HANDLER_BIND_EDGE_CASES_Body'()
    ret
}

.method private static hidebysig object 'RUN_HANDLER_BIND_EDGE_CASES_Body'() cil managed
{
    .maxstack 8
    ldstr "HBE:BEGIN:SUITE"
    call object Program::'HBE_MARKER'(object)
    pop
    call object Program::'HBE_TEST_VISIBILITY_LIFECYCLE'()
    pop
    call object Program::'HBE_TEST_SIGNAL_ORDER'()
    pop
    call object Program::'HBE_TEST_NESTED_TYPES_ISOLATION'()
    pop
    call object Program::'HBE_TEST_UNWIND_PROTECT_CLEANUP'()
    pop
    call object Program::'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'()
    pop
    call object Program::'HBE_TEST_HANDLER_BIND_ERROR_FLOW'()
    pop
    ldstr "HBE:END:SUITE"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_RUN_HANDLER_BIND_EDGE_CASES_5522:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_HANDLER_BIND_ERROR_FLOW_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_HANDLER_BIND_ERROR_FLOW_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6087, object CELL_TMP6086, object TEMP6078, object C5518, object HANDLER_BIND_RESULT6074, object HANDLERS_LIST6073, object SAVED_HANDLERS6072, object CATCH_RESULT6071, object CATCH_TAG6070, object ID55075515, object CONDITION55065514, object TAG55085513, object BLOCK_RESULT_EXIT5505_5512, object HANDLER_BIND_RESULT6068, object HANDLERS_LIST6067, object SAVED_HANDLERS6066, object HC_CAUGHT5502, object HB_CALLED5501)
    ldstr "HBE:BEGIN:ERROR-FLOW"
    call object Program::'HBE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc HB_CALLED5501
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc HC_CAUGHT5502
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6066
    ldloc SAVED_HANDLERS6066
    stloc HANDLERS_LIST6067
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6069'
    ldloc HB_CALLED5501
    newobj instance void L_5533::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6067
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6067
    ldloc HANDLERS_LIST6067
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG55085513
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION55065514
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID55075515
    ldloc TAG55085513
    stloc CATCH_TAG6070
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6072
    ldloc SAVED_HANDLERS6072
    stloc HANDLERS_LIST6073
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR6069'
    ldloc TAG55085513
    ldloc CONDITION55065514
    ldloc ID55075515
    newobj instance void L_5534::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6073
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6073
    ldloc HANDLERS_LIST6073
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S6075'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT5505_5512
    leave BLOCK_END_EXIT5505_5511
    stloc HANDLER_BIND_RESULT6074
    leave DONE6085
    }
    finally
    {
    ldloc SAVED_HANDLERS6072
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6085:
    ldloc HANDLER_BIND_RESULT6074
    stloc CATCH_RESULT6071
    leave CATCH_DONE6083
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG6070
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW6084
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT6071
    leave CATCH_DONE6083
CATCH_RETHROW6084:
    pop
    rethrow
    }
CATCH_DONE6083:
    ldloc CATCH_RESULT6071
    pop
    ldloc ID55075515
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5838'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6076
    ldnull
    br END6077
TRUE6076:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
END6077:
    nop
    ldnull
    ceq
    brtrue ELSE6088
    ldloc CONDITION55065514
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C5518
    ldloc HC_CAUGHT5502
    stloc CELL_TMP6086
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T5833'
    stloc CELL_VAL_TMP6087
    ldloc CELL_TMP6086
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6087
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6087
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT6079'
    br END6089
ELSE6088:
    nop
    ldnull
END6089:
    nop
    stloc BLOCK_RESULT_EXIT5505_5512
BLOCK_END_EXIT5505_5511:
    nop
    ldloc BLOCK_RESULT_EXIT5505_5512
    stloc HANDLER_BIND_RESULT6068
    leave DONE6082
    }
    finally
    {
    ldloc SAVED_HANDLERS6066
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6082:
    ldloc HANDLER_BIND_RESULT6068
    pop
    ldstr "ERROR-FLOW:HANDLER-BIND-NOT-CALLED"
    ldloc HB_CALLED5501
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6080
    ldnull
    br END6081
TRUE6080:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
END6081:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "ERROR-FLOW:HANDLER-CASE-CAUGHT"
    ldloc HC_CAUGHT5502
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:ERROR-FLOW"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_HANDLER_BIND_ERROR_FLOW_5499:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP6065, object CELL_TMP6064, object BLOCK_RESULT_DONE_5493, object CELL_VAL_TMP6060, object CELL_TMP6059, object TEMP6056, object TEMP6055, object HANDLER_BIND_RESULT6053, object HANDLERS_LIST6052, object SAVED_HANDLERS6051, object UWP_V636050, object UWP_V626049, object UWP_V616048, object UWP_V606047, object UWP_V596046, object UWP_V586045, object UWP_V576044, object UWP_V566043, object UWP_V556042, object UWP_V546041, object UWP_V536040, object UWP_V526039, object UWP_V516038, object UWP_V506037, object UWP_V496036, object UWP_V486035, object UWP_V476034, object UWP_V466033, object UWP_V456032, object UWP_V446031, object UWP_V436030, object UWP_V426029, object UWP_V416028, object UWP_V406027, object UWP_V396026, object UWP_V386025, object UWP_V376024, object UWP_V366023, object UWP_V356022, object UWP_V346021, object UWP_V336020, object UWP_V326019, object UWP_V316018, object UWP_V306017, object UWP_V296016, object UWP_V286015, object UWP_V276014, object UWP_V266013, object UWP_V256012, object UWP_V246011, object UWP_V236010, object UWP_V226009, object UWP_V216008, object UWP_V206007, object UWP_V196006, object UWP_V186005, object UWP_V176004, object UWP_V166003, object UWP_V156002, object UWP_V146001, object UWP_V136000, object UWP_V125999, object UWP_V115998, object UWP_V105997, object UWP_V95996, object UWP_V85995, object UWP_V75994, object UWP_V65993, object UWP_V55992, object UWP_V45991, object UWP_V35990, object UWP_V25989, object UWP_V15988, object UWP_COUNT5987, object UWP_RESULT5986, object RESULT5490, object CLEANUP_RAN5489)
    ldstr "HBE:BEGIN:LEXICAL-EXIT"
    call object Program::'HBE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN5489
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT5490
    ldloc RESULT5490
    stloc CELL_TMP6059
    .try
    {
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS6051
    ldloc SAVED_HANDLERS6051
    stloc HANDLERS_LIST6052
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    newobj instance void L_5532::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST6052
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST6052
    ldloc HANDLERS_LIST6052
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5859'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SHOULD_NOT_REACH6054'
    stloc HANDLER_BIND_RESULT6053
    leave DONE6063
    }
    finally
    {
    ldloc SAVED_HANDLERS6051
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE6063:
    ldloc HANDLER_BIND_RESULT6053
    stloc UWP_RESULT5986
    leave DONE6062
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT5987
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V15988
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V25989
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V35990
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V45991
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V55992
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V65993
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V75994
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V85995
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V95996
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V105997
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V115998
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V125999
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V136000
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V146001
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V156002
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V166003
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V176004
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V186005
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V196006
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V206007
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V216008
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V226009
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V236010
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V246011
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V256012
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V266013
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V276014
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V286015
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V296016
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V306017
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V316018
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V326019
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V336020
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V346021
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V356022
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V366023
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V376024
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V386025
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V396026
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V406027
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V416028
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V426029
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V436030
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V446031
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V456032
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V466033
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V476034
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V486035
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V496036
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V506037
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V516038
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V526039
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V536040
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V546041
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V556042
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V566043
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V576044
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V586045
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V596046
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V606047
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V616048
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V626049
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V636050
    ldloc CLEANUP_RAN5489
    stloc CELL_TMP6064
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T5833'
    stloc CELL_VAL_TMP6065
    ldloc CELL_TMP6064
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6065
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6065
    pop
    ldstr "LEXICAL-EXIT:CLEANUP"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT5987
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V15988
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V25989
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V35990
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V45991
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V55992
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V65993
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V75994
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V85995
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V95996
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V105997
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V115998
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V125999
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V136000
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V146001
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V156002
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V166003
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V176004
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V186005
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V196006
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V206007
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V216008
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V226009
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V236010
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V246011
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V256012
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V266013
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V276014
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V286015
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V296016
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V306017
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V316018
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V326019
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V336020
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V346021
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V356022
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V366023
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V376024
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V386025
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V396026
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V406027
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V416028
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V426029
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V436030
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V446031
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V456032
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V466033
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V476034
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V486035
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V496036
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V506037
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V516038
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V526039
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V536040
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V546041
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V556042
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V566043
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V576044
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V586045
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V596046
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V606047
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V616048
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V626049
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V636050
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE6062:
    ldloc UWP_RESULT5986
    stloc BLOCK_RESULT_DONE_5493
    leave BLOCK_END_DONE_5492
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_5491"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW6061
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_5493
    leave BLOCK_END_DONE_5492
BLOCK_RETHROW6061:
    pop
    rethrow
    }
BLOCK_END_DONE_5492:
    nop
    ldloc BLOCK_RESULT_DONE_5493
    stloc CELL_VAL_TMP6060
    ldloc CELL_TMP6059
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP6060
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP6060
    pop
    ldstr "LEXICAL-EXIT:RESULT"
    ldloc RESULT5490
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED5832'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE6057
    ldnull
    br END6058
TRUE6057:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
END6058:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "LEXICAL-EXIT:CLEANUP-RAN"
    ldloc CLEANUP_RAN5489
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:LEXICAL-EXIT"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_LEXICAL_NON_LOCAL_EXIT_THROUGH_HANDLER_BIND_5487:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_UNWIND_PROTECT_CLEANUP_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_UNWIND_PROTECT_CLEANUP_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5985, object CELL_TMP5984, object TEMP5979, object HANDLER_BIND_RESULT5976, object HANDLERS_LIST5975, object SAVED_HANDLERS5974, object UWP_V635973, object UWP_V625972, object UWP_V615971, object UWP_V605970, object UWP_V595969, object UWP_V585968, object UWP_V575967, object UWP_V565966, object UWP_V555965, object UWP_V545964, object UWP_V535963, object UWP_V525962, object UWP_V515961, object UWP_V505960, object UWP_V495959, object UWP_V485958, object UWP_V475957, object UWP_V465956, object UWP_V455955, object UWP_V445954, object UWP_V435953, object UWP_V425952, object UWP_V415951, object UWP_V405950, object UWP_V395949, object UWP_V385948, object UWP_V375947, object UWP_V365946, object UWP_V355945, object UWP_V345944, object UWP_V335943, object UWP_V325942, object UWP_V315941, object UWP_V305940, object UWP_V295939, object UWP_V285938, object UWP_V275937, object UWP_V265936, object UWP_V255935, object UWP_V245934, object UWP_V235933, object UWP_V225932, object UWP_V215931, object UWP_V205930, object UWP_V195929, object UWP_V185928, object UWP_V175927, object UWP_V165926, object UWP_V155925, object UWP_V145924, object UWP_V135923, object UWP_V125922, object UWP_V115921, object UWP_V105920, object UWP_V95919, object UWP_V85918, object UWP_V75917, object UWP_V65916, object UWP_V55915, object UWP_V45914, object UWP_V35913, object UWP_V25912, object UWP_V15911, object UWP_COUNT5910, object UWP_RESULT5909, object BEFORE5481, object CLEANUP_RAN5480)
    ldstr "HBE:BEGIN:UNWIND-PROTECT"
    call object Program::'HBE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN5480
    call object Program::'HBE_HANDLER_COUNT'()
    stloc BEFORE5481
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5974
    ldloc SAVED_HANDLERS5974
    stloc HANDLERS_LIST5975
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    newobj instance void L_5531::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5975
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5975
    ldloc HANDLERS_LIST5975
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5859'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldstr "UNWIND-PROTECT:INSIDE-COUNT"
    call object Program::'HBE_HANDLER_COUNT'()
    ldloc BEFORE5481
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5977
    ldnull
    br END5978
TRUE5977:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5978:
    nop
    call object Program::'HBE_CHECK'(object, object)
    stloc HANDLER_BIND_RESULT5976
    leave DONE5983
    }
    finally
    {
    ldloc SAVED_HANDLERS5974
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5983:
    ldloc HANDLER_BIND_RESULT5976
    stloc UWP_RESULT5909
    leave DONE5982
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT5910
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V15911
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V25912
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V35913
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V45914
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V55915
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V65916
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V75917
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V85918
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V95919
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V105920
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V115921
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V125922
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V135923
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V145924
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V155925
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V165926
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V175927
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V185928
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V195929
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V205930
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V215931
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V225932
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V235933
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V245934
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V255935
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V265936
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V275937
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V285938
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V295939
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V305940
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V315941
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V325942
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V335943
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V345944
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V355945
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V365946
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V375947
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V385948
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V395949
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V405950
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V415951
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V425952
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V435953
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V445954
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V455955
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V465956
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V475957
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V485958
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V495959
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V505960
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V515961
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V525962
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V535963
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V545964
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V555965
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V565966
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V575967
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V585968
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V595969
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V605970
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V615971
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V625972
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V635973
    ldloc CLEANUP_RAN5480
    stloc CELL_TMP5984
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T5833'
    stloc CELL_VAL_TMP5985
    ldloc CELL_TMP5984
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5985
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5985
    pop
    ldloc UWP_COUNT5910
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V15911
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V25912
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V35913
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V45914
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V55915
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V65916
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V75917
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V85918
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V95919
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V105920
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V115921
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V125922
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V135923
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V145924
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V155925
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V165926
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V175927
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V185928
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V195929
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V205930
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V215931
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V225932
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V235933
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V245934
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V255935
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V265936
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V275937
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V285938
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V295939
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V305940
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V315941
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V325942
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V335943
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V345944
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V355945
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V365946
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V375947
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V385948
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V395949
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V405950
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V415951
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V425952
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V435953
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V445954
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V455955
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V465956
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V475957
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V485958
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V495959
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V505960
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V515961
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V525962
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V535963
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V545964
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V555965
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V565966
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V575967
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V585968
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V595969
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V605970
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V615971
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V625972
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V635973
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE5982:
    ldloc UWP_RESULT5909
    pop
    ldstr "UNWIND-PROTECT:CLEANUP-RAN"
    ldloc CLEANUP_RAN5480
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "UNWIND-PROTECT:AFTER-COUNT"
    call object Program::'HBE_HANDLER_COUNT'()
    ldloc BEFORE5481
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5980
    ldnull
    br END5981
TRUE5980:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5981:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:UNWIND-PROTECT"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_UNWIND_PROTECT_CLEANUP_5478:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_NESTED_TYPES_ISOLATION_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_NESTED_TYPES_ISOLATION_Body'() cil managed
{
    .maxstack 8
    .locals init (object HANDLER_BIND_RESULT5899, object HANDLERS_LIST5898, object SAVED_HANDLERS5897, object HANDLER_BIND_RESULT5895, object HANDLERS_LIST5894, object SAVED_HANDLERS5893, object B_COUNT5470, object A_COUNT5469)
    ldstr "HBE:BEGIN:NESTED-TYPES"
    call object Program::'HBE_MARKER'(object)
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A_COUNT5469
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B_COUNT5470
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5893
    ldloc SAVED_HANDLERS5893
    stloc HANDLERS_LIST5894
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_COND_A5896'
    ldloc A_COUNT5469
    newobj instance void L_5529::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5894
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5894
    ldloc HANDLERS_LIST5894
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5897
    ldloc SAVED_HANDLERS5897
    stloc HANDLERS_LIST5898
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_COND_B5900'
    ldloc B_COUNT5470
    newobj instance void L_5530::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5898
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5898
    ldloc HANDLERS_LIST5898
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5901'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5902'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    stloc HANDLER_BIND_RESULT5899
    leave DONE5908
    }
    finally
    {
    ldloc SAVED_HANDLERS5897
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5908:
    ldloc HANDLER_BIND_RESULT5899
    stloc HANDLER_BIND_RESULT5895
    leave DONE5907
    }
    finally
    {
    ldloc SAVED_HANDLERS5893
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5907:
    ldloc HANDLER_BIND_RESULT5895
    pop
    ldstr "NESTED-TYPES:A-COUNT"
    ldloc A_COUNT5469
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5903
    ldnull
    br END5904
TRUE5903:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5904:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "NESTED-TYPES:B-COUNT"
    ldloc B_COUNT5470
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5905
    ldnull
    br END5906
TRUE5905:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5906:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:NESTED-TYPES"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_NESTED_TYPES_ISOLATION_5467:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_SIGNAL_ORDER'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_SIGNAL_ORDER_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_SIGNAL_ORDER_Body'() cil managed
{
    .maxstack 8
    .locals init (object HANDLER_BIND_RESULT5871, object HANDLERS_LIST5870, object SAVED_HANDLERS5869, object HANDLER_BIND_RESULT5868, object HANDLERS_LIST5867, object SAVED_HANDLERS5866, object EVENTS5459)
    ldstr "HBE:BEGIN:SIGNAL-ORDER"
    call object Program::'HBE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc EVENTS5459
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5866
    ldloc SAVED_HANDLERS5866
    stloc HANDLERS_LIST5867
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    ldloc EVENTS5459
    newobj instance void L_5527::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5867
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5867
    ldloc HANDLERS_LIST5867
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5869
    ldloc SAVED_HANDLERS5869
    stloc HANDLERS_LIST5870
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    ldloc EVENTS5459
    newobj instance void L_5528::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5870
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5870
    ldloc HANDLERS_LIST5870
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5859'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    stloc HANDLER_BIND_RESULT5871
    leave DONE5888
    }
    finally
    {
    ldloc SAVED_HANDLERS5869
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5888:
    ldloc HANDLER_BIND_RESULT5871
    stloc HANDLER_BIND_RESULT5868
    leave DONE5887
    }
    finally
    {
    ldloc SAVED_HANDLERS5866
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5887:
    ldloc HANDLER_BIND_RESULT5868
    pop
    ldstr "SIGNAL-ORDER:INNER-FIRST"
    ldloc EVENTS5459
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER5818'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5872
    ldnull
    br END5873
TRUE5872:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
END5873:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "SIGNAL-ORDER:OUTER-SECOND"
    ldloc EVENTS5459
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER5822'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5874
    ldnull
    br END5875
TRUE5874:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
END5875:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "SIGNAL-ORDER:COUNT"
    ldloc EVENTS5459
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5876
    ldnull
    br END5877
TRUE5876:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
END5877:
    nop
    ldnull
    ceq
    brtrue TRUE5878
    ldnull
    br END5879
TRUE5878:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5880'
END5879:
    nop
    ldnull
    ceq
    brtrue ELSE5891
    ldloc EVENTS5459
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5881
    ldnull
    br END5882
TRUE5881:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
END5882:
    nop
    ldnull
    ceq
    brtrue TRUE5883
    ldnull
    br END5884
TRUE5883:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5880'
END5884:
    nop
    ldnull
    ceq
    brtrue ELSE5889
    ldloc EVENTS5459
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5885
    ldnull
    br END5886
TRUE5885:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
END5886:
    nop
    br END5890
ELSE5889:
    nop
    ldnull
END5890:
    nop
    br END5892
ELSE5891:
    nop
    ldnull
END5892:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:SIGNAL-ORDER"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_SIGNAL_ORDER_5457:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_TEST_VISIBILITY_LIFECYCLE_Body'()
    ret
}

.method private static hidebysig object 'HBE_TEST_VISIBILITY_LIFECYCLE_Body'() cil managed
{
    .maxstack 8
    .locals init (object CTYPE5453, object TEMP_ARG, object INST_TEMP, object ARGS_TEMP, object FIRST_HANDLER5452, object HANDLERS5451, object HANDLER_BIND_RESULT5854, object HANDLERS_LIST5853, object SAVED_HANDLERS5852, object BEFORE5448)
    ldstr "HBE:BEGIN:VISIBILITY"
    call object Program::'HBE_MARKER'(object)
    pop
    call object Program::'HBE_HANDLER_COUNT'()
    stloc BEFORE5448
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS5852
    ldloc SAVED_HANDLERS5852
    stloc HANDLERS_LIST5853
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_COND5855'
    newobj instance void L_5526::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST5853
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST5853
    ldloc HANDLERS_LIST5853
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "VISIBILITY:INSIDE-COUNT"
    call object Program::'HBE_HANDLER_COUNT'()
    ldloc BEFORE5448
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5856
    ldnull
    br END5857
TRUE5856:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5857:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc HANDLERS5451
    ldloc HANDLERS5451
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc FIRST_HANDLER5452
    ldloc FIRST_HANDLER5452
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc ARGS_TEMP
    stloc INST_TEMP
    ldstr "get_ConditionType"
    ldloc INST_TEMP
    ldloc ARGS_TEMP
    call object [LispBase]Lisp.Interop::'InstanceCall'(string, object, object[])
    stloc CTYPE5453
    ldstr "VISIBILITY:CONDITION-TYPE"
    ldloc CTYPE5453
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5859'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5860
    ldnull
    br END5861
TRUE5860:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5862'
END5861:
    nop
    call object Program::'HBE_CHECK'(object, object)
    stloc HANDLER_BIND_RESULT5854
    leave DONE5865
    }
    finally
    {
    ldloc SAVED_HANDLERS5852
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE5865:
    ldloc HANDLER_BIND_RESULT5854
    pop
    ldstr "VISIBILITY:AFTER-COUNT"
    call object Program::'HBE_HANDLER_COUNT'()
    ldloc BEFORE5448
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    ceq
    brtrue TRUE5863
    ldnull
    br END5864
TRUE5863:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5858'
END5864:
    nop
    call object Program::'HBE_CHECK'(object, object)
    pop
    ldstr "HBE:END:VISIBILITY"
    tail. call object Program::'HBE_MARKER'(object)
    ret
BLOCK_END_HBE_TEST_VISIBILITY_LIFECYCLE_5446:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_HANDLER_COUNT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'HBE_HANDLER_COUNT_Body'()
    ret
}

.method private static hidebysig object 'HBE_HANDLER_COUNT_Body'() cil managed
{
    .maxstack 8
    .locals init (object FN_TMP5848, object CELL_VAL_TMP5847, object CELL_TMP5846, object TEMP5845, object COUNT_LIST5439)
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT_LIST5439
    ldloc COUNT_LIST5439
    stloc CELL_TMP5846
    ldloc COUNT_LIST5439
    newobj instance void L_5525::'.ctor'(object)
    stloc CELL_VAL_TMP5847
    ldloc CELL_TMP5846
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5847
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5847
    pop
    ldloc COUNT_LIST5439
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc FN_TMP5848
    ldloc FN_TMP5848
    brtrue FN_NULL5849
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP5848
FN_NULL5849:
    nop
    ldloc FN_TMP5848
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK5850
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK5850:
    nop
FN_AFTER5851:
    nop
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    ldc.i4 0
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    ret
BLOCK_END_HBE_HANDLER_COUNT_5437:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'HBE_CHECK_Body'(object, object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_CHECK'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'HBE_CHECK_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    ceq
    brtrue ELSE5844
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE5844:
    nop
    ldarg 0
    tail. call object Program::'HBE_FAIL'(object)
    ret
BLOCK_END_HBE_CHECK_5432:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'HBE_FAIL_Body'(object)
    ret
}

.method public static hidebysig object 'HBE_FAIL'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'HBE_FAIL_Body'(object) cil managed
{
    .maxstack 8
    ldstr "HBE:FAIL"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_HBE_FAIL_5425:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'HBE_MARKER_Body'(object)
    ret
}

.method public static hidebysig object 'HBE_MARKER'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'HBE_MARKER_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_HBE_MARKER_5419:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'RUN_HANDLER_BIND_EDGE_CASES'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_5525
       extends [LispBase]Lisp.Closure
{
    .field public object 'COUNT_LIST5439'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5525::'COUNT_LIST5439'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object FN_TMP5813)
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE5810
    ldnull
    br END5811
TRUE5810:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5812'
END5811:
    nop
    ldnull
    ceq
    brtrue ELSE5817
    ldarg 2
    ret
ELSE5817:
    nop
    ldarg.0
    ldfld object L_5525::'COUNT_LIST5439'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc FN_TMP5813
    ldloc FN_TMP5813
    brtrue FN_NULL5814
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP5813
FN_NULL5814:
    nop
    ldloc FN_TMP5813
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK5815
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK5815:
    nop
FN_AFTER5816:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_5525::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_5525

.class public auto ansi beforefieldinit L_5526
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
    callvirt instance object L_5526::'InvokeBody'(object)
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

} // end of class L_5526

.class public auto ansi beforefieldinit L_5527
       extends [LispBase]Lisp.Closure
{
    .field public object 'EVENTS5459'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5527::'EVENTS5459'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5821, object CELL_TMP5820, object TEMP5819)
    ldarg.0
    ldfld object L_5527::'EVENTS5459'
    stloc CELL_TMP5820
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER5818'
    ldarg.0
    ldfld object L_5527::'EVENTS5459'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc CELL_VAL_TMP5821
    ldloc CELL_TMP5820
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5821
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5821
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
    callvirt instance object L_5527::'InvokeBody'(object)
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

} // end of class L_5527

.class public auto ansi beforefieldinit L_5528
       extends [LispBase]Lisp.Closure
{
    .field public object 'EVENTS5459'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5528::'EVENTS5459'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5825, object CELL_TMP5824, object TEMP5823)
    ldarg.0
    ldfld object L_5528::'EVENTS5459'
    stloc CELL_TMP5824
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER5822'
    ldarg.0
    ldfld object L_5528::'EVENTS5459'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc CELL_VAL_TMP5825
    ldloc CELL_TMP5824
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5825
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5825
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
    callvirt instance object L_5528::'InvokeBody'(object)
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

} // end of class L_5528

.class public auto ansi beforefieldinit L_5529
       extends [LispBase]Lisp.Closure
{
    .field public object 'A_COUNT5469'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5529::'A_COUNT5469'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5828, object CELL_TMP5827, object TEMP5826)
    ldarg.0
    ldfld object L_5529::'A_COUNT5469'
    stloc CELL_TMP5827
    ldarg.0
    ldfld object L_5529::'A_COUNT5469'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP5828
    ldloc CELL_TMP5827
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5828
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5828
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
    callvirt instance object L_5529::'InvokeBody'(object)
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

} // end of class L_5529

.class public auto ansi beforefieldinit L_5530
       extends [LispBase]Lisp.Closure
{
    .field public object 'B_COUNT5470'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5530::'B_COUNT5470'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5831, object CELL_TMP5830, object TEMP5829)
    ldarg.0
    ldfld object L_5530::'B_COUNT5470'
    stloc CELL_TMP5830
    ldarg.0
    ldfld object L_5530::'B_COUNT5470'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP5831
    ldloc CELL_TMP5830
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5831
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5831
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
    callvirt instance object L_5530::'InvokeBody'(object)
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

} // end of class L_5530

.class public auto ansi beforefieldinit L_5531
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
    callvirt instance object L_5531::'InvokeBody'(object)
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

} // end of class L_5531

.class public auto ansi beforefieldinit L_5532
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
    ldstr "BLOCK_ID_DONE_5491"
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED5832'
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
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
    callvirt instance object L_5532::'InvokeBody'(object)
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

} // end of class L_5532

.class public auto ansi beforefieldinit L_5533
       extends [LispBase]Lisp.Closure
{
    .field public object 'HB_CALLED5501'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5533::'HB_CALLED5501'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5836, object CELL_TMP5835, object TEMP5834)
    ldarg.0
    ldfld object L_5533::'HB_CALLED5501'
    stloc CELL_TMP5835
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T5833'
    stloc CELL_VAL_TMP5836
    ldloc CELL_TMP5835
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5836
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5836
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
    callvirt instance object L_5533::'InvokeBody'(object)
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

} // end of class L_5533

.class public auto ansi beforefieldinit L_5534
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG55085513'
    .field public object 'CONDITION55065514'
    .field public object 'ID55075515'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_5534::'TAG55085513'
    ldarg.0
    ldarg 2
    stfld object L_5534::'CONDITION55065514'
    ldarg.0
    ldarg 3
    stfld object L_5534::'ID55075515'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP5843, object CELL_TMP5842, object CELL_VAL_TMP5841, object CELL_TMP5840, object TEMP5839, object TEMP5837)
    ldarg.0
    ldfld object L_5534::'CONDITION55065514'
    stloc CELL_TMP5840
    ldarg 1
    stloc CELL_VAL_TMP5841
    ldloc CELL_TMP5840
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5841
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5841
    pop
    ldarg.0
    ldfld object L_5534::'ID55075515'
    stloc CELL_TMP5842
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S5838'
    stloc CELL_VAL_TMP5843
    ldloc CELL_TMP5842
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP5843
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP5843
    pop
    ldarg.0
    ldfld object L_5534::'TAG55085513'
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
    callvirt instance object L_5534::'InvokeBody'(object)
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

} // end of class L_5534

