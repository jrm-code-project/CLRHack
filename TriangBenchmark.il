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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2786'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2779'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2786'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
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
    .locals init (object RESULT2747)
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
    stloc RESULT2747
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2747
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_2745:
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
BLOCK_END_TRIANG_TEST_2741:
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
    .locals init (object TEMP2796, object TEMP2795, object FOUND2734, object NEXT_DEPTH2733, object J2732)
    ldarg 1
    ldc.i4 14
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2784
    ldnull
    br END2785
TRUE2784:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2785:
    nop
    ldnull
    ceq
    brtrue ELSE2806
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2786'
    ret
ELSE2806:
    nop
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2787
    ldnull
    br END2788
TRUE2787:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2788:
    nop
    ldnull
    ceq
    brtrue ELSE2799
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2789
    ldnull
    br END2790
TRUE2789:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2790:
    nop
    ldnull
    ceq
    brtrue ELSE2797
    ldc.i4 0
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2791
    ldnull
    br END2792
TRUE2791:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2792:
    nop
    br END2798
ELSE2797:
    nop
    ldnull
END2798:
    nop
    br END2800
ELSE2799:
    nop
    ldnull
END2800:
    nop
    ldnull
    ceq
    brtrue ELSE2805
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
    stloc J2732
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc NEXT_DEPTH2733
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc FOUND2734
TAG_LOOP_2735:
    nop
    ldloc J2732
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 36
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2793
    ldnull
    br END2794
TRUE2793:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2794:
    nop
    ldnull
    ceq
    brtrue ELSE2801
    leave TAG_DONE_2736
    br END2802
ELSE2801:
    nop
    ldnull
END2802:
    nop
    pop
    ldloc J2732
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldloc NEXT_DEPTH2733
    call object Program::'ATTEMPT'(object, object)
    ldnull
    ceq
    brtrue ELSE2803
    ldloc FOUND2734
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2786'
    stloc TEMP2795
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2795
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2795
    pop
    leave TAG_DONE_2736
    br END2804
ELSE2803:
    nop
    ldnull
END2804:
    nop
    pop
    ldloc J2732
    ldloc J2732
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
    stloc TEMP2796
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2796
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2796
    pop
    leave TAG_LOOP_2735
    pop
TAG_DONE_2736:
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
ELSE2805:
    nop
    ldnull
    ret
BLOCK_END_ATTEMPT_2730:
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
    brtrue TRUE2781
    ldnull
    br END2782
TRUE2781:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2782:
    nop
    ldnull
    ceq
    brtrue ELSE2783
    ldnull
    ret
ELSE2783:
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
BLOCK_END_ARRAY_TO_LIST_2724:
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
BLOCK_END_INIT_ARRAYS_2717:
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
    brtrue TRUE2777
    ldnull
    br END2778
TRUE2777:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2779'
END2778:
    nop
    ldnull
    ceq
    brtrue ELSE2780
    ldarg 1
    ret
ELSE2780:
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
BLOCK_END_LIST_TO_ARRAY_2713:
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

