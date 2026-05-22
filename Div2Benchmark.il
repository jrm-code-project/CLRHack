.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'Div2Benchmark' {}
.module 'Div2Benchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'CREATE_N'
    .field public static object 'TEST_2'
    .field public static object '_L_'
    .field public static object 'TEST_1'
    .field public static object 'PRINT'
    .field public static object 'ITERATIVE_DIV2'
    .field public static object 'EQ'
    .field public static object 'RECURSIVE_DIV2'
    .field public static object 'CAR'
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'CDR'
    .field public static object 'COUNT_LEN506'
    .field public static object 'COUNT505'
    .field public static object 'NULL'
    .field public static object 'LOOP_K467'
    .field public static object '_CELL_VALUE'
    .field public static object 'CONS'
    .field public static object 'L466'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'TEMP_B'
    .field public static object 'N463'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G543'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'CREATE_N'
    ldnull
    stsfld object Program::'TEST_2'
    ldnull
    stsfld object Program::'_L_'
    ldnull
    stsfld object Program::'TEST_1'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'ITERATIVE_DIV2'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'RECURSIVE_DIV2'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'COUNT_LEN506'
    ldnull
    stsfld object Program::'COUNT505'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'LOOP_K467'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'CONS'
    ldnull
    stsfld object Program::'L466'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'N463'
    ldnull
    stsfld object Program::'_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object TEMP570, object COUNT_LEN506, object COUNT505, object RES504)
    ldstr "Testing iterative-div2..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_L_'
    call object Program::'TEST_1'(object)
    pop
    ldstr "Testing recursive-div2..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_L_'
    call object Program::'TEST_2'(object)
    pop
    ldsfld object Program::'_L_'
    call object Program::'ITERATIVE_DIV2'(object)
    stloc RES504
    ldstr "Length of div2 result should be 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT505
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT_LEN506
    ldloc COUNT_LEN506
    ldloc COUNT_LEN506
    ldloc COUNT505
    newobj instance void L_511::'.ctor'(object, object)
    stloc TEMP570
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP570
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP570
    pop
    ldloc COUNT_LEN506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldloc RES504
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldloc COUNT505
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Done"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_502:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_2'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP567, object I497)
    ldc.i4 300
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I497
TAG_LOOP_498:
    nop
    ldloc I497
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE565
    ldnull
    br END566
TRUE565:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END566:
    nop
    ldnull
    ceq
    brtrue ELSE568
    leave TAG_DONE_499
    br END569
ELSE568:
    nop
    ldnull
END569:
    nop
    pop
    ldarg 0
    call object Program::'RECURSIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'RECURSIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'RECURSIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'RECURSIVE_DIV2'(object)
    pop
    ldloc I497
    ldloc I497
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP567
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP567
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP567
    pop
    leave TAG_LOOP_498
    pop
TAG_DONE_499:
    nop
    ldnull
    ret
BLOCK_END_TEST_2_495:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_1'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP562, object I489)
    ldc.i4 300
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I489
TAG_LOOP_490:
    nop
    ldloc I489
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE560
    ldnull
    br END561
TRUE560:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END561:
    nop
    ldnull
    ceq
    brtrue ELSE563
    leave TAG_DONE_491
    br END564
ELSE563:
    nop
    ldnull
END564:
    nop
    pop
    ldarg 0
    call object Program::'ITERATIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'ITERATIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'ITERATIVE_DIV2'(object)
    pop
    ldarg 0
    call object Program::'ITERATIVE_DIV2'(object)
    pop
    ldloc I489
    ldloc I489
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP562
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP562
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP562
    pop
    leave TAG_LOOP_490
    pop
TAG_DONE_491:
    nop
    ldnull
    ret
BLOCK_END_TEST_1_487:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE557
    ldnull
    br END558
TRUE557:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END558:
    nop
    ldnull
    ceq
    brtrue ELSE559
    ldnull
    ret
ELSE559:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'RECURSIVE_DIV2'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_RECURSIVE_DIV2_482:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP554, object TEMP553, object A476, object L_PTR475)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc L_PTR475
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A476
TAG_LOOP_477:
    nop
    ldloc L_PTR475
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE551
    ldnull
    br END552
TRUE551:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END552:
    nop
    ldnull
    ceq
    brtrue ELSE555
    leave TAG_DONE_478
    br END556
ELSE555:
    nop
    ldnull
END556:
    nop
    pop
    ldloc A476
    ldloc L_PTR475
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc A476
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TEMP553
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP553
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP553
    pop
    ldloc L_PTR475
    ldloc L_PTR475
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP554
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP554
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP554
    pop
    leave TAG_LOOP_477
    pop
TAG_DONE_478:
    nop
    ldnull
    pop
    ldloc A476
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_ITERATIVE_DIV2_473:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'CREATE_N'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP550, object LOOP_K467, object L466)
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc L466
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LOOP_K467
    ldloc LOOP_K467
    ldarg 0
    ldloc LOOP_K467
    ldloc L466
    newobj instance void L_510::'.ctor'(object, object, object)
    stloc TEMP550
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP550
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP550
    pop
    ldloc LOOP_K467
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldc.i4 0
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_CREATE_N_464:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    ldc.i4 200
    box int32
    call object Program::'CREATE_N'(object)
    dup
    stsfld object Program::'_L_'
    pop
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_510
       extends [LispBase]Lisp.Closure
{
    .field public object 'N463'
    .field public object 'LOOP_K467'
    .field public object 'L466'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_510::'N463'
    ldarg.0
    ldarg 2
    stfld object L_510::'LOOP_K467'
    ldarg.0
    ldarg 3
    stfld object L_510::'L466'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP544)
    ldarg 1
    ldarg.0
    ldfld object L_510::'N463'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE541
    ldnull
    br END542
TRUE541:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END542:
    nop
    ldnull
    ceq
    brtrue ELSE545
    ldarg.0
    ldfld object L_510::'L466'
    ldnull
    ldarg.0
    ldfld object L_510::'L466'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TEMP544
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP544
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP544
    pop
    ldarg.0
    ldfld object L_510::'LOOP_K467'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
ELSE545:
    nop
    ldarg.0
    ldfld object L_510::'L466'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
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
    callvirt instance object L_510::'InvokeBody'(object)
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

} // end of class L_510

.class public auto ansi beforefieldinit L_511
       extends [LispBase]Lisp.Closure
{
    .field public object 'COUNT_LEN506'
    .field public object 'COUNT505'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_511::'COUNT_LEN506'
    ldarg.0
    ldarg 2
    stfld object L_511::'COUNT505'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP548)
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE546
    ldnull
    br END547
TRUE546:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G543'
END547:
    nop
    ldnull
    ceq
    brtrue ELSE549
    ldnull
    ret
ELSE549:
    nop
    ldarg.0
    ldfld object L_511::'COUNT505'
    ldarg.0
    ldfld object L_511::'COUNT505'
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
    stloc TEMP548
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP548
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP548
    pop
    ldarg.0
    ldfld object L_511::'COUNT_LEN506'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    callvirt instance object L_511::'InvokeBody'(object)
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

} // end of class L_511

