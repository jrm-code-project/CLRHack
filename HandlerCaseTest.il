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
    .field public static object 'TAG25402544'
    .field public static object 'ID25392546'
    .field public static object 'CONDITION25382545'
    .field public static object 'TAG25282532'
    .field public static object 'ID25272534'
    .field public static object 'CONDITION25262533'
    .field public static object 'TAG25102514'
    .field public static object 'ID25092516'
    .field public static object 'CONDITION25082515'
    .field public static object 'TAG24922496'
    .field public static object '_INTERN'
    .field public static object 'ID24912498'
    .field public static object 'CONDITION24902497'
    .field public static object '_SET_CELL_VALUE_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2676'
    .field public static class [LispBase]Lisp.Symbol 'SYM_OUTER_ERROR2675'
    .field public static class [LispBase]Lisp.Symbol 'SYM_INNER_ERROR2669'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2658'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2645'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2644'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2641'
    .field public static class [LispBase]Lisp.Symbol 'SYM_MY_ERROR2640'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2633'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2630'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2627'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2624'

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
    stsfld object Program::'TAG25402544'
    ldnull
    stsfld object Program::'ID25392546'
    ldnull
    stsfld object Program::'CONDITION25382545'
    ldnull
    stsfld object Program::'TAG25282532'
    ldnull
    stsfld object Program::'ID25272534'
    ldnull
    stsfld object Program::'CONDITION25262533'
    ldnull
    stsfld object Program::'TAG25102514'
    ldnull
    stsfld object Program::'ID25092516'
    ldnull
    stsfld object Program::'CONDITION25082515'
    ldnull
    stsfld object Program::'TAG24922496'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'ID24912498'
    ldnull
    stsfld object Program::'CONDITION24902497'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2676'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR2675'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR2669'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "SHOULD-NOT-HAPPEN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2658'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CAUGHT-IT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2645'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2644'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2640'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER-ERROR2541"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2633'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER-ERROR2529"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2630'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR2511"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2627'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-ERROR2493"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2624'
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
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
    .locals init (object C2550, object C2549, object HANDLER_BIND_RESULT2674, object HANDLERS_LIST2673, object SAVED_HANDLERS2672, object CATCH_RESULT2671, object CATCH_TAG2670, object ID25392546, object CONDITION25382545, object TAG25402544, object BLOCK_RESULT_EXIT2537_2543, object HANDLER_BIND_RESULT2668, object HANDLERS_LIST2667, object SAVED_HANDLERS2666, object CATCH_RESULT2665, object CATCH_TAG2664, object ID25272534, object CONDITION25262533, object TAG25282532, object BLOCK_RESULT_EXIT2525_2531)
    ldstr "--- test-handler-case-nested ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG25282532
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION25262533
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID25272534
    ldloc TAG25282532
    stloc CATCH_TAG2664
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2666
    ldloc SAVED_HANDLERS2666
    stloc HANDLERS_LIST2667
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_INNER_ERROR2669'
    ldloc TAG25282532
    ldloc CONDITION25262533
    ldloc ID25272534
    newobj instance void L_2554::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2667
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2667
    ldloc HANDLERS_LIST2667
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG25402544
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION25382545
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID25392546
    ldloc TAG25402544
    stloc CATCH_TAG2670
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2672
    ldloc SAVED_HANDLERS2672
    stloc HANDLERS_LIST2673
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_OUTER_ERROR2675'
    ldloc TAG25402544
    ldloc CONDITION25382545
    ldloc ID25392546
    newobj instance void L_2555::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2673
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2673
    ldloc HANDLERS_LIST2673
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2676'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT2537_2543
    leave BLOCK_END_EXIT2537_2542
    stloc HANDLER_BIND_RESULT2674
    leave DONE2686
    }
    finally
    {
    ldloc SAVED_HANDLERS2672
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2686:
    ldloc HANDLER_BIND_RESULT2674
    stloc CATCH_RESULT2671
    leave CATCH_DONE2684
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2670
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2685
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2671
    leave CATCH_DONE2684
CATCH_RETHROW2685:
    pop
    rethrow
    }
CATCH_DONE2684:
    ldloc CATCH_RESULT2671
    pop
    ldloc ID25392546
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2633'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2677
    ldnull
    br END2678
TRUE2677:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2644'
END2678:
    nop
    ldnull
    ceq
    brtrue ELSE2687
    ldloc CONDITION25382545
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2549
    ldstr "Caught outer in inner (wrong!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2688
ELSE2687:
    nop
    ldnull
END2688:
    nop
    stloc BLOCK_RESULT_EXIT2537_2543
BLOCK_END_EXIT2537_2542:
    nop
    ldloc BLOCK_RESULT_EXIT2537_2543
    stloc BLOCK_RESULT_EXIT2525_2531
    leave BLOCK_END_EXIT2525_2530
    stloc HANDLER_BIND_RESULT2668
    leave DONE2683
    }
    finally
    {
    ldloc SAVED_HANDLERS2666
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2683:
    ldloc HANDLER_BIND_RESULT2668
    stloc CATCH_RESULT2665
    leave CATCH_DONE2681
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2664
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2682
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2665
    leave CATCH_DONE2681
CATCH_RETHROW2682:
    pop
    rethrow
    }
CATCH_DONE2681:
    ldloc CATCH_RESULT2665
    pop
    ldloc ID25272534
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2630'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2679
    ldnull
    br END2680
TRUE2679:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2644'
END2680:
    nop
    ldnull
    ceq
    brtrue ELSE2689
    ldloc CONDITION25262533
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2550
    ldstr "Caught inner in outer (correct!)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2690
ELSE2689:
    nop
    ldnull
END2690:
    nop
    stloc BLOCK_RESULT_EXIT2525_2531
BLOCK_END_EXIT2525_2530:
    nop
    ldloc BLOCK_RESULT_EXIT2525_2531
    ret
BLOCK_END_TEST_HANDLER_CASE_NESTED_2523:
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_NO_CATCH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
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
    .locals init (object RESULT2520, object C2519, object HANDLER_BIND_RESULT2655, object HANDLERS_LIST2654, object SAVED_HANDLERS2653, object CATCH_RESULT2652, object CATCH_TAG2651, object ID25092516, object CONDITION25082515, object TAG25102514, object BLOCK_RESULT_EXIT2507_2513)
    ldstr "--- test-handler-case-no-catch ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG25102514
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION25082515
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID25092516
    ldloc TAG25102514
    stloc CATCH_TAG2651
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2653
    ldloc SAVED_HANDLERS2653
    stloc HANDLERS_LIST2654
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2640'
    ldloc TAG25102514
    ldloc CONDITION25082515
    ldloc ID25092516
    newobj instance void L_2553::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2654
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2654
    ldloc HANDLERS_LIST2654
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "Returning normally"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 42
    box int32
    stloc BLOCK_RESULT_EXIT2507_2513
    leave BLOCK_END_EXIT2507_2512
    stloc HANDLER_BIND_RESULT2655
    leave DONE2661
    }
    finally
    {
    ldloc SAVED_HANDLERS2653
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2661:
    ldloc HANDLER_BIND_RESULT2655
    stloc CATCH_RESULT2652
    leave CATCH_DONE2659
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2651
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2660
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2652
    leave CATCH_DONE2659
CATCH_RETHROW2660:
    pop
    rethrow
    }
CATCH_DONE2659:
    ldloc CATCH_RESULT2652
    pop
    ldloc ID25092516
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2627'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2656
    ldnull
    br END2657
TRUE2656:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2644'
END2657:
    nop
    ldnull
    ceq
    brtrue ELSE2662
    ldloc CONDITION25082515
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2519
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2658'
    br END2663
ELSE2662:
    nop
    ldnull
END2663:
    nop
    stloc BLOCK_RESULT_EXIT2507_2513
BLOCK_END_EXIT2507_2512:
    nop
    ldloc BLOCK_RESULT_EXIT2507_2513
    stloc RESULT2520
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2520
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_NO_CATCH_2505:
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_HANDLER_CASE_SIMPLE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
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
    .locals init (object RESULT2502, object C2501, object HANDLER_BIND_RESULT2639, object HANDLERS_LIST2638, object SAVED_HANDLERS2637, object CATCH_RESULT2636, object CATCH_TAG2635, object ID24912498, object CONDITION24902497, object TAG24922496, object BLOCK_RESULT_EXIT2489_2495)
    ldstr "--- test-handler-case-simple ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TAG24922496
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CONDITION24902497
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ID24912498
    ldloc TAG24922496
    stloc CATCH_TAG2635
    .try
    {
    call object [LispBase]Lisp.HandlerControl::'GetActiveHandlers'()
    stloc SAVED_HANDLERS2637
    ldloc SAVED_HANDLERS2637
    stloc HANDLERS_LIST2638
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_MY_ERROR2640'
    ldloc TAG24922496
    ldloc CONDITION24902497
    ldloc ID24912498
    newobj instance void L_2552::'.ctor'(object, object, object)
    newobj instance void [LispBase]Lisp.Handler::'.ctor'(object, object)
    ldloc HANDLERS_LIST2638
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc HANDLERS_LIST2638
    ldloc HANDLERS_LIST2638
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    .try
    {
    ldstr "About to error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc BLOCK_RESULT_EXIT2489_2495
    leave BLOCK_END_EXIT2489_2494
    stloc HANDLER_BIND_RESULT2639
    leave DONE2648
    }
    finally
    {
    ldloc SAVED_HANDLERS2637
    call void [LispBase]Lisp.HandlerControl::'SetActiveHandlers'(object)
    endfinally
    }
DONE2648:
    ldloc HANDLER_BIND_RESULT2639
    stloc CATCH_RESULT2636
    leave CATCH_DONE2646
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG2635
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW2647
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT2636
    leave CATCH_DONE2646
CATCH_RETHROW2647:
    pop
    rethrow
    }
CATCH_DONE2646:
    ldloc CATCH_RESULT2636
    pop
    ldloc ID24912498
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2624'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2642
    ldnull
    br END2643
TRUE2642:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2644'
END2643:
    nop
    ldnull
    ceq
    brtrue ELSE2649
    ldloc CONDITION24902497
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc C2501
    ldstr "Caught my-error:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C2501
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2645'
    br END2650
ELSE2649:
    nop
    ldnull
END2650:
    nop
    stloc BLOCK_RESULT_EXIT2489_2495
BLOCK_END_EXIT2489_2494:
    nop
    ldloc BLOCK_RESULT_EXIT2489_2495
    stloc RESULT2502
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2502
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_HANDLER_CASE_SIMPLE_2487:
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

.class public auto ansi beforefieldinit L_2552
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG24922496'
    .field public object 'CONDITION24902497'
    .field public object 'ID24912498'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2552::'TAG24922496'
    ldarg.0
    ldarg 2
    stfld object L_2552::'CONDITION24902497'
    ldarg.0
    ldarg 3
    stfld object L_2552::'ID24912498'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2625, object TEMP2623)
    ldarg.0
    ldfld object L_2552::'CONDITION24902497'
    ldarg 1
    stloc TEMP2623
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2623
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2623
    pop
    ldarg.0
    ldfld object L_2552::'ID24912498'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2624'
    stloc TEMP2625
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2625
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2625
    pop
    ldarg.0
    ldfld object L_2552::'TAG24922496'
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2552::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2552

.class public auto ansi beforefieldinit L_2553
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG25102514'
    .field public object 'CONDITION25082515'
    .field public object 'ID25092516'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2553::'TAG25102514'
    ldarg.0
    ldarg 2
    stfld object L_2553::'CONDITION25082515'
    ldarg.0
    ldarg 3
    stfld object L_2553::'ID25092516'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2628, object TEMP2626)
    ldarg.0
    ldfld object L_2553::'CONDITION25082515'
    ldarg 1
    stloc TEMP2626
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2626
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2626
    pop
    ldarg.0
    ldfld object L_2553::'ID25092516'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2627'
    stloc TEMP2628
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2628
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2628
    pop
    ldarg.0
    ldfld object L_2553::'TAG25102514'
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2553::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2553

.class public auto ansi beforefieldinit L_2554
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG25282532'
    .field public object 'CONDITION25262533'
    .field public object 'ID25272534'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2554::'TAG25282532'
    ldarg.0
    ldarg 2
    stfld object L_2554::'CONDITION25262533'
    ldarg.0
    ldarg 3
    stfld object L_2554::'ID25272534'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2631, object TEMP2629)
    ldarg.0
    ldfld object L_2554::'CONDITION25262533'
    ldarg 1
    stloc TEMP2629
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2629
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2629
    pop
    ldarg.0
    ldfld object L_2554::'ID25272534'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2630'
    stloc TEMP2631
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2631
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2631
    pop
    ldarg.0
    ldfld object L_2554::'TAG25282532'
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2554::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2554

.class public auto ansi beforefieldinit L_2555
       extends [LispBase]Lisp.Closure
{
    .field public object 'TAG25402544'
    .field public object 'CONDITION25382545'
    .field public object 'ID25392546'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_2555::'TAG25402544'
    ldarg.0
    ldarg 2
    stfld object L_2555::'CONDITION25382545'
    ldarg.0
    ldarg 3
    stfld object L_2555::'ID25392546'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2634, object TEMP2632)
    ldarg.0
    ldfld object L_2555::'CONDITION25382545'
    ldarg 1
    stloc TEMP2632
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2632
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2632
    pop
    ldarg.0
    ldfld object L_2555::'ID25392546'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2633'
    stloc TEMP2634
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2634
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2634
    pop
    ldarg.0
    ldfld object L_2555::'TAG25402544'
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_2555::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2555

