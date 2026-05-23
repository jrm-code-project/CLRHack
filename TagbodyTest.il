.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'TagbodyTest' {}
.module 'TagbodyTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_TAGBODY_NESTING'
    .field public static object 'TEST_TAGBODY_LOOP'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_CELL_VALUE'
    .field public static object 'EQ'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2570'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_TAGBODY_NESTING'
    ldnull
    stsfld object Program::'TEST_TAGBODY_LOOP'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2570'
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
    call object Program::'TEST_TAGBODY_LOOP'()
    pop
    tail. call object Program::'TEST_TAGBODY_NESTING'()
    ret
BLOCK_END_MAIN_2560:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_NESTING'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_TAGBODY_NESTING_Body'()
    ret
}

.method private static hidebysig object 'TEST_TAGBODY_NESTING_Body'() cil managed
{
    .maxstack 8
    ldstr "Testing nested tagbody..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
TAG_OUTER_START_2554:
    nop
    ldstr "Outer start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
TAG_INNER_START_2556:
    nop
    ldstr "Inner start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_INNER_END_2557
    pop
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
TAG_INNER_END_2557:
    nop
    ldstr "Inner end"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    pop
    ldstr "Back in outer"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_OUTER_END_2555
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
TAG_OUTER_END_2555:
    nop
    ldstr "Outer end"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
BLOCK_END_TEST_TAGBODY_NESTING_2552:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_TAGBODY_LOOP'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_TAGBODY_LOOP_Body'()
    ret
}

.method private static hidebysig object 'TEST_TAGBODY_LOOP_Body'() cil managed
{
    .maxstack 8
    .locals init (object TEMP2571, object I2547)
    ldstr "Testing tagbody loop..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2547
TAG_START_2548:
    nop
    ldloc I2547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 10
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2568
    ldnull
    br END2569
TRUE2568:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2570'
END2569:
    nop
    ldnull
    ceq
    brtrue ELSE2572
    leave TAG_END_2549
    br END2573
ELSE2572:
    nop
    ldnull
END2573:
    nop
    pop
    ldloc I2547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc I2547
    ldloc I2547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP2571
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2571
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2571
    pop
    leave TAG_START_2548
    pop
TAG_END_2549:
    nop
    ldnull
    pop
    ldstr "Loop finished."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Final i (should be 10):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc I2547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_TAGBODY_LOOP_2545:
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

