.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'BlockTest' {}
.module 'BlockTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_IMPLICIT_BLOCK'
    .field public static object 'TEST_BLOCK_UWP'
    .field public static object 'TEST_BLOCK_NESTED'
    .field public static object 'TEST_BLOCK_BASIC'
    .field public static object 'IMPLICIT_BLOCK_TEST'
    .field public static object 'EQ'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G263'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_IMPLICIT_BLOCK'
    ldnull
    stsfld object Program::'TEST_BLOCK_UWP'
    ldnull
    stsfld object Program::'TEST_BLOCK_NESTED'
    ldnull
    stsfld object Program::'TEST_BLOCK_BASIC'
    ldnull
    stsfld object Program::'IMPLICIT_BLOCK_TEST'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G263'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    call object Program::'TEST_BLOCK_BASIC'()
    pop
    call object Program::'TEST_BLOCK_NESTED'()
    pop
    call object Program::'TEST_BLOCK_UWP'()
    pop
    tail. call object Program::'TEST_IMPLICIT_BLOCK'()
    ret
BLOCK_END_MAIN_250:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_IMPLICIT_BLOCK'() cil managed
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
BLOCK_END_TEST_IMPLICIT_BLOCK_246:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'IMPLICIT_BLOCK_TEST'(object) cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_IMPLICIT_BLOCK_TEST_243)
    ldarg 0
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE261
    ldnull
    br END262
TRUE261:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G263'
END262:
    nop
    ldnull
    ceq
    brtrue ELSE264
    ldstr "zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_243
    leave BLOCK_END_IMPLICIT_BLOCK_TEST_242
    br END265
ELSE264:
    nop
    ldnull
END265:
    nop
    pop
    ldstr "non-zero"
    stloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_243
BLOCK_END_IMPLICIT_BLOCK_TEST_242:
    nop
    ldloc BLOCK_RESULT_IMPLICIT_BLOCK_TEST_243
    ret
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_UWP'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_EXIT_238, object UWP_RESULT259)
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
    stloc BLOCK_RESULT_EXIT_238
    leave BLOCK_END_EXIT_237
    stloc UWP_RESULT259
    leave DONE260
    }
    finally
    {
    ldstr "Cleanup code run"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    endfinally
    }
DONE260:
    ldloc UWP_RESULT259
    stloc BLOCK_RESULT_EXIT_238
BLOCK_END_EXIT_237:
    nop
    ldloc BLOCK_RESULT_EXIT_238
    ret
BLOCK_END_TEST_BLOCK_UWP_235:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_NESTED'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_OUTER_230)
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
    stloc BLOCK_RESULT_OUTER_230
    leave BLOCK_END_OUTER_229
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
BLOCK_END_INNER_231:
    nop
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_OUTER_230
BLOCK_END_OUTER_229:
    nop
    ldloc BLOCK_RESULT_OUTER_230
    pop
    ldstr "Back from outer block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_NESTED_227:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_BLOCK_BASIC'() cil managed
{
    .maxstack 8
    .locals init (object BLOCK_RESULT_FOO_223, object VAL224)
    ldstr "Testing block basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Inside block"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "returned value"
    stloc BLOCK_RESULT_FOO_223
    leave BLOCK_END_FOO_222
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc BLOCK_RESULT_FOO_223
BLOCK_END_FOO_222:
    nop
    ldloc BLOCK_RESULT_FOO_223
    stloc VAL224
    ldstr "Result (should be returned value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL224
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_BLOCK_BASIC_220:
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

