.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'TopLevelTest' {}
.module 'TopLevelTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'MAKE_MULTIPLIER'
    .field public static object 'SAY_HELLO'
    .field public static object '_CTOR'
    .field public static object 'FACTOR1693'
    .field public static object 'PRINT'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'MAKE_MULTIPLIER'
    ldnull
    stsfld object Program::'SAY_HELLO'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'FACTOR1693'
    ldnull
    stsfld object Program::'PRINT'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object MUL_BY_101702)
    ldstr "TopLevelTest"
    call object Program::'SAY_HELLO'(object)
    pop
    ldstr "10"
    call object Program::'MAKE_MULTIPLIER'(object)
    stloc MUL_BY_101702
    ldloc MUL_BY_101702
    castclass [LispBase]Lisp.Closure
    ldstr "5"
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_MAIN_1700:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object) cil managed
{
    .maxstack 8
    ldarg 0
    newobj instance void L_1704::'.ctor'(object)
    ret
BLOCK_END_MAKE_MULTIPLIER_1694:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object) cil managed
{
    .maxstack 8
    ldstr "Hello from:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_SAY_HELLO_1689:
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

.class public auto ansi beforefieldinit L_1704
       extends [LispBase]Lisp.Closure
{
    .field public object 'FACTOR1693'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_1704::'FACTOR1693'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Multiplying by captured factor (simulated)..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_1704::'FACTOR1693'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
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
    callvirt instance object L_1704::'InvokeBody'(object)
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

} // end of class L_1704

