.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'SignalErrorEdgeCasesTest' {}
.module 'SignalErrorEdgeCasesTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TAG67796784'
    .field public static object 'ID67786786'
    .field public static object 'CONDITION67776785'
    .field public static object 'TAG67596764'
    .field public static object 'ID67586766'
    .field public static object 'CONDITION67576765'
    .field public static object 'TAG67406745'
    .field public static object 'ID67396747'
    .field public static object 'CONDITION67386746'
    .field public static object 'HB_CALLED6733'
    .field public static object 'TAG67166721'
    .field public static object 'ID67156723'
    .field public static object 'CONDITION67146722'
    .field public static object 'EVENTS6690'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7427'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_ERR7426'
    .field public static class [LispBase]Lisp.Symbol 'SYM_CAUGHT_ESCALATED7349'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7346'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_WARN7345'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_ESCALATED_ERROR7341'
    .field public static class [LispBase]Lisp.Symbol 'SYM_CAUGHT7310'
    .field public static class [LispBase]Lisp.Symbol 'SYM_CAUGHT_SEE_ERROR7291'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ERROR_SHOULD_NOT_REACH7288'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7287'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_ERROR7286'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SIGNAL_SHOULD_NOT_REACH7269'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7268'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_SIGNAL7267'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7186'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7182'
    .field public static class [LispBase]Lisp.Symbol 'SYM_SEE_COND7178'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7174'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7171'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ESCAPED_ERROR7169'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7168'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7162'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7155'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7148'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T7143'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7137'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ESCAPED_SIGNAL7135'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER7131'
    .field public static class [LispBase]Lisp.Symbol 'SYM_OUTER7127'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TAG67796784'
    ldnull
    stsfld object Program::'ID67786786'
    ldnull
    stsfld object Program::'CONDITION67776785'
    ldnull
    stsfld object Program::'TAG67596764'
    ldnull
    stsfld object Program::'ID67586766'
    ldnull
    stsfld object Program::'CONDITION67576765'
    ldnull
    stsfld object Program::'TAG67406745'
    ldnull
    stsfld object Program::'ID67396747'
    ldnull
    stsfld object Program::'CONDITION67386746'
    ldnull
    stsfld object Program::'HB_CALLED6733'
    ldnull
    stsfld object Program::'TAG67166721'
    ldnull
    stsfld object Program::'ID67156723'
    ldnull
    stsfld object Program::'CONDITION67146722'
    ldnull
    stsfld object Program::'EVENTS6690'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7427'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERR7426'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "CAUGHT-ESCALATED"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_ESCALATED7349'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-WARN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7346'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-WARN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_WARN7345'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ESCALATED-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ESCALATED_ERROR7341'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "CAUGHT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT7310'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "CAUGHT-SEE-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_SEE_ERROR7291'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ERROR-SHOULD-NOT-REACH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ERROR_SHOULD_NOT_REACH7288'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7287'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERROR7286'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "SIGNAL-SHOULD-NOT-REACH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SIGNAL_SHOULD_NOT_REACH7269'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-SIGNAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7268'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-SIGNAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_SIGNAL7267'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7182'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-COND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_COND7178'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7174'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-UNHANDLED"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7171'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ESCAPED-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_ERROR7169'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ESCALATED-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7168'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ESCALATED-ERROR6780"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7162'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "System.Exception6760"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7155'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERROR6741"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7148'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SEE-ERROR6717"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7137'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ESCAPED-SIGNAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_SIGNAL7135'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "INNER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER7131'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "OUTER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER7127'
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'RUN_SIGNAL_ERROR_EDGE_CASES_Body'()
    ret
}

.method private static hidebysig object 'RUN_SIGNAL_ERROR_EDGE_CASES_Body'() cil managed
{
    .maxstack 8
    ldstr "SEE:BEGIN:SUITE"
    call object Program::'SEE_MARKER'(object)
    pop
    call object Program::'SEE_TEST_SIGNAL_NO_HANDLER'()
    pop
    call object Program::'SEE_TEST_SIGNAL_ORDER_AND_RESUME'()
    pop
    call object Program::'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'()
    pop
    call object Program::'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'()
    pop
    call object Program::'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'()
    pop
    call object Program::'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'()
    pop
    call object Program::'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'()
    pop
    call object Program::'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'()
    pop
    ldstr "SEE:END:SUITE"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_RUN_SIGNAL_ERROR_EDGE_CASES_6808:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7438, object CELL_TMP7437, object BLOCK_RESULT_DONE_6802, object CELL_VAL_TMP7433, object CELL_TMP7432, object TEMP7429, object TEMP7428, object HANDLER_BIND_RESULT7425, object HANDLERS_LIST7424, object SAVED_HANDLERS7423, object UWP_V637422, object UWP_V627421, object UWP_V617420, object UWP_V607419, object UWP_V597418, object UWP_V587417, object UWP_V577416, object UWP_V567415, object UWP_V557414, object UWP_V547413, object UWP_V537412, object UWP_V527411, object UWP_V517410, object UWP_V507409, object UWP_V497408, object UWP_V487407, object UWP_V477406, object UWP_V467405, object UWP_V457404, object UWP_V447403, object UWP_V437402, object UWP_V427401, object UWP_V417400, object UWP_V407399, object UWP_V397398, object UWP_V387397, object UWP_V377396, object UWP_V367395, object UWP_V357394, object UWP_V347393, object UWP_V337392, object UWP_V327391, object UWP_V317390, object UWP_V307389, object UWP_V297388, object UWP_V287387, object UWP_V277386, object UWP_V267385, object UWP_V257384, object UWP_V247383, object UWP_V237382, object UWP_V227381, object UWP_V217380, object UWP_V207379, object UWP_V197378, object UWP_V187377, object UWP_V177376, object UWP_V167375, object UWP_V157374, object UWP_V147373, object UWP_V137372, object UWP_V127371, object UWP_V117370, object UWP_V107369, object UWP_V97368, object UWP_V87367, object UWP_V77366, object UWP_V67365, object UWP_V57364, object UWP_V47363, object UWP_V37362, object UWP_V27361, object UWP_V17360, object UWP_COUNT7359, object UWP_RESULT7358, object RESULT6799, object CLEANUP_RAN6798)
    ldstr "SEE:BEGIN:ERROR-LEXICAL-UWP"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN6798
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT6799
    ldloc RESULT6799
    stloc CELL_TMP7432
    .try
    {
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7423
    ldloc SAVED_HANDLERS7423
    stloc HANDLERS_LIST7424
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERR7426'
    newobj instance void L_6820::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7424
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7424
    ldloc HANDLERS_LIST7424
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7427'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ERROR_SHOULD_NOT_REACH7288'
    stloc HANDLER_BIND_RESULT7425
    leave DONE7436
    }
    finally
    {
    ldloc SAVED_HANDLERS7423
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7436:
    ldloc HANDLER_BIND_RESULT7425
    stloc UWP_RESULT7358
    leave DONE7435
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT7359
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V17360
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V27361
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V37362
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V47363
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V57364
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V67365
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V77366
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V87367
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V97368
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V107369
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V117370
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V127371
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V137372
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V147373
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V157374
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V167375
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V177376
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V187377
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V197378
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V207379
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V217380
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V227381
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V237382
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V247383
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V257384
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V267385
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V277386
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V287387
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V297388
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V307389
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V317390
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V327391
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V337392
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V347393
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V357394
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V367395
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V377396
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V387397
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V397398
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V407399
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V417400
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V427401
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V437402
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V447403
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V457404
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V467405
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V477406
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V487407
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V497408
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V507409
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V517410
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V527411
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V537412
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V547413
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V557414
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V567415
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V577416
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V587417
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V597418
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V607419
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V617420
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V627421
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V637422
    ldloc CLEANUP_RAN6798
    stloc CELL_TMP7437
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    stloc CELL_VAL_TMP7438
    ldloc CELL_TMP7437
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7438
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7438
    pop
    ldstr "ERROR-LEXICAL-UWP:CLEANUP"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT7359
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V17360
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V27361
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V37362
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V47363
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V57364
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V67365
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V77366
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V87367
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V97368
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V107369
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V117370
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V127371
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V137372
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V147373
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V157374
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V167375
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V177376
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V187377
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V197378
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V207379
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V217380
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V227381
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V237382
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V247383
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V257384
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V267385
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V277386
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V287387
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V297388
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V307389
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V317390
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V327391
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V337392
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V347393
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V357394
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V367395
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V377396
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V387397
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V397398
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V407399
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V417400
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V427401
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V437402
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V447403
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V457404
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V467405
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V477406
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V487407
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V497408
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V507409
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V517410
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V527411
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V537412
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V547413
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V557414
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V567415
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V577416
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V587417
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V597418
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V607419
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V617420
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V627421
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V637422
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE7435:
    ldloc UWP_RESULT7358
    stloc BLOCK_RESULT_DONE_6802
    leave BLOCK_END_DONE_6801
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_6800"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW7434
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_6802
    leave BLOCK_END_DONE_6801
BLOCK_RETHROW7434:
    pop
    rethrow
    }
BLOCK_END_DONE_6801:
    nop
    ldloc BLOCK_RESULT_DONE_6802
    stloc CELL_VAL_TMP7433
    ldloc CELL_TMP7432
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7433
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7433
    pop
    ldstr "ERROR-LEXICAL-UWP:RESULT"
    ldloc RESULT6799
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_ERROR7169'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7430
    ldnull
    br END7431
TRUE7430:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7431:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "ERROR-LEXICAL-UWP:CLEANUP-RAN"
    ldloc CLEANUP_RAN6798
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:ERROR-LEXICAL-UWP"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_ERROR_LEXICAL_EXIT_WITH_UNWIND_PROTECT_6796:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES6792, object C6791, object HANDLER_BIND_RESULT7344, object HANDLERS_LIST7343, object SAVED_HANDLERS7342, object HANDLER_BIND_RESULT7340, object HANDLERS_LIST7339, object SAVED_HANDLERS7338, object CATCH_RESULT7337, object CATCH_TAG7336, object ID67786786, object CONDITION67776785, object TAG67796784, object BLOCK_RESULT_EXIT6776_6783)
    ldstr "SEE:BEGIN:SIGNAL-ESCALATE"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG67796784
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION67776785
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID67786786
    ldloc TAG67796784
    stloc CATCH_TAG7336
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7338
    ldloc SAVED_HANDLERS7338
    stloc HANDLERS_LIST7339
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ESCALATED_ERROR7341'
    ldloc TAG67796784
    ldloc CONDITION67776785
    ldloc ID67786786
    newobj instance void L_6818::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7339
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7339
    ldloc HANDLERS_LIST7339
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7342
    ldloc SAVED_HANDLERS7342
    stloc HANDLERS_LIST7343
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_WARN7345'
    newobj instance void L_6819::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7343
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7343
    ldloc HANDLERS_LIST7343
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7346'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SIGNAL_SHOULD_NOT_REACH7269'
    stloc HANDLER_BIND_RESULT7344
    leave DONE7355
    }
    finally
    {
    ldloc SAVED_HANDLERS7342
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7355:
    ldloc HANDLER_BIND_RESULT7344
    stloc BLOCK_RESULT_EXIT6776_6783
    leave BLOCK_END_EXIT6776_6782
    stloc HANDLER_BIND_RESULT7340
    leave DONE7354
    }
    finally
    {
    ldloc SAVED_HANDLERS7338
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7354:
    ldloc HANDLER_BIND_RESULT7340
    stloc CATCH_RESULT7337
    leave CATCH_DONE7352
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG7336
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW7353
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT7337
    leave CATCH_DONE7352
CATCH_RETHROW7353:
    pop
    rethrow
    }
CATCH_DONE7352:
    ldloc CATCH_RESULT7337
    pop
    ldloc ID67786786
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7162'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7347
    ldnull
    br END7348
TRUE7347:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7348:
    nop
    ldnull
    ceq
    brtrue ELSE7356
    ldloc CONDITION67776785
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6791
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_ESCALATED7349'
    br END7357
ELSE7356:
    nop
    ldnull
END7357:
    nop
    stloc BLOCK_RESULT_EXIT6776_6783
BLOCK_END_EXIT6776_6782:
    nop
    ldloc BLOCK_RESULT_EXIT6776_6783
    stloc RES6792
    ldstr "SIGNAL-ESCALATE:CAUGHT-ERROR"
    ldloc RES6792
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_ESCALATED7349'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7350
    ldnull
    br END7351
TRUE7350:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7351:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:SIGNAL-ESCALATE"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_SIGNAL_HANDLER_ESCALATES_TO_ERROR_6774:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH_Body'() cil managed
{
    .maxstack 8
    .locals init (object REFLECT_ARGS7333, object MSG6770, object C6769, object HANDLER_BIND_RESULT7325, object HANDLERS_LIST7324, object SAVED_HANDLERS7323, object CATCH_RESULT7322, object CATCH_TAG7321, object ID67586766, object CONDITION67576765, object TAG67596764, object BLOCK_RESULT_EXIT6756_6763)
    ldstr "SEE:BEGIN:ERROR-DOTNET"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG67596764
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION67576765
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID67586766
    ldloc TAG67596764
    stloc CATCH_TAG7321
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7323
    ldloc SAVED_HANDLERS7323
    stloc HANDLERS_LIST7324
    ldstr "System.Exception"
    ldloc TAG67596764
    ldloc CONDITION67576765
    ldloc ID67586766
    newobj instance void L_6817::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7324
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7324
    ldloc HANDLERS_LIST7324
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "System.Exception"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7333
    ldloc REFLECT_ARGS7333
    ldc.i4 0
    ldstr "SEE .NET"
    stelem.ref
    ldloc REFLECT_ARGS7333
    call object [LispBase]Lisp.Reflection::'New'(object, object[])
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6756_6763
    leave BLOCK_END_EXIT6756_6762
    stloc HANDLER_BIND_RESULT7325
    leave DONE7332
    }
    finally
    {
    ldloc SAVED_HANDLERS7323
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7332:
    ldloc HANDLER_BIND_RESULT7325
    stloc CATCH_RESULT7322
    leave CATCH_DONE7330
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG7321
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW7331
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT7322
    leave CATCH_DONE7330
CATCH_RETHROW7331:
    pop
    rethrow
    }
CATCH_DONE7330:
    ldloc CATCH_RESULT7322
    pop
    ldloc ID67586766
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7155'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7326
    ldnull
    br END7327
TRUE7326:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7327:
    nop
    ldnull
    ceq
    brtrue ELSE7334
    ldloc CONDITION67576765
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6769
    ldloc C6769
    ldstr "Message"
    call object [LispBase]Lisp.Reflection::'GetProperty'(object, string)
    br END7335
ELSE7334:
    nop
    ldnull
END7335:
    nop
    stloc BLOCK_RESULT_EXIT6756_6763
BLOCK_END_EXIT6756_6762:
    nop
    ldloc BLOCK_RESULT_EXIT6756_6763
    stloc MSG6770
    ldstr "ERROR-DOTNET:MESSAGE"
    ldloc MSG6770
    ldstr "SEE .NET"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7328
    ldnull
    br END7329
TRUE7328:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7329:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:ERROR-DOTNET"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_ERROR_DOTNET_EXCEPTION_CATCH_6754:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7318, object CELL_TMP7317, object TEMP7309, object C6750, object HANDLER_BIND_RESULT7306, object HANDLERS_LIST7305, object SAVED_HANDLERS7304, object CATCH_RESULT7303, object CATCH_TAG7302, object ID67396747, object CONDITION67386746, object TAG67406745, object BLOCK_RESULT_EXIT6737_6744, object HANDLER_BIND_RESULT7301, object HANDLERS_LIST7300, object SAVED_HANDLERS7299, object HC_CAUGHT6734, object HB_CALLED6733)
    ldstr "SEE:BEGIN:ERROR-HB-HC"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc HB_CALLED6733
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc HC_CAUGHT6734
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7299
    ldloc SAVED_HANDLERS7299
    stloc HANDLERS_LIST7300
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERROR7286'
    ldloc HB_CALLED6733
    newobj instance void L_6815::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7300
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7300
    ldloc HANDLERS_LIST7300
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG67406745
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION67386746
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID67396747
    ldloc TAG67406745
    stloc CATCH_TAG7302
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7304
    ldloc SAVED_HANDLERS7304
    stloc HANDLERS_LIST7305
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERROR7286'
    ldloc TAG67406745
    ldloc CONDITION67386746
    ldloc ID67396747
    newobj instance void L_6816::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7305
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7305
    ldloc HANDLERS_LIST7305
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7287'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT6737_6744
    leave BLOCK_END_EXIT6737_6743
    stloc HANDLER_BIND_RESULT7306
    leave DONE7316
    }
    finally
    {
    ldloc SAVED_HANDLERS7304
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7316:
    ldloc HANDLER_BIND_RESULT7306
    stloc CATCH_RESULT7303
    leave CATCH_DONE7314
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG7302
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW7315
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT7303
    leave CATCH_DONE7314
CATCH_RETHROW7315:
    pop
    rethrow
    }
CATCH_DONE7314:
    ldloc CATCH_RESULT7303
    pop
    ldloc ID67396747
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7148'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7307
    ldnull
    br END7308
TRUE7307:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7308:
    nop
    ldnull
    ceq
    brtrue ELSE7319
    ldloc CONDITION67386746
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6750
    ldloc HC_CAUGHT6734
    stloc CELL_TMP7317
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    stloc CELL_VAL_TMP7318
    ldloc CELL_TMP7317
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7318
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7318
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT7310'
    br END7320
ELSE7319:
    nop
    ldnull
END7320:
    nop
    stloc BLOCK_RESULT_EXIT6737_6744
BLOCK_END_EXIT6737_6743:
    nop
    ldloc BLOCK_RESULT_EXIT6737_6744
    stloc HANDLER_BIND_RESULT7301
    leave DONE7313
    }
    finally
    {
    ldloc SAVED_HANDLERS7299
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7313:
    ldloc HANDLER_BIND_RESULT7301
    pop
    ldstr "ERROR-HB-HC:HANDLER-BIND-NOT-CALLED"
    ldloc HB_CALLED6733
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7311
    ldnull
    br END7312
TRUE7311:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7174'
END7312:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "ERROR-HB-HC:HANDLER-CASE-CAUGHT"
    ldloc HC_CAUGHT6734
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:ERROR-HB-HC"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_ERROR_HANDLER_BIND_VS_HANDLER_CASE_6731:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES6727, object C6726, object HANDLER_BIND_RESULT7285, object HANDLERS_LIST7284, object SAVED_HANDLERS7283, object CATCH_RESULT7282, object CATCH_TAG7281, object ID67156723, object CONDITION67146722, object TAG67166721, object BLOCK_RESULT_EXIT6713_6720)
    ldstr "SEE:BEGIN:ERROR-HANDLER-CASE"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG67166721
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION67146722
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID67156723
    ldloc TAG67166721
    stloc CATCH_TAG7281
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7283
    ldloc SAVED_HANDLERS7283
    stloc HANDLERS_LIST7284
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_ERROR7286'
    ldloc TAG67166721
    ldloc CONDITION67146722
    ldloc ID67156723
    newobj instance void L_6814::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7284
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7284
    ldloc HANDLERS_LIST7284
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7287'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ERROR_SHOULD_NOT_REACH7288'
    stloc BLOCK_RESULT_EXIT6713_6720
    leave BLOCK_END_EXIT6713_6719
    stloc HANDLER_BIND_RESULT7285
    leave DONE7296
    }
    finally
    {
    ldloc SAVED_HANDLERS7283
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7296:
    ldloc HANDLER_BIND_RESULT7285
    stloc CATCH_RESULT7282
    leave CATCH_DONE7294
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG7281
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW7295
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT7282
    leave CATCH_DONE7294
CATCH_RETHROW7295:
    pop
    rethrow
    }
CATCH_DONE7294:
    ldloc CATCH_RESULT7282
    pop
    ldloc ID67156723
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7137'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7289
    ldnull
    br END7290
TRUE7289:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7290:
    nop
    ldnull
    ceq
    brtrue ELSE7297
    ldloc CONDITION67146722
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C6726
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_SEE_ERROR7291'
    br END7298
ELSE7297:
    nop
    ldnull
END7298:
    nop
    stloc BLOCK_RESULT_EXIT6713_6720
BLOCK_END_EXIT6713_6719:
    nop
    ldloc BLOCK_RESULT_EXIT6713_6720
    stloc RES6727
    ldstr "ERROR-HANDLER-CASE:CAUGHT"
    ldloc RES6727
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_CAUGHT_SEE_ERROR7291'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7292
    ldnull
    br END7293
TRUE7292:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7293:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:ERROR-HANDLER-CASE"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_ERROR_CAUGHT_AND_NO_FALLTHROUGH_6711:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7280, object CELL_TMP7279, object BLOCK_RESULT_DONE_6705, object CELL_VAL_TMP7275, object CELL_TMP7274, object TEMP7271, object TEMP7270, object HANDLER_BIND_RESULT7266, object HANDLERS_LIST7265, object SAVED_HANDLERS7264, object UWP_V637263, object UWP_V627262, object UWP_V617261, object UWP_V607260, object UWP_V597259, object UWP_V587258, object UWP_V577257, object UWP_V567256, object UWP_V557255, object UWP_V547254, object UWP_V537253, object UWP_V527252, object UWP_V517251, object UWP_V507250, object UWP_V497249, object UWP_V487248, object UWP_V477247, object UWP_V467246, object UWP_V457245, object UWP_V447244, object UWP_V437243, object UWP_V427242, object UWP_V417241, object UWP_V407240, object UWP_V397239, object UWP_V387238, object UWP_V377237, object UWP_V367236, object UWP_V357235, object UWP_V347234, object UWP_V337233, object UWP_V327232, object UWP_V317231, object UWP_V307230, object UWP_V297229, object UWP_V287228, object UWP_V277227, object UWP_V267226, object UWP_V257225, object UWP_V247224, object UWP_V237223, object UWP_V227222, object UWP_V217221, object UWP_V207220, object UWP_V197219, object UWP_V187218, object UWP_V177217, object UWP_V167216, object UWP_V157215, object UWP_V147214, object UWP_V137213, object UWP_V127212, object UWP_V117211, object UWP_V107210, object UWP_V97209, object UWP_V87208, object UWP_V77207, object UWP_V67206, object UWP_V57205, object UWP_V47204, object UWP_V37203, object UWP_V27202, object UWP_V17201, object UWP_COUNT7200, object UWP_RESULT7199, object RESULT6702, object CLEANUP_RAN6701)
    ldstr "SEE:BEGIN:SIGNAL-LEXICAL-UWP"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RAN6701
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT6702
    ldloc RESULT6702
    stloc CELL_TMP7274
    .try
    {
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7264
    ldloc SAVED_HANDLERS7264
    stloc HANDLERS_LIST7265
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_SIGNAL7267'
    newobj instance void L_6813::'.ctor'()
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7265
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7265
    ldloc HANDLERS_LIST7265
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7268'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SIGNAL_SHOULD_NOT_REACH7269'
    stloc HANDLER_BIND_RESULT7266
    leave DONE7278
    }
    finally
    {
    ldloc SAVED_HANDLERS7264
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7278:
    ldloc HANDLER_BIND_RESULT7266
    stloc UWP_RESULT7199
    leave DONE7277
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT7200
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V17201
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V27202
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V37203
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V47204
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V57205
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V67206
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V77207
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V87208
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V97209
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V107210
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V117211
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V127212
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V137213
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V147214
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V157215
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V167216
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V177217
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V187218
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V197219
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V207220
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V217221
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V227222
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V237223
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V247224
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V257225
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V267226
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V277227
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V287228
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V297229
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V307230
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V317231
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V327232
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V337233
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V347234
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V357235
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V367236
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V377237
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V387238
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V397239
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V407240
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V417241
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V427242
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V437243
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V447244
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V457245
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V467246
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V477247
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V487248
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V497249
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V507250
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V517251
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V527252
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V537253
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V547254
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V557255
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V567256
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V577257
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V587258
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V597259
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V607260
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V617261
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V627262
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V637263
    ldloc CLEANUP_RAN6701
    stloc CELL_TMP7279
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    stloc CELL_VAL_TMP7280
    ldloc CELL_TMP7279
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7280
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7280
    pop
    ldstr "SIGNAL-LEXICAL-UWP:CLEANUP"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT7200
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V17201
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V27202
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V37203
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V47204
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V57205
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V67206
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V77207
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V87208
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V97209
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V107210
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V117211
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V127212
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V137213
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V147214
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V157215
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V167216
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V177217
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V187218
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V197219
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V207220
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V217221
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V227222
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V237223
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V247224
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V257225
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V267226
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V277227
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V287228
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V297229
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V307230
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V317231
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V327232
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V337233
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V347234
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V357235
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V367236
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V377237
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V387238
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V397239
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V407240
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V417241
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V427242
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V437243
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V447244
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V457245
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V467246
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V477247
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V487248
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V497249
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V507250
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V517251
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V527252
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V537253
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V547254
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V557255
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V567256
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V577257
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V587258
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V597259
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V607260
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V617261
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V627262
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V637263
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE7277:
    ldloc UWP_RESULT7199
    stloc BLOCK_RESULT_DONE_6705
    leave BLOCK_END_DONE_6704
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_DONE_6703"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW7276
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_DONE_6705
    leave BLOCK_END_DONE_6704
BLOCK_RETHROW7276:
    pop
    rethrow
    }
BLOCK_END_DONE_6704:
    nop
    ldloc BLOCK_RESULT_DONE_6705
    stloc CELL_VAL_TMP7275
    ldloc CELL_TMP7274
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7275
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7275
    pop
    ldstr "SIGNAL-LEXICAL-UWP:RESULT"
    ldloc RESULT6702
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_SIGNAL7135'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7272
    ldnull
    br END7273
TRUE7272:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7273:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SIGNAL-LEXICAL-UWP:CLEANUP-RAN"
    ldloc CLEANUP_RAN6701
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:SIGNAL-LEXICAL-UWP"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_SIGNAL_LEXICAL_EXIT_WITH_UNWIND_PROTECT_6699:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_SIGNAL_ORDER_AND_RESUME_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_SIGNAL_ORDER_AND_RESUME_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7194, object CELL_TMP7193, object TEMP7183, object HANDLER_BIND_RESULT7181, object HANDLERS_LIST7180, object SAVED_HANDLERS7179, object HANDLER_BIND_RESULT7177, object HANDLERS_LIST7176, object SAVED_HANDLERS7175, object AFTER6691, object EVENTS6690)
    ldstr "SEE:BEGIN:SIGNAL-ORDER"
    call object Program::'SEE_MARKER'(object)
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc EVENTS6690
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc AFTER6691
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7175
    ldloc SAVED_HANDLERS7175
    stloc HANDLERS_LIST7176
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_COND7178'
    ldloc EVENTS6690
    newobj instance void L_6811::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7176
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7176
    ldloc HANDLERS_LIST7176
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS7179
    ldloc SAVED_HANDLERS7179
    stloc HANDLERS_LIST7180
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_SEE_COND7178'
    ldloc EVENTS6690
    newobj instance void L_6812::'.ctor'(object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST7180
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST7180
    ldloc HANDLERS_LIST7180
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7182'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    pop
    ldloc AFTER6691
    stloc CELL_TMP7193
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    stloc CELL_VAL_TMP7194
    ldloc CELL_TMP7193
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7194
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7194
    stloc HANDLER_BIND_RESULT7181
    leave DONE7192
    }
    finally
    {
    ldloc SAVED_HANDLERS7179
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7192:
    ldloc HANDLER_BIND_RESULT7181
    stloc HANDLER_BIND_RESULT7177
    leave DONE7191
    }
    finally
    {
    ldloc SAVED_HANDLERS7175
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE7191:
    ldloc HANDLER_BIND_RESULT7177
    pop
    ldstr "SIGNAL-ORDER:INNER-THEN-OUTER"
    ldloc EVENTS6690
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER7127'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7184
    ldnull
    br END7185
TRUE7184:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7185:
    nop
    ldnull
    ceq
    brtrue ELSE7197
    ldloc EVENTS6690
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER7131'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7187
    ldnull
    br END7188
TRUE7187:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7186'
END7188:
    nop
    ldnull
    ceq
    brtrue ELSE7195
    ldloc EVENTS6690
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7189
    ldnull
    br END7190
TRUE7189:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7174'
END7190:
    nop
    br END7196
ELSE7195:
    nop
    ldnull
END7196:
    nop
    br END7198
ELSE7197:
    nop
    ldnull
END7198:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SIGNAL-ORDER:RESUMES"
    ldloc AFTER6691
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:SIGNAL-ORDER"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_SIGNAL_ORDER_AND_RESUME_6688:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'SEE_TEST_SIGNAL_NO_HANDLER_Body'()
    ret
}

.method private static hidebysig object 'SEE_TEST_SIGNAL_NO_HANDLER_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES6684)
    ldstr "SEE:BEGIN:SIGNAL-NO-HANDLER"
    call object Program::'SEE_MARKER'(object)
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7171'
    call object [LispBase]Lisp.HandlerControl::'Signal'(object)
    stloc RES6684
    ldstr "SIGNAL-NO-HANDLER:RETURNS-NIL"
    ldloc RES6684
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7172
    ldnull
    br END7173
TRUE7172:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7174'
END7173:
    nop
    call object Program::'SEE_CHECK'(object, object)
    pop
    ldstr "SEE:END:SIGNAL-NO-HANDLER"
    tail. call object Program::'SEE_MARKER'(object)
    ret
BLOCK_END_SEE_TEST_SIGNAL_NO_HANDLER_6682:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'SEE_CHECK_Body'(object, object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_CHECK'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'SEE_CHECK_Body'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    ceq
    brtrue ELSE7170
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE7170:
    nop
    ldarg 0
    tail. call object Program::'SEE_FAIL'(object)
    ret
BLOCK_END_SEE_CHECK_6677:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'SEE_FAIL_Body'(object)
    ret
}

.method public static hidebysig object 'SEE_FAIL'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'SEE_FAIL_Body'(object) cil managed
{
    .maxstack 8
    ldstr "SEE:FAIL"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_SEE_FAIL_6670:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'SEE_MARKER_Body'(object)
    ret
}

.method public static hidebysig object 'SEE_MARKER'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'SEE_MARKER_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_SEE_MARKER_6664:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'RUN_SIGNAL_ERROR_EDGE_CASES'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_6811
       extends [LispBase]Lisp.Closure
{
    .field public object 'EVENTS6690'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6811::'EVENTS6690'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7130, object CELL_TMP7129, object TEMP7128)
    ldarg.0
    ldfld object L_6811::'EVENTS6690'
    stloc CELL_TMP7129
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER7127'
    ldarg.0
    ldfld object L_6811::'EVENTS6690'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc CELL_VAL_TMP7130
    ldloc CELL_TMP7129
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7130
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7130
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
    callvirt instance object L_6811::'InvokeBody'(object)
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

} // end of class L_6811

.class public auto ansi beforefieldinit L_6812
       extends [LispBase]Lisp.Closure
{
    .field public object 'EVENTS6690'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6812::'EVENTS6690'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7134, object CELL_TMP7133, object TEMP7132)
    ldarg.0
    ldfld object L_6812::'EVENTS6690'
    stloc CELL_TMP7133
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER7131'
    ldarg.0
    ldfld object L_6812::'EVENTS6690'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc CELL_VAL_TMP7134
    ldloc CELL_TMP7133
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7134
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7134
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
    callvirt instance object L_6812::'InvokeBody'(object)
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

} // end of class L_6812

.class public auto ansi beforefieldinit L_6813
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
    ldstr "BLOCK_ID_DONE_6703"
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_SIGNAL7135'
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
    callvirt instance object L_6813::'InvokeBody'(object)
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

} // end of class L_6813

.class public auto ansi beforefieldinit L_6814
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG67166721'
    .field public object 'CONDITION67146722'
    .field public object 'ID67156723'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6814::'TAG67166721'
    ldarg.0
    ldarg 2
    stfld object L_6814::'CONDITION67146722'
    ldarg.0
    ldarg 3
    stfld object L_6814::'ID67156723'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7142, object CELL_TMP7141, object CELL_VAL_TMP7140, object CELL_TMP7139, object TEMP7138, object TEMP7136)
    ldarg.0
    ldfld object L_6814::'CONDITION67146722'
    stloc CELL_TMP7139
    ldarg 1
    stloc CELL_VAL_TMP7140
    ldloc CELL_TMP7139
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7140
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7140
    pop
    ldarg.0
    ldfld object L_6814::'ID67156723'
    stloc CELL_TMP7141
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7137'
    stloc CELL_VAL_TMP7142
    ldloc CELL_TMP7141
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7142
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7142
    pop
    ldarg.0
    ldfld object L_6814::'TAG67166721'
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
    callvirt instance object L_6814::'InvokeBody'(object)
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

} // end of class L_6814

.class public auto ansi beforefieldinit L_6815
       extends [LispBase]Lisp.Closure
{
    .field public object 'HB_CALLED6733'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6815::'HB_CALLED6733'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7146, object CELL_TMP7145, object TEMP7144)
    ldarg.0
    ldfld object L_6815::'HB_CALLED6733'
    stloc CELL_TMP7145
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7143'
    stloc CELL_VAL_TMP7146
    ldloc CELL_TMP7145
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7146
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7146
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
    callvirt instance object L_6815::'InvokeBody'(object)
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

} // end of class L_6815

.class public auto ansi beforefieldinit L_6816
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG67406745'
    .field public object 'CONDITION67386746'
    .field public object 'ID67396747'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6816::'TAG67406745'
    ldarg.0
    ldarg 2
    stfld object L_6816::'CONDITION67386746'
    ldarg.0
    ldarg 3
    stfld object L_6816::'ID67396747'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7153, object CELL_TMP7152, object CELL_VAL_TMP7151, object CELL_TMP7150, object TEMP7149, object TEMP7147)
    ldarg.0
    ldfld object L_6816::'CONDITION67386746'
    stloc CELL_TMP7150
    ldarg 1
    stloc CELL_VAL_TMP7151
    ldloc CELL_TMP7150
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7151
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7151
    pop
    ldarg.0
    ldfld object L_6816::'ID67396747'
    stloc CELL_TMP7152
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7148'
    stloc CELL_VAL_TMP7153
    ldloc CELL_TMP7152
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7153
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7153
    pop
    ldarg.0
    ldfld object L_6816::'TAG67406745'
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
    callvirt instance object L_6816::'InvokeBody'(object)
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

} // end of class L_6816

.class public auto ansi beforefieldinit L_6817
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG67596764'
    .field public object 'CONDITION67576765'
    .field public object 'ID67586766'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6817::'TAG67596764'
    ldarg.0
    ldarg 2
    stfld object L_6817::'CONDITION67576765'
    ldarg.0
    ldarg 3
    stfld object L_6817::'ID67586766'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7160, object CELL_TMP7159, object CELL_VAL_TMP7158, object CELL_TMP7157, object TEMP7156, object TEMP7154)
    ldarg.0
    ldfld object L_6817::'CONDITION67576765'
    stloc CELL_TMP7157
    ldarg 1
    stloc CELL_VAL_TMP7158
    ldloc CELL_TMP7157
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7158
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7158
    pop
    ldarg.0
    ldfld object L_6817::'ID67586766'
    stloc CELL_TMP7159
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7155'
    stloc CELL_VAL_TMP7160
    ldloc CELL_TMP7159
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7160
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7160
    pop
    ldarg.0
    ldfld object L_6817::'TAG67596764'
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
    callvirt instance object L_6817::'InvokeBody'(object)
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

} // end of class L_6817

.class public auto ansi beforefieldinit L_6818
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG67796784'
    .field public object 'CONDITION67776785'
    .field public object 'ID67786786'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_6818::'TAG67796784'
    ldarg.0
    ldarg 2
    stfld object L_6818::'CONDITION67776785'
    ldarg.0
    ldarg 3
    stfld object L_6818::'ID67786786'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7167, object CELL_TMP7166, object CELL_VAL_TMP7165, object CELL_TMP7164, object TEMP7163, object TEMP7161)
    ldarg.0
    ldfld object L_6818::'CONDITION67776785'
    stloc CELL_TMP7164
    ldarg 1
    stloc CELL_VAL_TMP7165
    ldloc CELL_TMP7164
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7165
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7165
    pop
    ldarg.0
    ldfld object L_6818::'ID67786786'
    stloc CELL_TMP7166
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7162'
    stloc CELL_VAL_TMP7167
    ldloc CELL_TMP7166
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7167
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7167
    pop
    ldarg.0
    ldfld object L_6818::'TAG67796784'
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
    callvirt instance object L_6818::'InvokeBody'(object)
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

} // end of class L_6818

.class public auto ansi beforefieldinit L_6819
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7168'
    tail. call object [LispBase]Lisp.HandlerControl::'Error'(object)
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
    callvirt instance object L_6819::'InvokeBody'(object)
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

} // end of class L_6819

.class public auto ansi beforefieldinit L_6820
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
    ldstr "BLOCK_ID_DONE_6800"
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ESCAPED_ERROR7169'
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
    callvirt instance object L_6820::'InvokeBody'(object)
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

} // end of class L_6820

