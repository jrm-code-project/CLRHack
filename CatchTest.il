.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'CatchTest' {}
.module 'CatchTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_CATCH_NON_LOCAL'
    .field public static object 'TEST_CATCH_MISMATCH'
    .field public static object 'TEST_CATCH_NESTED'
    .field public static object 'TEST_CATCH_BASIC'
    .field public static object 'NON_LOCAL_THROW_HELPER'
    .field public static object '_INTERN'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G362'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G353'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G346'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G343'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G338'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_CATCH_NON_LOCAL'
    ldnull
    stsfld object Program::'TEST_CATCH_MISMATCH'
    ldnull
    stsfld object Program::'TEST_CATCH_NESTED'
    ldnull
    stsfld object Program::'TEST_CATCH_BASIC'
    ldnull
    stsfld object Program::'NON_LOCAL_THROW_HELPER'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-TAG"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G362'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G353'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G346'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G343'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G338'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    call object Program::'TEST_CATCH_BASIC'()
    pop
    call object Program::'TEST_CATCH_NESTED'()
    pop
    call object Program::'TEST_CATCH_MISMATCH'()
    pop
    tail. call object Program::'TEST_CATCH_NON_LOCAL'()
    ret
BLOCK_END_MAIN_304:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'() cil managed
{
    .maxstack 8
    .locals init (object RES301, object CATCH_RESULT361, object CATCH_TAG360)
    ldstr "Testing truly non-local throw..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G362'
    stloc CATCH_TAG360
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G362'
    ldstr "final result"
    call object Program::'NON_LOCAL_THROW_HELPER'(object, object)
    stloc CATCH_RESULT361
    leave CATCH_DONE363
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG360
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW364
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT361
    leave CATCH_DONE363
CATCH_RETHROW364:
    pop
    rethrow
    }
CATCH_DONE363:
    ldloc CATCH_RESULT361
    stloc RES301
    ldstr "Result of non-local throw:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES301
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_NON_LOCAL_299:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object) cil managed
{
    .maxstack 8
    ldstr "Inside helper, about to throw..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    ldarg 1
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object)
    throw
BLOCK_END_NON_LOCAL_THROW_HELPER_295:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT355, object CATCH_TAG354, object CATCH_RESULT352, object CATCH_TAG351)
    ldstr "Testing catch mismatch..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G353'
    stloc CATCH_TAG351
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G338'
    stloc CATCH_TAG354
    .try
    {
    ldstr "Throwing to bar from inner foo"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G353'
    ldstr "reached bar"
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object)
    throw
    pop
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT355
    leave CATCH_DONE358
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG354
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW359
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT355
    leave CATCH_DONE358
CATCH_RETHROW359:
    pop
    rethrow
    }
CATCH_DONE358:
    ldloc CATCH_RESULT355
    stloc CATCH_RESULT352
    leave CATCH_DONE356
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG351
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW357
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT352
    leave CATCH_DONE356
CATCH_RETHROW357:
    pop
    rethrow
    }
CATCH_DONE356:
    ldloc CATCH_RESULT352
    ret
BLOCK_END_TEST_CATCH_MISMATCH_289:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT345, object CATCH_TAG344, object CATCH_RESULT342, object CATCH_TAG341)
    ldstr "Testing nested catch..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G343'
    stloc CATCH_TAG341
    .try
    {
    ldstr "Outer start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G346'
    stloc CATCH_TAG344
    .try
    {
    ldstr "Inner start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G343'
    ldstr "thrown to outer"
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object)
    throw
    pop
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT345
    leave CATCH_DONE349
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG344
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW350
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT345
    leave CATCH_DONE349
CATCH_RETHROW350:
    pop
    rethrow
    }
CATCH_DONE349:
    ldloc CATCH_RESULT345
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT342
    leave CATCH_DONE347
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG341
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW348
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT342
    leave CATCH_DONE347
CATCH_RETHROW348:
    pop
    rethrow
    }
CATCH_DONE347:
    ldloc CATCH_RESULT342
    pop
    ldstr "Back from outer catch"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_NESTED_285:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'() cil managed
{
    .maxstack 8
    .locals init (object VAL282, object CATCH_RESULT337, object CATCH_TAG336)
    ldstr "Testing catch basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G338'
    stloc CATCH_TAG336
    .try
    {
    ldstr "Inside catch"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G338'
    ldstr "thrown value"
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object)
    throw
    pop
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT337
    leave CATCH_DONE339
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG336
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW340
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT337
    leave CATCH_DONE339
CATCH_RETHROW340:
    pop
    rethrow
    }
CATCH_DONE339:
    ldloc CATCH_RESULT337
    stloc VAL282
    ldstr "Result (should be thrown value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL282
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_BASIC_280:
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

