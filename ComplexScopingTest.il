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
    .field public static object 'D555'
    .field public static object 'C554'
    .field public static object 'B552'
    .field public static object '_CELL_VALUE'
    .field public static object 'ADD'
    .field public static object 'A549'
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
    stsfld object Program::'D555'
    ldnull
    stsfld object Program::'C554'
    ldnull
    stsfld object Program::'B552'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'ADD'
    ldnull
    stsfld object Program::'A549'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'MAIN_Body'()
    ret
}

.method private static hidebysig object 'MAIN_Body'() cil managed
{
    .maxstack 8
    .locals init (object ACC_INSTANCE2565, object ACC_INSTANCE1564, object ACC_BUILDER563)
    ldc.i4 1
    box int32
    call object Program::'MAKE_ACCUMULATOR'(object)
    stloc ACC_BUILDER563
    ldloc ACC_BUILDER563
    castclass [LispBase]Lisp.Closure
    ldc.i4 1000
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ACC_INSTANCE1564
    ldloc ACC_BUILDER563
    castclass [LispBase]Lisp.Closure
    ldc.i4 2000
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ACC_INSTANCE2565
    ldstr "Instance 1 - Call 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1564
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 1 - Call 2:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1564
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 2 - Call 1:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE2565
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldstr "Instance 1 - Call 3:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ACC_INSTANCE1564
    castclass [LispBase]Lisp.Closure
    ldc.i4 5
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_MAIN_561:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'MAKE_ACCUMULATOR_Body'(object)
    ret
}

.method public static hidebysig object 'MAKE_ACCUMULATOR'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'MAKE_ACCUMULATOR_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object B552, object A549)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A549
    ldc.i4 10
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B552
    ldloc B552
    ldloc A549
    newobj instance void L_568::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_ACCUMULATOR_550:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'ADD_Body'(object, object)
    ret
}

.method public static hidebysig object 'ADD'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ADD'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ADD_Body'(object, object) cil managed
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
BLOCK_END_ADD_545:
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

.class public auto ansi beforefieldinit L_567
       extends [LispBase]Lisp.Closure
{
    .field public object 'D555'
    .field public object 'B552'
    .field public object 'A549'
    .field public object 'C554'

.method public hidebysig void '.ctor'(object, object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_567::'D555'
    ldarg.0
    ldarg 2
    stfld object L_567::'B552'
    ldarg.0
    ldarg 3
    stfld object L_567::'A549'
    ldarg.0
    ldarg 4
    stfld object L_567::'C554'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object RES558, object TEMP576, object TEMP575, object TEMP574, object TEMP573)
    ldarg.0
    ldfld object L_567::'A549'
    ldarg.0
    ldfld object L_567::'A549'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP573
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP573
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP573
    pop
    ldarg.0
    ldfld object L_567::'B552'
    ldarg.0
    ldfld object L_567::'B552'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 2
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP574
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP574
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP574
    pop
    ldarg.0
    ldfld object L_567::'C554'
    ldarg.0
    ldfld object L_567::'C554'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 3
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP575
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP575
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP575
    pop
    ldarg.0
    ldfld object L_567::'D555'
    ldarg.0
    ldfld object L_567::'D555'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 4
    box int32
    call object Program::'ADD'(object, object)
    stloc TEMP576
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP576
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP576
    pop
    ldarg.0
    ldfld object L_567::'A549'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_567::'B552'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_567::'C554'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_567::'D555'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    call object Program::'ADD'(object, object)
    stloc RES558
    ldloc RES558
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES558
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
    callvirt instance object L_567::'InvokeBody'(object)
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

} // end of class L_567

.class public auto ansi beforefieldinit L_568
       extends [LispBase]Lisp.Closure
{
    .field public object 'B552'
    .field public object 'A549'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_568::'B552'
    ldarg.0
    ldarg 2
    stfld object L_568::'A549'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object D555, object C554)
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc C554
    ldc.i4 100
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc D555
    ldloc D555
    ldarg.0
    ldfld object L_568::'B552'
    ldarg.0
    ldfld object L_568::'A549'
    ldloc C554
    newobj instance void L_567::'.ctor'(object, object, object, object)
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
    callvirt instance object L_568::'InvokeBody'(object)
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

} // end of class L_568

