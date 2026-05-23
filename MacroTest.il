.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MacroTest' {}
.module 'MacroTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object '_TEST_PARAM_'
    .field public static object 'PRINT'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T857'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S850'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_TEST_PARAM_'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T857'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S850'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F828, object B825, object A824, object Y823, object X822)
    ldc.i4 10
    box int32
    stloc X822
    ldloc X822
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE848
    ldnull
    br END849
TRUE848:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S850'
END849:
    nop
    ldnull
    ceq
    brtrue ELSE858
    ldstr "X is less than 20 (via built-in WHEN)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END859
ELSE858:
    nop
    ldnull
END859:
    nop
    pop
    ldc.i4 30
    box int32
    stloc Y823
    ldloc Y823
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE851
    ldnull
    br END852
TRUE851:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S850'
END852:
    nop
    ldnull
    ceq
    brtrue ELSE860
    ldnull
    br END861
ELSE860:
    nop
    ldstr "Y is NOT less than 20 (via built-in UNLESS)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END861:
    nop
    pop
    ldc.i4 5
    box int32
    stloc A824
    ldloc A824
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc B825
    ldstr "A + 10 is (via LET*):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B825
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
    brtrue TRUE853
    ldnull
    br END854
TRUE853:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S850'
END854:
    nop
    ldnull
    ceq
    brtrue ELSE866
    ldstr "Failure"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END867
ELSE866:
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
    brtrue TRUE855
    ldnull
    br END856
TRUE855:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S850'
END856:
    nop
    ldnull
    ceq
    brtrue ELSE864
    ldstr "Success (via COND)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END865
ELSE864:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T857'
    ldnull
    ceq
    brtrue ELSE862
    ldstr "Fallthrough"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END863
ELSE862:
    nop
    ldnull
END863:
    nop
END865:
    nop
END867:
    nop
    pop
    newobj instance void L_829::'.ctor'()
    stloc F828
    ldstr "Funcall result (10 + 1):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F828
    castclass [LispBase]Lisp.Closure
    ldc.i4 10
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_829
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_829::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_829

