.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'TriangBenchmark' {}
.module 'TriangBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TRIANG_TEST'
    .field public static object 'PRINT'
    .field public static object 'INIT_ARRAYS'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'ATTEMPT'
    .field public static object '_CELL_VALUE'
    .field public static object '_MAKE_CELL'
    .field public static object '_ANSWER_'
    .field public static object 'ARRAY_TO_LIST'
    .field public static object 'CONS'
    .field public static object 'EQ'
    .field public static object '_C_'
    .field public static object '_B_'
    .field public static object '_A_'
    .field public static object '_SEQUENCE_'
    .field public static object '_BOARD_'
    .field public static object '_CONS'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object 'CDR'
    .field public static object 'LIST_TO_ARRAY'
    .field public static object 'CAR'
    .field public static object 'NULL'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2648'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2641'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TRIANG_TEST'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'INIT_ARRAYS'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'ATTEMPT'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'_ANSWER_'
    ldnull
    stsfld object Program::'ARRAY_TO_LIST'
    ldnull
    stsfld object Program::'CONS'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_C_'
    ldnull
    stsfld object Program::'_B_'
    ldnull
    stsfld object Program::'_A_'
    ldnull
    stsfld object Program::'_SEQUENCE_'
    ldnull
    stsfld object Program::'_BOARD_'
    ldnull
    stsfld object Program::'_CONS'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'LIST_TO_ARRAY'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'NULL'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2648'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
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
    .locals init (object RESULT2609)
    call object Program::'INIT_ARRAYS'()
    pop
    ldstr "Running triang benchmark..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 22
    box int32
    ldc.i4 1
    box int32
    call object Program::'TRIANG_TEST'(object, object)
    stloc RESULT2609
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2609
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_2607:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'TRIANG_TEST_Body'(object, object)
    ret
}

.method public static hidebysig object 'TRIANG_TEST'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TRIANG_TEST'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TRIANG_TEST_Body'(object, object) cil managed
{
    .maxstack 8
    ldnull
    dup
    stsfld object Program::'_ANSWER_'
    pop
    ldarg 0
    ldarg 1
    call object Program::'ATTEMPT'(object, object)
    pop
    ldsfld object Program::'_ANSWER_'
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
BLOCK_END_TRIANG_TEST_2603:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ATTEMPT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'ATTEMPT_Body'(object, object)
    ret
}

.method public static hidebysig object 'ATTEMPT'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ATTEMPT'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ATTEMPT_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2658, object TEMP2657, object FOUND2596, object NEXT_DEPTH2595, object J2594)
    ldarg 1
    ldc.i4 14
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2646
    ldnull
    br END2647
TRUE2646:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2647:
    nop
    ldnull
    ceq
    brtrue ELSE2668
    ldsfld object Program::'_SEQUENCE_'
    ldc.i4 1
    box int32
    ldc.i4 14
    box int32
    call object Program::'ARRAY_TO_LIST'(object, object, object)
    ldsfld object Program::'_ANSWER_'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    dup
    stsfld object Program::'_ANSWER_'
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2648'
    ret
ELSE2668:
    nop
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2649
    ldnull
    br END2650
TRUE2649:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2650:
    nop
    ldnull
    ceq
    brtrue ELSE2661
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2651
    ldnull
    br END2652
TRUE2651:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2652:
    nop
    ldnull
    ceq
    brtrue ELSE2659
    ldc.i4 0
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2653
    ldnull
    br END2654
TRUE2653:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2654:
    nop
    br END2660
ELSE2659:
    nop
    ldnull
END2660:
    nop
    br END2662
ELSE2661:
    nop
    ldnull
END2662:
    nop
    ldnull
    ceq
    brtrue ELSE2667
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 0
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 0
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_SEQUENCE_'
    ldarg 1
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2594
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc NEXT_DEPTH2595
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc FOUND2596
TAG_LOOP_2597:
    nop
    ldloc J2594
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 36
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2655
    ldnull
    br END2656
TRUE2655:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2656:
    nop
    ldnull
    ceq
    brtrue ELSE2663
    leave TAG_DONE_2598
    br END2664
ELSE2663:
    nop
    ldnull
END2664:
    nop
    pop
    ldloc J2594
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldloc NEXT_DEPTH2595
    call object Program::'ATTEMPT'(object, object)
    ldnull
    ceq
    brtrue ELSE2665
    ldloc FOUND2596
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2648'
    stloc TEMP2657
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2657
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2657
    pop
    leave TAG_DONE_2598
    br END2666
ELSE2665:
    nop
    ldnull
END2666:
    nop
    pop
    ldloc J2594
    ldloc J2594
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
    stloc TEMP2658
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2658
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2658
    pop
    leave TAG_LOOP_2597
    pop
TAG_DONE_2598:
    nop
    ldnull
    pop
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldc.i4 0
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldnull
    ret
ELSE2667:
    nop
    ldnull
    ret
BLOCK_END_ATTEMPT_2592:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'ARRAY_TO_LIST_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ARRAY_TO_LIST'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ARRAY_TO_LIST_Body'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldarg 2
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2643
    ldnull
    br END2644
TRUE2643:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2644:
    nop
    ldnull
    ceq
    brtrue ELSE2645
    ldnull
    ret
ELSE2645:
    nop
    ldarg 0
    ldarg 1
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldarg 0
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldarg 2
    call object Program::'ARRAY_TO_LIST'(object, object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_ARRAY_TO_LIST_2586:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'INIT_ARRAYS'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'INIT_ARRAYS_Body'()
    ret
}

.method private static hidebysig object 'INIT_ARRAYS_Body'() cil managed
{
    .maxstack 38
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld object Program::'_BOARD_'
    ldc.i4 0
    box int32
    call object Program::'LIST_TO_ARRAY'(object, object, object)
    pop
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld object Program::'_SEQUENCE_'
    ldc.i4 0
    box int32
    call object Program::'LIST_TO_ARRAY'(object, object, object)
    pop
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 4
    box int32
    ldc.i4 3
    box int32
    ldc.i4 5
    box int32
    ldc.i4 6
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    ldc.i4 6
    box int32
    ldc.i4 2
    box int32
    ldc.i4 5
    box int32
    ldc.i4 4
    box int32
    ldc.i4 11
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    ldc.i4 4
    box int32
    ldc.i4 4
    box int32
    ldc.i4 7
    box int32
    ldc.i4 11
    box int32
    ldc.i4 8
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 6
    box int32
    ldc.i4 10
    box int32
    ldc.i4 15
    box int32
    ldc.i4 9
    box int32
    ldc.i4 14
    box int32
    ldc.i4 13
    box int32
    ldc.i4 13
    box int32
    ldc.i4 14
    box int32
    ldc.i4 15
    box int32
    ldc.i4 9
    box int32
    ldc.i4 10
    box int32
    ldc.i4 6
    box int32
    ldc.i4 6
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld object Program::'_A_'
    ldc.i4 0
    box int32
    call object Program::'LIST_TO_ARRAY'(object, object, object)
    pop
    ldc.i4 2
    box int32
    ldc.i4 4
    box int32
    ldc.i4 7
    box int32
    ldc.i4 5
    box int32
    ldc.i4 8
    box int32
    ldc.i4 9
    box int32
    ldc.i4 3
    box int32
    ldc.i4 6
    box int32
    ldc.i4 10
    box int32
    ldc.i4 5
    box int32
    ldc.i4 9
    box int32
    ldc.i4 8
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 14
    box int32
    ldc.i4 8
    box int32
    ldc.i4 9
    box int32
    ldc.i4 5
    box int32
    ldc.i4 2
    box int32
    ldc.i4 4
    box int32
    ldc.i4 7
    box int32
    ldc.i4 5
    box int32
    ldc.i4 8
    box int32
    ldc.i4 9
    box int32
    ldc.i4 3
    box int32
    ldc.i4 6
    box int32
    ldc.i4 10
    box int32
    ldc.i4 5
    box int32
    ldc.i4 9
    box int32
    ldc.i4 8
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 14
    box int32
    ldc.i4 8
    box int32
    ldc.i4 9
    box int32
    ldc.i4 5
    box int32
    ldc.i4 5
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld object Program::'_B_'
    ldc.i4 0
    box int32
    call object Program::'LIST_TO_ARRAY'(object, object, object)
    pop
    ldc.i4 4
    box int32
    ldc.i4 7
    box int32
    ldc.i4 11
    box int32
    ldc.i4 8
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 6
    box int32
    ldc.i4 10
    box int32
    ldc.i4 15
    box int32
    ldc.i4 9
    box int32
    ldc.i4 14
    box int32
    ldc.i4 13
    box int32
    ldc.i4 13
    box int32
    ldc.i4 14
    box int32
    ldc.i4 15
    box int32
    ldc.i4 9
    box int32
    ldc.i4 10
    box int32
    ldc.i4 6
    box int32
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 4
    box int32
    ldc.i4 3
    box int32
    ldc.i4 5
    box int32
    ldc.i4 6
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    ldc.i4 6
    box int32
    ldc.i4 2
    box int32
    ldc.i4 5
    box int32
    ldc.i4 4
    box int32
    ldc.i4 11
    box int32
    ldc.i4 12
    box int32
    ldc.i4 13
    box int32
    ldc.i4 7
    box int32
    ldc.i4 8
    box int32
    ldc.i4 4
    box int32
    ldc.i4 4
    box int32
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld object Program::'_C_'
    ldc.i4 0
    box int32
    tail. call object Program::'LIST_TO_ARRAY'(object, object, object)
    ret
BLOCK_END_INIT_ARRAYS_2579:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    tail.
    call object Program::'LIST_TO_ARRAY_Body'(object, object, object)
    ret
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object) cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'LIST_TO_ARRAY'() cil managed
{
    .maxstack 8
    ldc.i4 3
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'LIST_TO_ARRAY_Body'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2639
    ldnull
    br END2640
TRUE2639:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2641'
END2640:
    nop
    ldnull
    ceq
    brtrue ELSE2642
    ldarg 1
    ret
ELSE2642:
    nop
    ldarg 1
    ldarg 2
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    ldarg 2
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    tail. call object Program::'LIST_TO_ARRAY'(object, object, object)
    ret
BLOCK_END_LIST_TO_ARRAY_2575:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    ldc.i4 16
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_BOARD_'
    pop
    ldc.i4 14
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_SEQUENCE_'
    pop
    ldc.i4 37
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_A_'
    pop
    ldc.i4 37
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_B_'
    pop
    ldc.i4 37
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_C_'
    pop
    ldnull
    dup
    stsfld object Program::'_ANSWER_'
    pop
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

