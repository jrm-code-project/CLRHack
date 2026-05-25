.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MacroTest' {}
.module 'MacroTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_TEST_PARAM_'
    .field public static object 'TEMP_B'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2423'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2416'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_TEST_PARAM_'
    ldnull
    stsfld object Program::'TEMP_B'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2423'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2416'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object FN_TMP2434, object F2390, object B2387, object A2386, object Y2385, object X2384)
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    ldc.i4 10
    box int32
    stloc X2384
    ldloc X2384
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2414
    ldnull
    br END2415
TRUE2414:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2416'
END2415:
    nop
    ldnull
    ceq
    brtrue ELSE2424
    ldstr "X is less than 20 (via built-in WHEN)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2425
ELSE2424:
    nop
    ldnull
END2425:
    nop
    pop
    ldc.i4 30
    box int32
    stloc Y2385
    ldloc Y2385
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2417
    ldnull
    br END2418
TRUE2417:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2416'
END2418:
    nop
    ldnull
    ceq
    brtrue ELSE2426
    ldnull
    br END2427
ELSE2426:
    nop
    ldstr "Y is NOT less than 20 (via built-in UNLESS)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2427:
    nop
    pop
    ldc.i4 5
    box int32
    stloc A2386
    ldloc A2386
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc B2387
    ldstr "A + 10 is (via LET*):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B2387
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "I am a parameter"
    dup
    stsfld object Program::'_TEST_PARAM_'
    pop
    ldsfld object Program::'_TEST_PARAM_'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 10
    box int32
    ldc.i4 5
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2419
    ldnull
    br END2420
TRUE2419:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2416'
END2420:
    nop
    ldnull
    ceq
    brtrue ELSE2432
    ldstr "Failure"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2433
ELSE2432:
    nop
    ldc.i4 5
    box int32
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2421
    ldnull
    br END2422
TRUE2421:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2416'
END2422:
    nop
    ldnull
    ceq
    brtrue ELSE2430
    ldstr "Success (via COND)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2431
ELSE2430:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2423'
    ldnull
    ceq
    brtrue ELSE2428
    ldstr "Fallthrough"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2429
ELSE2428:
    nop
    ldnull
END2429:
    nop
END2431:
    nop
END2433:
    nop
    pop
    newobj instance void L_2391::'.ctor'()
    stloc F2390
    ldstr "Funcall result (10 + 1):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2390
    stloc FN_TMP2434
    ldloc FN_TMP2434
    brtrue FN_NULL2435
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2434
FN_NULL2435:
    nop
    ldloc FN_TMP2434
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK2436
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK2436:
    nop
FN_AFTER2437:
    nop
    ldc.i4 10
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2391
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
    ldarg 1
    ldc.i4 1
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
    callvirt instance object L_2391::'InvokeBody'(object)
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

} // end of class L_2391

