.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'test-block' {}
.module 'test-block.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S742'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S742'
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
    call object Program::'TEST_BLOCK_BASIC'()
    pop
    call object Program::'TEST_BLOCK_NESTED'()
    pop
    call object Program::'TEST_BLOCK_UWP'()
    pop
    call object Program::'TEST_IMPLICIT_BLOCK'()
    pop
    tail. call object Program::'TEST_BLOCK_NON_LOCAL_CLOSURE'()
    ret
BLOCK_END_MAIN_599:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_NON_LOCAL_CLOSURE_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_NON_LOCAL_CLOSURE_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_ESCAPE_592, object RESULT595, object K594)
    ldstr "Testing non-local return-from through closure..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_602::'.ctor'()
    stloc K594
    ldloc K594
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print this closure path"
    stloc BLOCK_RESULT_ESCAPE_592
    leave BLOCK_END_ESCAPE_591
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_ESCAPE_590"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW745
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_ESCAPE_592
    leave BLOCK_END_ESCAPE_591
BLOCK_RETHROW745:
    pop
    rethrow
    }
BLOCK_END_ESCAPE_591:
    nop
    ldloc BLOCK_RESULT_ESCAPE_592
    stloc RESULT595
    ldstr "Closure result (should be closure escaped):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT595
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NON_LOCAL_CLOSURE_588:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_IMPLICIT_BLOCK_Body'()
    ret
}

.method private static hidebysig object 'TEST_IMPLICIT_BLOCK_Body'() cil managed
{
    .maxstack 8
    ldstr "Testing implicit function block..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Result for 0:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 0
    box int32
    call object Program::'IMPLICIT_BLOCK_TEST'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Result for 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 1
    box int32
    call object Program::'IMPLICIT_BLOCK_TEST'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_IMPLICIT_BLOCK_583:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'IMPLICIT_BLOCK_TEST_Body'(object)
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'IMPLICIT_BLOCK_TEST_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_IMPLICIT_BLOCK_TEST_579)
    ldarg 0
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE740
    ldnull
    br END741
TRUE740:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S742'
END741:
    nop
    ldnull
    ceq
    brtrue ELSE743
    ldstr "zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_579
    leave BLOCK_END_IMPLICIT_BLOCK_TEST_578
    br END744
ELSE743:
    nop
    ldnull
END744:
    nop
    pop
    ldstr "non-zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_579
BLOCK_END_IMPLICIT_BLOCK_TEST_578:
    nop
    ldloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_579
    ret
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_UWP_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_UWP_Body'() cil managed
{
    .maxstack 8
    .locals init (object UWP_V63738, object UWP_V62737, object UWP_V61736, object UWP_V60735, object UWP_V59734, object UWP_V58733, object UWP_V57732, object UWP_V56731, object UWP_V55730, object UWP_V54729, object UWP_V53728, object UWP_V52727, object UWP_V51726, object UWP_V50725, object UWP_V49724, object UWP_V48723, object UWP_V47722, object UWP_V46721, object UWP_V45720, object UWP_V44719, object UWP_V43718, object UWP_V42717, object UWP_V41716, object UWP_V40715, object UWP_V39714, object UWP_V38713, object UWP_V37712, object UWP_V36711, object UWP_V35710, object UWP_V34709, object UWP_V33708, object UWP_V32707, object UWP_V31706, object UWP_V30705, object UWP_V29704, object UWP_V28703, object UWP_V27702, object UWP_V26701, object UWP_V25700, object UWP_V24699, object UWP_V23698, object UWP_V22697, object UWP_V21696, object UWP_V20695, object UWP_V19694, object UWP_V18693, object UWP_V17692, object UWP_V16691, object UWP_V15690, object UWP_V14689, object UWP_V13688, object UWP_V12687, object UWP_V11686, object UWP_V10685, object UWP_V9684, object UWP_V8683, object UWP_V7682, object UWP_V6681, object UWP_V5680, object UWP_V4679, object UWP_V3678, object UWP_V2677, object UWP_V1676, object UWP_COUNT675, object UWP_RESULT674, object BLOCK_RESULT_EXIT_573)
    ldstr "Testing block with unwind-protect..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    ldstr "Protected code"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "value from return-from"
    stloc BLOCK_RESULT_EXIT_573
    leave BLOCK_END_EXIT_572
    stloc UWP_RESULT674
    leave DONE739
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT675
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V1676
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V2677
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V3678
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V4679
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V5680
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V6681
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V7682
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V8683
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V9684
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V10685
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V11686
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V12687
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V13688
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V14689
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V15690
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V16691
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V17692
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V18693
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V19694
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V20695
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V21696
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V22697
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V23698
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V24699
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V25700
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V26701
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V27702
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V28703
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V29704
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V30705
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V31706
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V32707
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V33708
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V34709
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V35710
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V36711
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V37712
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V38713
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V39714
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V40715
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V41716
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V42717
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V43718
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V44719
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V45720
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V46721
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V47722
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V48723
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V49724
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V50725
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V51726
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V52727
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V53728
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V54729
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V55730
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V56731
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V57732
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V58733
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V59734
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V60735
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V61736
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V62737
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V63738
    ldstr "Cleanup code run"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT675
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V1676
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V2677
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V3678
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V4679
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V5680
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V6681
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V7682
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V8683
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V9684
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V10685
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V11686
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V12687
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V13688
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V14689
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V15690
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V16691
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V17692
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V18693
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V19694
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V20695
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V21696
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V22697
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V23698
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V24699
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V25700
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V26701
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V27702
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V28703
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V29704
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V30705
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V31706
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V32707
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V33708
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V34709
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V35710
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V36711
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V37712
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V38713
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V39714
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V40715
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V41716
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V42717
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V43718
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V44719
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V45720
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V46721
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V47722
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V48723
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V49724
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V50725
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V51726
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V52727
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V53728
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V54729
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V55730
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V56731
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V57732
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V58733
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V59734
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V60735
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V61736
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V62737
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V63738
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE739:
    ldloc UWP_RESULT674
    stloc BLOCK_RESULT_EXIT_573
BLOCK_END_EXIT_572:
    nop
    ldloc BLOCK_RESULT_EXIT_573
    ret
BLOCK_END_TEST_BLOCK_UWP_569:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_OUTER_562)
    ldstr "Testing nested blocks..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Outer start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inner start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "exited from inner to outer"
    stloc BLOCK_RESULT_OUTER_562
    leave BLOCK_END_OUTER_561
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
BLOCK_END_INNER_564:
    nop
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_OUTER_562
BLOCK_END_OUTER_561:
    nop
    ldloc BLOCK_RESULT_OUTER_562
    pop
    ldstr "Back from outer block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NESTED_558:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_BLOCK_BASIC_Body'()
    ret
}

.method private static hidebysig object 'TEST_BLOCK_BASIC_Body'() cil managed
{
    .maxstack 8
    .locals init (object VAL554, object BLOCK_RESULT_FOO_553)
    ldstr "Testing block basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inside block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "returned value"
    stloc BLOCK_RESULT_FOO_553
    leave BLOCK_END_FOO_552
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_FOO_553
BLOCK_END_FOO_552:
    nop
    ldloc BLOCK_RESULT_FOO_553
    stloc VAL554
    ldstr "Result (should be returned value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL554
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_BASIC_549:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_602
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
    ldstr "BLOCK_ID_ESCAPE_590"
    ldstr "closure escaped"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.BlockExitException::'.ctor'(object, object, object[])
    throw
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_602::'InvokeBody'()
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

} // end of class L_602

