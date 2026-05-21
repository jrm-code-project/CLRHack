.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_UWP_NESTED_GO'
    .field public static object 'TEST_UWP_BASIC'
    .field public static object 'EQ'
    .field public static object '_CELL_VALUE'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1824'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_UWP_NESTED_GO'
    ldnull
    stsfld object Program::'TEST_UWP_BASIC'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1824'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    call object Program::'TEST_UWP_BASIC'()
    pop
    tail. call object Program::'TEST_UWP_NESTED_GO'()
    ret
BLOCK_END_MAIN_1805:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'() cil managed
{
    .maxstack 8
    .locals init (object TEMP1825, object UWP_RESULT1823, object CLEANUP_RUN1801)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN1801
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_1802
    stloc UWP_RESULT1823
    leave DONE1828
    }
    finally
    {
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN1801
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1824'
    stloc TEMP1825
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1825
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1825
    pop
    endfinally
    }
DONE1828:
    ldloc UWP_RESULT1823
    pop
TAG_TARGET_1802:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN1801
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1824'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1826
    ldnull
    br END1827
TRUE1826:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1824'
END1827:
    nop
    ldnull
    ceq
    brtrue ELSE1829
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END1830
ELSE1829:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END1830:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_1799:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'() cil managed
{
    .maxstack 8
    .locals init (object RES1796, object TEMP1821, object TEMP1820, object UWP_RESULT1819, object X1795)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X1795
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X1795
    ldstr "mutated"
    stloc TEMP1820
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1820
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1820
    pop
    ldstr "result"
    stloc UWP_RESULT1819
    leave DONE1822
    }
    finally
    {
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X1795
    ldstr "cleaned"
    stloc TEMP1821
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1821
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1821
    pop
    endfinally
    }
DONE1822:
    ldloc UWP_RESULT1819
    stloc RES1796
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES1796
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X1795
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_1793:
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

