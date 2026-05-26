.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MacroTest' {}
.module 'MacroTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_TEST_PARAM_'
    .field public static object 'TEMP_B'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2400'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2393'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2400'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2393'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP2415, object FN_TMP2411, object F2366, object B2363, object A2362, object Y2361, object X2360)
    ldc.i4 10
    box int32
    stloc X2360
    ldloc X2360
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2391
    ldnull
    br END2392
TRUE2391:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2393'
END2392:
    nop
    ldnull
    ceq
    brtrue ELSE2401
    ldstr "X is less than 20 (via built-in WHEN)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2402
ELSE2401:
    nop
    ldnull
END2402:
    nop
    pop
    ldc.i4 30
    box int32
    stloc Y2361
    ldloc Y2361
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2394
    ldnull
    br END2395
TRUE2394:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2393'
END2395:
    nop
    ldnull
    ceq
    brtrue ELSE2403
    ldnull
    br END2404
ELSE2403:
    nop
    ldstr "Y is NOT less than 20 (via built-in UNLESS)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2404:
    nop
    pop
    ldc.i4 5
    box int32
    stloc A2362
    ldloc A2362
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc B2363
    ldstr "A + 10 is (via LET*):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B2363
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
    brtrue TRUE2396
    ldnull
    br END2397
TRUE2396:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2393'
END2397:
    nop
    ldnull
    ceq
    brtrue ELSE2409
    ldstr "Failure"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2410
ELSE2409:
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
    brtrue TRUE2398
    ldnull
    br END2399
TRUE2398:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2393'
END2399:
    nop
    ldnull
    ceq
    brtrue ELSE2407
    ldstr "Success (via COND)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2408
ELSE2407:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2400'
    ldnull
    ceq
    brtrue ELSE2405
    ldstr "Fallthrough"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2406
ELSE2405:
    nop
    ldnull
END2406:
    nop
END2408:
    nop
END2410:
    nop
    pop
    newobj instance void L_2367::'.ctor'()
    stloc F2366
    ldstr "Funcall result (10 + 1):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F2366
    stloc FN_TMP2411
    ldloc FN_TMP2411
    brtrue FN_NULL2412
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP2411
FN_NULL2412:
    nop
    ldloc FN_TMP2411
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP2411
    ldloc FN_TMP2411
    brtrue FN_TYPE_OK2413
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP2411
FN_TYPE_OK2413:
    nop
FN_AFTER2414:
    nop
    ldc.i4 10
    box int32
    stloc ARG_TMP2415
    ldloc FN_TMP2411
    ldloc ARG_TMP2415
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'InitializeModule'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_2367
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
    callvirt instance object L_2367::'InvokeBody'(object)
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

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_2367

