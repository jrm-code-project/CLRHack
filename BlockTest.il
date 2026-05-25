.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'BlockTest' {}
.module 'BlockTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S830'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S830'
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
BLOCK_END_MAIN_683:
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
    .locals init (object FN_TMP834, object BLOCK_RESULT_ESCAPE_676, object RESULT679, object K678)
    ldstr "Testing non-local return-from through closure..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    .try
    {
    newobj instance void L_686::'.ctor'()
    stloc K678
    ldloc K678
    stloc FN_TMP834
    ldloc FN_TMP834
    brtrue FN_NULL835
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP834
FN_NULL835:
    nop
    ldloc FN_TMP834
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK836
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK836:
    nop
FN_AFTER837:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    pop
    ldstr "Should NOT print this closure path"
    stloc BLOCK_RESULT_ESCAPE_676
    leave BLOCK_END_ESCAPE_675
    }
    catch [LispBase]Lisp.BlockExitException
    {
    dup
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_BlockId'()
    ldstr "BLOCK_ID_ESCAPE_674"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse BLOCK_RETHROW833
    dup
    callvirt instance object[] [LispBase]Lisp.BlockExitException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.BlockExitException::'get_Value'()
    stloc BLOCK_RESULT_ESCAPE_676
    leave BLOCK_END_ESCAPE_675
BLOCK_RETHROW833:
    pop
    rethrow
    }
BLOCK_END_ESCAPE_675:
    nop
    ldloc BLOCK_RESULT_ESCAPE_676
    stloc RESULT679
    ldstr "Closure result (should be closure escaped):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT679
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NON_LOCAL_CLOSURE_672:
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
BLOCK_END_TEST_IMPLICIT_BLOCK_667:
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
    .locals init (object BLOCK_RESULT_IMPLICIT_BLOCK_TEST_663)
    ldarg 0
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE828
    ldnull
    br END829
TRUE828:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S830'
END829:
    nop
    ldnull
    ceq
    brtrue ELSE831
    ldstr "zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_663
    leave BLOCK_END_IMPLICIT_BLOCK_TEST_662
    br END832
ELSE831:
    nop
    ldnull
END832:
    nop
    pop
    ldstr "non-zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_663
BLOCK_END_IMPLICIT_BLOCK_TEST_662:
    nop
    ldloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_663
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
    .locals init (object UWP_V63826, object UWP_V62825, object UWP_V61824, object UWP_V60823, object UWP_V59822, object UWP_V58821, object UWP_V57820, object UWP_V56819, object UWP_V55818, object UWP_V54817, object UWP_V53816, object UWP_V52815, object UWP_V51814, object UWP_V50813, object UWP_V49812, object UWP_V48811, object UWP_V47810, object UWP_V46809, object UWP_V45808, object UWP_V44807, object UWP_V43806, object UWP_V42805, object UWP_V41804, object UWP_V40803, object UWP_V39802, object UWP_V38801, object UWP_V37800, object UWP_V36799, object UWP_V35798, object UWP_V34797, object UWP_V33796, object UWP_V32795, object UWP_V31794, object UWP_V30793, object UWP_V29792, object UWP_V28791, object UWP_V27790, object UWP_V26789, object UWP_V25788, object UWP_V24787, object UWP_V23786, object UWP_V22785, object UWP_V21784, object UWP_V20783, object UWP_V19782, object UWP_V18781, object UWP_V17780, object UWP_V16779, object UWP_V15778, object UWP_V14777, object UWP_V13776, object UWP_V12775, object UWP_V11774, object UWP_V10773, object UWP_V9772, object UWP_V8771, object UWP_V7770, object UWP_V6769, object UWP_V5768, object UWP_V4767, object UWP_V3766, object UWP_V2765, object UWP_V1764, object UWP_COUNT763, object UWP_RESULT762, object BLOCK_RESULT_EXIT_657)
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
    stloc BLOCK_RESULT_EXIT_657
    leave BLOCK_END_EXIT_656
    stloc UWP_RESULT762
    leave DONE827
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT763
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V1764
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V2765
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V3766
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V4767
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V5768
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V6769
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V7770
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V8771
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V9772
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V10773
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V11774
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V12775
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V13776
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V14777
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V15778
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V16779
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V17780
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V18781
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V19782
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V20783
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V21784
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V22785
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V23786
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V24787
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V25788
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V26789
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V27790
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V28791
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V29792
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V30793
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V31794
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V32795
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V33796
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V34797
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V35798
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V36799
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V37800
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V38801
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V39802
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V40803
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V41804
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V42805
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V43806
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V44807
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V45808
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V46809
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V47810
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V48811
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V49812
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V50813
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V51814
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V52815
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V53816
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V54817
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V55818
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V56819
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V57820
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V58821
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V59822
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V60823
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V61824
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V62825
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V63826
    ldstr "Cleanup code run"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc UWP_COUNT763
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V1764
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V2765
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V3766
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V4767
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V5768
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V6769
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V7770
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V8771
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V9772
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V10773
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V11774
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V12775
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V13776
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V14777
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V15778
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V16779
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V17780
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V18781
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V19782
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V20783
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V21784
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V22785
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V23786
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V24787
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V25788
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V26789
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V27790
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V28791
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V29792
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V30793
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V31794
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V32795
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V33796
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V34797
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V35798
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V36799
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V37800
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V38801
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V39802
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V40803
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V41804
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V42805
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V43806
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V44807
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V45808
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V46809
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V47810
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V48811
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V49812
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V50813
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V51814
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V52815
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V53816
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V54817
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V55818
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V56819
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V57820
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V58821
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V59822
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V60823
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V61824
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V62825
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V63826
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE827:
    ldloc UWP_RESULT762
    stloc BLOCK_RESULT_EXIT_657
BLOCK_END_EXIT_656:
    nop
    ldloc BLOCK_RESULT_EXIT_657
    ret
BLOCK_END_TEST_BLOCK_UWP_653:
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
    .locals init (object BLOCK_RESULT_OUTER_646)
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
    stloc BLOCK_RESULT_OUTER_646
    leave BLOCK_END_OUTER_645
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
BLOCK_END_INNER_648:
    nop
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_OUTER_646
BLOCK_END_OUTER_645:
    nop
    ldloc BLOCK_RESULT_OUTER_646
    pop
    ldstr "Back from outer block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NESTED_642:
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
    .locals init (object VAL638, object BLOCK_RESULT_FOO_637)
    ldstr "Testing block basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inside block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "returned value"
    stloc BLOCK_RESULT_FOO_637
    leave BLOCK_END_FOO_636
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_FOO_637
BLOCK_END_FOO_636:
    nop
    ldloc BLOCK_RESULT_FOO_637
    stloc VAL638
    ldstr "Result (should be returned value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL638
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_BASIC_633:
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

.class public auto ansi beforefieldinit L_686
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
    ldstr "BLOCK_ID_ESCAPE_674"
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
    callvirt instance object L_686::'InvokeBody'()
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

} // end of class L_686

