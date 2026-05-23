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
    .field public static object 'C892'
    .field public static object 'B891'
    .field public static object 'A889'
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
    stsfld object Program::'C892'
    ldnull
    stsfld object Program::'B891'
    ldnull
    stsfld object Program::'A889'
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
    .locals init (object F896, object A889)
    ldstr "outer-a"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A889
    ldloc A889
    newobj instance void L_898::'.ctor'(object)
    stloc F896
    ldstr "Before calling f:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A889
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc F896
    castclass [LispBase]Lisp.Closure
    ldstr "param-b"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "After calling f:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A889
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_897
       extends [LispBase]Lisp.Closure
{
    .field public object 'C892'
    .field public object 'A889'
    .field public object 'B891'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_897::'C892'
    ldarg.0
    ldarg 2
    stfld object L_897::'A889'
    ldarg.0
    ldarg 3
    stfld object L_897::'B891'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP904, object TEMP903, object TEMP902)
    ldstr "Inside g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_897::'A889'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_897::'B891'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_897::'C892'
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
    ldfld object L_897::'A889'
    ldstr "a-mutated-by-g"
    stloc TEMP902
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP902
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP902
    pop
    ldarg.0
    ldfld object L_897::'B891'
    ldstr "b-mutated-by-g"
    stloc TEMP903
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP903
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP903
    pop
    ldarg.0
    ldfld object L_897::'C892'
    ldstr "c-mutated-by-g"
    stloc TEMP904
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP904
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP904
    pop
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
    callvirt instance object L_897::'InvokeBody'(object)
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

} // end of class L_897

.class public auto ansi beforefieldinit L_898
       extends [LispBase]Lisp.Closure
{
    .field public object 'A889'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_898::'A889'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object G895, object C892, object B891)
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B891
    ldstr "inner-c"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc C892
    ldloc C892
    ldarg.0
    ldfld object L_898::'A889'
    ldloc B891
    newobj instance void L_897::'.ctor'(object, object, object)
    stloc G895
    ldstr "Before calling g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_898::'A889'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B891
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C892
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc G895
    castclass [LispBase]Lisp.Closure
    ldstr "param-d"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "After calling g:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_898::'A889'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B891
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C892
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
    callvirt instance object L_898::'InvokeBody'(object)
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

} // end of class L_898

