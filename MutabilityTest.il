.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'MutabilityTest' {}
.module 'MutabilityTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'C760'
    .field public static object 'B759'
    .field public static object 'A757'
    .field public static object '_CELL_VALUE'
    .field public static object 'PRINT'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'C760'
    ldnull
    stsfld object Program::'B759'
    ldnull
    stsfld object Program::'A757'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'PRINT'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object F764, object A757)
    ldstr "outer-a"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A757
    ldloc A757
    newobj instance void L_766::'.ctor'(object)
    stloc F764
    ldstr "Before calling f:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A757
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F764
    castclass [LispBase]Lisp.Closure
    ldstr "param-b"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "After calling f:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A757
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_765
       extends [LispBase]Lisp.Closure
{
    .field public object 'C760'
    .field public object 'A757'
    .field public object 'B759'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_765::'C760'
    ldarg.0
    ldarg 2
    stfld object L_765::'A757'
    ldarg.0
    ldarg 3
    stfld object L_765::'B759'
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
    .locals init (object TEMP772, object TEMP771, object TEMP770)
    ldstr "Inside g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_765::'A757'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_765::'B759'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_765::'C760'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_765::'A757'
    ldstr "a-mutated-by-g"
    stloc TEMP770
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP770
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP770
    pop
    ldarg.0
    ldfld object L_765::'B759'
    ldstr "b-mutated-by-g"
    stloc TEMP771
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP771
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP771
    pop
    ldarg.0
    ldfld object L_765::'C760'
    ldstr "c-mutated-by-g"
    stloc TEMP772
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP772
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP772
    pop
    ldnull
    ret
    ldnull
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

} // end of class L_765

.class public auto ansi beforefieldinit L_766
       extends [LispBase]Lisp.Closure
{
    .field public object 'A757'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_766::'A757'
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
    .locals init (object G763, object C760, object B759)
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B759
    ldstr "inner-c"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc C760
    ldloc C760
    ldarg.0
    ldfld object L_766::'A757'
    ldloc B759
    newobj instance void L_765::'.ctor'(object, object, object)
    stloc G763
    ldstr "Before calling g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_766::'A757'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B759
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C760
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc G763
    castclass [LispBase]Lisp.Closure
    ldstr "param-d"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "After calling g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_766::'A757'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B759
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C760
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
    ldnull
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

} // end of class L_766

