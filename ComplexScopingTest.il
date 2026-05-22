.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ComplexScopingTest' {}
.module 'ComplexScopingTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'MAKE_ACCUMULATOR'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static object 'D439'
    .field public static object 'C438'
    .field public static object 'B436'
    .field public static object '_CELL_VALUE'
    .field public static object 'ADD'
    .field public static object 'A433'
    .field public static object '_SET_CELL_VALUE_'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'MAKE_ACCUMULATOR'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'D439'
    ldnull
    stsfld object Program::'C438'
    ldnull
    stsfld object Program::'B436'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'ADD'
    ldnull
    stsfld object Program::'A433'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object ACC_INSTANCE2449, object ACC_INSTANCE1448, object ACC_BUILDER447)
    ldc.i4 1
    box int32
    call object Program::'MAKE_ACCUMULATOR'(object)
    stloc ACC_BUILDER447
    ldloc ACC_BUILDER447
    castclass [LispBase]Lisp.Closure
    ldc.i4 1000
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ACC_INSTANCE1448
    ldloc ACC_BUILDER447
    castclass [LispBase]Lisp.Closure
    ldc.i4 2000
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ACC_INSTANCE2449
    ldstr "Instance 1 - Call 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1448
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 1 - Call 2:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1448
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 2 - Call 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE2449
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 1 - Call 3:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1448
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_MAIN_445:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object) cil managed
{
    .maxstack 8
    .locals init (object B436, object A433)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A433
    ldc.i4 10
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B436
    ldloc B436
    ldloc A433
    newobj instance void L_452::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_ACCUMULATOR_434:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldc.i4 0
    box int32
    ldarg 1
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    ret
BLOCK_END_ADD_429:
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

.class public auto ansi beforefieldinit L_451
       extends [LispBase]Lisp.Closure
{
    .field public object 'D439'
    .field public object 'B436'
    .field public object 'A433'
    .field public object 'C438'

.method public hidebysig void '.ctor'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_451::'D439'
    ldarg.0
    ldarg 2
    stfld object L_451::'B436'
    ldarg.0
    ldarg 3
    stfld object L_451::'A433'
    ldarg.0
    ldarg 4
    stfld object L_451::'C438'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object RES442, object TEMP460, object TEMP459, object TEMP458, object TEMP457)
    ldarg.0
    ldfld object L_451::'A433'
    ldarg.0
    ldfld object L_451::'A433'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP457
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP457
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP457
    pop
    ldarg.0
    ldfld object L_451::'B436'
    ldarg.0
    ldfld object L_451::'B436'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 2
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP458
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP458
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP458
    pop
    ldarg.0
    ldfld object L_451::'C438'
    ldarg.0
    ldfld object L_451::'C438'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 3
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP459
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP459
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP459
    pop
    ldarg.0
    ldfld object L_451::'D439'
    ldarg.0
    ldfld object L_451::'D439'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 4
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP460
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP460
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP460
    pop
    ldarg.0
    ldfld object L_451::'A433'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_451::'B436'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_451::'C438'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_451::'D439'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    stloc RES442
    ldloc RES442
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES442
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
    callvirt instance object L_451::'InvokeBody'(object)
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

} // end of class L_451

.class public auto ansi beforefieldinit L_452
       extends [LispBase]Lisp.Closure
{
    .field public object 'B436'
    .field public object 'A433'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_452::'B436'
    ldarg.0
    ldarg 2
    stfld object L_452::'A433'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object D439, object C438)
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc C438
    ldc.i4 100
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc D439
    ldloc D439
    ldarg.0
    ldfld object L_452::'B436'
    ldarg.0
    ldfld object L_452::'A433'
    ldloc C438
    newobj instance void L_451::'.ctor'(object, object, object, object)
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
    callvirt instance object L_452::'InvokeBody'(object)
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

} // end of class L_452

