.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'test-advanced' {}
.module 'test-advanced.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'COUNT137'
    .field public static object 'TRACKER138'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'COUNT137'
    ldnull
    stsfld object Program::'TRACKER138'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object LOOP_FN143, object TRACKER138, object COUNT137)
    ldc.i4 5
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT137
    ldstr "Start"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TRACKER138
    ldloc TRACKER138
    ldloc COUNT137
    newobj instance void L_144::'.ctor'(object, object)
    stloc LOOP_FN143
    ldloc LOOP_FN143
    castclass [LispBase]Lisp.Closure
    ldloc LOOP_FN143
    ldstr "start"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_144
       extends [LispBase]Lisp.Closure
{
    .field public object 'TRACKER138'
    .field public object 'COUNT137'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_144::'TRACKER138'
    ldarg.0
    ldarg 2
    stfld object L_144::'COUNT137'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP158, object CELL_TMP157, object CELL_VAL_TMP156, object CELL_TMP155, object TEMP154, object TEMP153, object NEXT_VAL142)
    ldarg 2
    ldnull
    ceq
    brtrue ELSE160
    ldstr "continue"
    stloc NEXT_VAL142
    ldstr "Counting down..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_144::'TRACKER138'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_144::'TRACKER138'
    stloc CELL_TMP155
    ldstr "Mutated in flight!"
    stloc CELL_VAL_TMP156
    ldloc CELL_TMP155
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP156
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP156
    pop
    ldarg.0
    ldfld object L_144::'COUNT137'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    ceq
    brtrue ELSE159
    ldarg.0
    ldfld object L_144::'COUNT137'
    stloc CELL_TMP157
    ldnull
    stloc CELL_VAL_TMP158
    ldloc CELL_TMP157
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP158
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP158
    pop
    ldarg 1
    castclass [LispBase]Lisp.Closure
    ldarg 1
    ldstr "recurse"
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    ret
ELSE159:
    nop
    ldstr "Done!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE160:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_144::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_144

