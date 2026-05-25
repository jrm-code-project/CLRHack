.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'AdvancedTest' {}
.module 'AdvancedTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'COUNT424'
    .field public static object 'TRACKER425'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'COUNT424'
    ldnull
    stsfld object Program::'TRACKER425'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object FN_TMP461, object LOOP_FN430, object TRACKER425, object COUNT424)
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    ldc.i4 5
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT424
    ldstr "Start"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TRACKER425
    ldloc TRACKER425
    ldloc COUNT424
    newobj instance void L_432::'.ctor'(object, object)
    stloc LOOP_FN430
    ldloc LOOP_FN430
    stloc FN_TMP461
    ldloc FN_TMP461
    brtrue FN_NULL462
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP461
FN_NULL462:
    nop
    ldloc FN_TMP461
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK463
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK463:
    nop
FN_AFTER464:
    nop
    ldloc LOOP_FN430
    ldstr "start"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_432
       extends [LispBase]Lisp.Closure
{
    .field public object 'TRACKER425'
    .field public object 'COUNT424'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_432::'TRACKER425'
    ldarg.0
    ldarg 2
    stfld object L_432::'COUNT424'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object FN_TMP455, object CELL_VAL_TMP454, object CELL_TMP453, object CELL_VAL_TMP452, object CELL_TMP451, object TEMP450, object TEMP449, object NEXT_VAL429)
    ldarg 2
    ldnull
    ceq
    brtrue ELSE460
    ldstr "continue"
    stloc NEXT_VAL429
    ldstr "Counting down..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_432::'TRACKER425'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_432::'TRACKER425'
    stloc CELL_TMP451
    ldstr "Mutated in flight!"
    stloc CELL_VAL_TMP452
    ldloc CELL_TMP451
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP452
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP452
    pop
    ldarg.0
    ldfld object L_432::'COUNT424'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    ceq
    brtrue ELSE459
    ldarg.0
    ldfld object L_432::'COUNT424'
    stloc CELL_TMP453
    ldnull
    stloc CELL_VAL_TMP454
    ldloc CELL_TMP453
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP454
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP454
    pop
    ldarg 1
    stloc FN_TMP455
    ldloc FN_TMP455
    brtrue FN_NULL456
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP455
FN_NULL456:
    nop
    ldloc FN_TMP455
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK457
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK457:
    nop
FN_AFTER458:
    nop
    ldarg 1
    ldstr "recurse"
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    ret
ELSE459:
    nop
    ldstr "Done!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE460:
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
    callvirt instance object L_432::'InvokeBody'(object, object)
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

} // end of class L_432

