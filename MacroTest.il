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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T885'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S878'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T885'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S878'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F856, object B853, object A852, object Y851, object X850)
    ldc.i4 10
    box int32
    stloc X850
    ldloc X850
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE876
    ldnull
    br END877
TRUE876:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S878'
END877:
    nop
    ldnull
    ceq
    brtrue ELSE886
    ldstr "X is less than 20 (via built-in WHEN)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END887
ELSE886:
    nop
    ldnull
END887:
    nop
    pop
    ldc.i4 30
    box int32
    stloc Y851
    ldloc Y851
    ldc.i4 20
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE879
    ldnull
    br END880
TRUE879:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S878'
END880:
    nop
    ldnull
    ceq
    brtrue ELSE888
    ldnull
    br END889
ELSE888:
    nop
    ldstr "Y is NOT less than 20 (via built-in UNLESS)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END889:
    nop
    pop
    ldc.i4 5
    box int32
    stloc A852
    ldloc A852
    ldc.i4 10
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc B853
    ldstr "A + 10 is (via LET*):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B853
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
    brtrue TRUE881
    ldnull
    br END882
TRUE881:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S878'
END882:
    nop
    ldnull
    ceq
    brtrue ELSE894
    ldstr "Failure"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END895
ELSE894:
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
    brtrue TRUE883
    ldnull
    br END884
TRUE883:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S878'
END884:
    nop
    ldnull
    ceq
    brtrue ELSE892
    ldstr "Success (via COND)!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END893
ELSE892:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T885'
    ldnull
    ceq
    brtrue ELSE890
    ldstr "Fallthrough"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END891
ELSE890:
    nop
    ldnull
END891:
    nop
END893:
    nop
END895:
    nop
    pop
    newobj instance void L_857::'.ctor'()
    stloc F856
    ldstr "Funcall result (10 + 1):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F856
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

.class public auto ansi beforefieldinit L_857
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
    callvirt instance object L_857::'InvokeBody'(object)
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

} // end of class L_857

