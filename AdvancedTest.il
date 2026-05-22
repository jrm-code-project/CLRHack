.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'AdvancedTest' {}
.module 'AdvancedTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'COUNT134'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'TRACKER135'
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
    stsfld object Program::'COUNT134'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'TRACKER135'
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
    .locals init (object LOOP_FN140, object TRACKER135, object COUNT134)
    ldc.i4 5
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT134
    ldstr "Start"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TRACKER135
    ldloc TRACKER135
    ldloc COUNT134
    newobj instance void L_142::'.ctor'(object, object)
    stloc LOOP_FN140
    ldloc LOOP_FN140
    castclass [LispBase]Lisp.Closure
    ldloc LOOP_FN140
    ldstr "start"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_142
       extends [LispBase]Lisp.Closure
{
    .field public object 'TRACKER135'
    .field public object 'COUNT134'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_142::'TRACKER135'
    ldarg.0
    ldarg 2
    stfld object L_142::'COUNT134'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP148, object TEMP147, object NEXT_VAL139)
    ldarg 2
    ldnull
    ceq
    brtrue ELSE150
    ldstr "continue"
    stloc NEXT_VAL139
    ldstr "Counting down..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_142::'TRACKER135'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_142::'TRACKER135'
    ldstr "Mutated in flight!"
    stloc TEMP147
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP147
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP147
    pop
    ldarg.0
    ldfld object L_142::'COUNT134'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    ceq
    brtrue ELSE149
    ldarg.0
    ldfld object L_142::'COUNT134'
    ldnull
    stloc TEMP148
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP148
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP148
    pop
    ldarg 1
    castclass [LispBase]Lisp.Closure
    ldarg 1
    ldstr "recurse"
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    ret
ELSE149:
    nop
    ldstr "Done!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE150:
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
    callvirt instance object L_142::'InvokeBody'(object, object)
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

} // end of class L_142

