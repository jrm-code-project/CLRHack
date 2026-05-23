.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'AdvancedTest' {}
.module 'AdvancedTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'COUNT126'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'TRACKER127'
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
    stsfld object Program::'COUNT126'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'TRACKER127'
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
    .locals init (object LOOP_FN132, object TRACKER127, object COUNT126)
    ldc.i4 5
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT126
    ldstr "Start"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TRACKER127
    ldloc TRACKER127
    ldloc COUNT126
    newobj instance void L_134::'.ctor'(object, object)
    stloc LOOP_FN132
    ldloc LOOP_FN132
    castclass [LispBase]Lisp.Closure
    ldloc LOOP_FN132
    ldstr "start"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_134
       extends [LispBase]Lisp.Closure
{
    .field public object 'TRACKER127'
    .field public object 'COUNT126'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_134::'TRACKER127'
    ldarg.0
    ldarg 2
    stfld object L_134::'COUNT126'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP140, object TEMP139, object NEXT_VAL131)
    ldarg 2
    ldnull
    ceq
    brtrue ELSE142
    ldstr "continue"
    stloc NEXT_VAL131
    ldstr "Counting down..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_134::'TRACKER127'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_134::'TRACKER127'
    ldstr "Mutated in flight!"
    stloc TEMP139
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP139
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP139
    pop
    ldarg.0
    ldfld object L_134::'COUNT126'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    ceq
    brtrue ELSE141
    ldarg.0
    ldfld object L_134::'COUNT126'
    ldnull
    stloc TEMP140
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP140
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP140
    pop
    ldarg 1
    castclass [LispBase]Lisp.Closure
    ldarg 1
    ldstr "recurse"
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    ret
ELSE141:
    nop
    ldstr "Done!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE142:
    nop
    ldstr "Error"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_134::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_134

