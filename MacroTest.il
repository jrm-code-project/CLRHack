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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T879'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S872'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T879'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S872'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F850, object B847, object A846, object Y845, object X844)
    ldc.i4 10
    box int32
    stloc X844
    ldloc X844
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE870
    ldnull
    br END871
TRUE870:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S872'
END871:
    nop
    ldnull
    ceq
    brtrue ELSE880
    ldstr "X is less than 20 (via built-in WHEN)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END881
ELSE880:
    nop
    ldnull
END881:
    nop
    pop
    ldc.i4 30
    box int32
    stloc Y845
    ldloc Y845
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE873
    ldnull
    br END874
TRUE873:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S872'
END874:
    nop
    ldnull
    ceq
    brtrue ELSE882
    ldnull
    br END883
ELSE882:
    nop
    ldstr "Y is NOT less than 20 (via built-in UNLESS)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END883:
    nop
    pop
    ldc.i4 5
    box int32
    stloc A846
    ldloc A846
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc B847
    ldstr "A + 10 is (via LET*):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B847
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
    brtrue TRUE875
    ldnull
    br END876
TRUE875:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S872'
END876:
    nop
    ldnull
    ceq
    brtrue ELSE888
    ldstr "Failure"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END889
ELSE888:
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
    brtrue TRUE877
    ldnull
    br END878
TRUE877:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S872'
END878:
    nop
    ldnull
    ceq
    brtrue ELSE886
    ldstr "Success (via COND)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END887
ELSE886:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T879'
    ldnull
    ceq
    brtrue ELSE884
    ldstr "Fallthrough"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END885
ELSE884:
    nop
    ldnull
END885:
    nop
END887:
    nop
END889:
    nop
    pop
    newobj instance void L_851::'.ctor'()
    stloc F850
    ldstr "Funcall result (10 + 1):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F850
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

.class public auto ansi beforefieldinit L_851
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
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_851::'InvokeBody'(object)
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

} // end of class L_851

