.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'PuzzleBenchmark' {}
.module 'PuzzleBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object '_PUZZLE_CLASSMAX_'
    .field public static object 'PUZZLE_START'
    .field public static object 'PRINT'
    .field public static object 'P_DEFINE_PIECE'
    .field public static object '_III_'
    .field public static object '_PUZZLE_DEE_'
    .field public static object 'P_REMOVE'
    .field public static object 'P_TRIAL'
    .field public static object 'NULL'
    .field public static object 'P_PLACE'
    .field public static object 'P_FIT'
    .field public static object 'EQ'
    .field public static object '_KOUNT_'
    .field public static object '_PUZZLE_TYPEMAX_'
    .field public static object 'NOT'
    .field public static object '_P_PIECECOUNT_'
    .field public static object '_P_CLASS_'
    .field public static object '_P_PUZZL_'
    .field public static object '_PUZZLE_SIZE_'
    .field public static object '_P_P_'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'TEMP_B'
    .field public static object '_CELL_VALUE'
    .field public static object '_'
    .field public static object '_MAKE_CELL'
    .field public static object '_P_PIECEMAX_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2616'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2615'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'_PUZZLE_CLASSMAX_'
    ldnull
    stsfld object Program::'PUZZLE_START'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'P_DEFINE_PIECE'
    ldnull
    stsfld object Program::'_III_'
    ldnull
    stsfld object Program::'_PUZZLE_DEE_'
    ldnull
    stsfld object Program::'P_REMOVE'
    ldnull
    stsfld object Program::'P_TRIAL'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'P_PLACE'
    ldnull
    stsfld object Program::'P_FIT'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_KOUNT_'
    ldnull
    stsfld object Program::'_PUZZLE_TYPEMAX_'
    ldnull
    stsfld object Program::'NOT'
    ldnull
    stsfld object Program::'_P_PIECECOUNT_'
    ldnull
    stsfld object Program::'_P_CLASS_'
    ldnull
    stsfld object Program::'_P_PUZZL_'
    ldnull
    stsfld object Program::'_PUZZLE_SIZE_'
    ldnull
    stsfld object Program::'_P_P_'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'_P_PIECEMAX_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
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
    tail. call object Program::'PUZZLE_START'()
    ret
BLOCK_END_MAIN_2488:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'PUZZLE_START'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'PUZZLE_START_Body'()
    ret
}

.method private static hidebysig object 'PUZZLE_START_Body'() cil managed
{
    .maxstack 8
    .locals init (object N2485, object M2484, object TEMP2722, object TEMP2721, object J2481, object I2478, object TEMP2716, object TEMP2715, object TEMP2714, object IDX2477, object K2474, object J2471, object I2468, object TEMP2707, object I2465)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2465
TAG_LOOP_2466:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I2465
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2705
    ldnull
    br END2706
TRUE2705:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2706:
    nop
    ldnull
    ceq
    brtrue ELSE2723
    leave TAG_DONE_2467
    br END2724
ELSE2723:
    nop
    ldnull
END2724:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I2465
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I2465
    ldloc I2465
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
    stloc TEMP2707
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2707
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2707
    pop
    leave TAG_LOOP_2466
    pop
TAG_DONE_2467:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2468
TAG_LOOP_I_2469:
    nop
    ldc.i4 5
    box int32
    ldloc I2468
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2708
    ldnull
    br END2709
TRUE2708:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2709:
    nop
    ldnull
    ceq
    brtrue ELSE2725
    leave TAG_DONE_I_2470
    br END2726
ELSE2725:
    nop
    ldnull
END2726:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2471
TAG_LOOP_J_2472:
    nop
    ldc.i4 5
    box int32
    ldloc J2471
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2710
    ldnull
    br END2711
TRUE2710:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2711:
    nop
    ldnull
    ceq
    brtrue ELSE2727
    leave TAG_DONE_J_2473
    br END2728
ELSE2727:
    nop
    ldnull
END2728:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2474
TAG_LOOP_K_2475:
    nop
    ldc.i4 5
    box int32
    ldloc K2474
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2712
    ldnull
    br END2713
TRUE2712:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2713:
    nop
    ldnull
    ceq
    brtrue ELSE2729
    leave TAG_DONE_K_2476
    br END2730
ELSE2729:
    nop
    ldnull
END2730:
    nop
    pop
    ldloc K2474
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J2471
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I2468
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2477
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2477
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K2474
    ldloc K2474
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
    stloc TEMP2714
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2714
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2714
    pop
    leave TAG_LOOP_K_2475
    pop
TAG_DONE_K_2476:
    nop
    ldnull
    pop
    ldloc J2471
    ldloc J2471
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
    stloc TEMP2715
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2715
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2715
    pop
    leave TAG_LOOP_J_2472
    pop
TAG_DONE_J_2473:
    nop
    ldnull
    pop
    ldloc I2468
    ldloc I2468
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
    stloc TEMP2716
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2716
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2716
    pop
    leave TAG_LOOP_I_2469
    pop
TAG_DONE_I_2470:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 0
    box int32
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2478
TAG_LOOP_I2_2479:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I2478
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2717
    ldnull
    br END2718
TRUE2717:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2718:
    nop
    ldnull
    ceq
    brtrue ELSE2731
    leave TAG_DONE_I2_2480
    br END2732
ELSE2731:
    nop
    ldnull
END2732:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2481
TAG_LOOP_J2_2482:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J2481
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2719
    ldnull
    br END2720
TRUE2719:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2720:
    nop
    ldnull
    ceq
    brtrue ELSE2733
    leave TAG_DONE_J2_2483
    br END2734
ELSE2733:
    nop
    ldnull
END2734:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J2481
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc I2478
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc J2481
    ldloc J2481
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
    stloc TEMP2721
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2721
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2721
    pop
    leave TAG_LOOP_J2_2482
    pop
TAG_DONE_J2_2483:
    nop
    ldnull
    pop
    ldloc I2478
    ldloc I2478
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
    stloc TEMP2722
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2722
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2722
    pop
    leave TAG_LOOP_I2_2479
    pop
TAG_DONE_I2_2480:
    nop
    ldnull
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_III_'
    pop
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 4
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 5
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 6
    box int32
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 7
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 8
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 2
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 9
    box int32
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 10
    box int32
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 11
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 12
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 1
    box int32
    ldsfld object Program::'_PUZZLE_DEE_'
    ldc.i4 1
    box int32
    ldsfld object Program::'_PUZZLE_DEE_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc M2484
    ldc.i4 0
    box int32
    ldloc M2484
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE2736
    ldc.i4 0
    box int32
    ldloc M2484
    call object Program::'P_PLACE'(object, object)
    stloc N2485
    ldloc N2485
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE2735
    ldstr "Kount:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_KOUNT_'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_KOUNT_'
    ret
ELSE2735:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE2736:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_2463:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    tail.
    call object Program::'P_DEFINE_PIECE_Body'(object, object, object, object, object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_DEFINE_PIECE'() cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'P_DEFINE_PIECE_Body'(object, object, object, object, object) cil managed
{
    .maxstack 8
    .locals init (object INDEX2460, object TEMP2695, object TEMP2694, object TEMP2693, object INDEX2459, object K2456, object J2453, object I2450)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2450
TAG_LOOP_I_2451:
    nop
    ldarg 2
    ldloc I2450
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2687
    ldnull
    br END2688
TRUE2687:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2688:
    nop
    ldnull
    ceq
    brtrue ELSE2698
    leave TAG_DONE_I_2452
    br END2699
ELSE2698:
    nop
    ldnull
END2699:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2453
TAG_LOOP_J_2454:
    nop
    ldarg 3
    ldloc J2453
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2689
    ldnull
    br END2690
TRUE2689:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2690:
    nop
    ldnull
    ceq
    brtrue ELSE2700
    leave TAG_DONE_J_2455
    br END2701
ELSE2700:
    nop
    ldnull
END2701:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2456
TAG_LOOP_K_2457:
    nop
    ldarg 4
    ldloc K2456
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2691
    ldnull
    br END2692
TRUE2691:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2692:
    nop
    ldnull
    ceq
    brtrue ELSE2702
    leave TAG_DONE_K_2458
    br END2703
ELSE2702:
    nop
    ldnull
END2703:
    nop
    pop
    ldloc I2450
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J2453
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K2456
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc INDEX2459
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc INDEX2459
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K2456
    ldloc K2456
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
    stloc TEMP2693
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2693
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2693
    pop
    leave TAG_LOOP_K_2457
    pop
TAG_DONE_K_2458:
    nop
    ldnull
    pop
    ldloc J2453
    ldloc J2453
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
    stloc TEMP2694
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2694
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2694
    pop
    leave TAG_LOOP_J_2454
    pop
TAG_DONE_J_2455:
    nop
    ldnull
    pop
    ldloc I2450
    ldloc I2450
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
    stloc TEMP2695
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2695
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2695
    pop
    leave TAG_LOOP_I_2451
    pop
TAG_DONE_I_2452:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    ldarg 1
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldarg 2
    ldsfld object Program::'_PUZZLE_DEE_'
    ldarg 3
    ldsfld object Program::'_PUZZLE_DEE_'
    ldarg 4
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc INDEX2460
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX2460
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2696
    ldnull
    br END2697
TRUE2696:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2697:
    nop
    ldnull
    ceq
    brtrue ELSE2704
    ldsfld object Program::'_III_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_III_'
    ret
ELSE2704:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_2448:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_TRIAL'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'P_TRIAL_Body'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'P_TRIAL_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2676, object TEMP2675, object TEMP2674, object TEMP2673, object G24392440, object N2438, object COUNT2437, object CLASS2436, object TEMP2666, object RESULT2433, object I2432)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2432
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2433
TAG_LOOP_2434:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I2432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2664
    ldnull
    br END2665
TRUE2664:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2665:
    nop
    ldnull
    ceq
    brtrue ELSE2685
    ldsfld object Program::'_KOUNT_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldloc RESULT2433
    ldnull
    stloc TEMP2666
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2666
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2666
    pop
    leave TAG_DONE_2435
    br END2686
ELSE2685:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I2432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2436
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2436
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2437
    ldloc COUNT2437
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2667
    ldnull
    br END2668
TRUE2667:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2668:
    nop
    ldnull
    ceq
    brtrue TRUE2669
    ldnull
    br END2670
TRUE2669:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2670:
    nop
    ldnull
    ceq
    brtrue ELSE2683
    ldloc I2432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE2681
    ldloc I2432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N2438
    ldloc N2438
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2671
    ldnull
    br END2672
TRUE2671:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2672:
    nop
    stloc G24392440
    ldloc G24392440
    ldnull
    ceq
    brtrue ELSE2677
    ldloc G24392440
    br END2678
ELSE2677:
    nop
    ldloc N2438
    call object Program::'P_TRIAL'(object)
END2678:
    nop
    ldnull
    ceq
    brtrue ELSE2679
    ldsfld object Program::'_KOUNT_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldloc RESULT2433
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    stloc TEMP2673
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2673
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2673
    pop
    leave TAG_DONE_2435
    br END2680
ELSE2679:
    nop
    ldloc I2432
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I2432
    ldloc I2432
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
    stloc TEMP2674
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2674
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2674
    pop
    leave TAG_LOOP_2434
END2680:
    nop
    br END2682
ELSE2681:
    nop
    ldloc I2432
    ldloc I2432
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
    stloc TEMP2675
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2675
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2675
    pop
    leave TAG_LOOP_2434
END2682:
    nop
    br END2684
ELSE2683:
    nop
    ldloc I2432
    ldloc I2432
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
    stloc TEMP2676
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2676
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2676
    pop
    leave TAG_LOOP_2434
END2684:
    nop
END2686:
    nop
    pop
TAG_DONE_2435:
    nop
    ldnull
    pop
    ldloc RESULT2433
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_2430:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_REMOVE_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_REMOVE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'P_REMOVE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object COUNT2426, object CLASS2425, object TEMP2657, object IDX2424, object K2421, object END2420)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2420
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2421
TAG_LOOP_2422:
    nop
    ldloc END2420
    ldloc K2421
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2653
    ldnull
    br END2654
TRUE2653:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2654:
    nop
    ldnull
    ceq
    brtrue ELSE2658
    leave TAG_DONE_2423
    br END2659
ELSE2658:
    nop
    ldnull
END2659:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K2421
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE2662
    ldarg 1
    ldloc K2421
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2424
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2424
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2655
    ldnull
    br END2656
TRUE2655:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2656:
    nop
    ldnull
    ceq
    brtrue ELSE2660
    ldnull
    br END2661
ELSE2660:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2424
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END2661:
    nop
    br END2663
ELSE2662:
    nop
    ldnull
END2663:
    nop
    pop
    ldloc K2421
    ldloc K2421
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
    stloc TEMP2657
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2657
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2657
    pop
    leave TAG_LOOP_2422
    pop
TAG_DONE_2423:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2425
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2425
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2426
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2425
    ldloc COUNT2426
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    ret
BLOCK_END_P_REMOVE_2418:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_PLACE_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_PLACE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'P_PLACE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2642, object TEMP2641, object TEMP2638, object RESULT2411, object K22410, object COUNT2409, object CLASS2408, object TEMP2635, object IDX2407, object K2404, object END2403)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2403
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2404
TAG_LOOP_2405:
    nop
    ldloc END2403
    ldloc K2404
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2631
    ldnull
    br END2632
TRUE2631:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2632:
    nop
    ldnull
    ceq
    brtrue ELSE2643
    leave TAG_DONE_2406
    br END2644
ELSE2643:
    nop
    ldnull
END2644:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K2404
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE2647
    ldarg 1
    ldloc K2404
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2407
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2407
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2633
    ldnull
    br END2634
TRUE2633:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2634:
    nop
    ldnull
    ceq
    brtrue ELSE2645
    ldnull
    br END2646
ELSE2645:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2407
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END2646:
    nop
    br END2648
ELSE2647:
    nop
    ldnull
END2648:
    nop
    pop
    ldloc K2404
    ldloc K2404
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
    stloc TEMP2635
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2635
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2635
    pop
    leave TAG_LOOP_2405
    pop
TAG_DONE_2406:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2408
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2408
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2409
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2408
    ldloc COUNT2409
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K22410
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2411
TAG_LOOP2_2412:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K22410
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2636
    ldnull
    br END2637
TRUE2636:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2637:
    nop
    ldnull
    ceq
    brtrue ELSE2651
    ldloc RESULT2411
    ldnull
    stloc TEMP2638
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2638
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2638
    pop
    leave TAG_DONE2_2413
    br END2652
ELSE2651:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K22410
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE2639
    ldnull
    br END2640
TRUE2639:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2640:
    nop
    ldnull
    ceq
    brtrue ELSE2649
    ldloc RESULT2411
    ldloc K22410
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc TEMP2641
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2641
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2641
    pop
    leave TAG_DONE2_2413
    br END2650
ELSE2649:
    nop
    ldnull
END2650:
    nop
END2652:
    nop
    pop
    ldloc K22410
    ldloc K22410
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
    stloc TEMP2642
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2642
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2642
    pop
    leave TAG_LOOP2_2412
    pop
TAG_DONE2_2413:
    nop
    ldnull
    pop
    ldloc RESULT2411
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_2401:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_FIT_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_FIT'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'P_FIT'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'P_FIT_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP2622, object TEMP2621, object TEMP2620, object IDX2396, object TEMP2617, object RESULT2393, object K2392, object END2391)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2391
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2392
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2393
TAG_LOOP_2394:
    nop
    ldloc END2391
    ldloc K2392
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2613
    ldnull
    br END2614
TRUE2613:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2614:
    nop
    ldnull
    ceq
    brtrue ELSE2623
    ldloc RESULT2393
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2616'
    stloc TEMP2617
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2617
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2617
    pop
    leave TAG_DONE_2395
    br END2624
ELSE2623:
    nop
    ldnull
END2624:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K2392
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE2629
    ldarg 1
    ldloc K2392
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2396
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2396
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2618
    ldnull
    br END2619
TRUE2618:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2619:
    nop
    ldnull
    ceq
    brtrue ELSE2627
    ldloc RESULT2393
    ldnull
    stloc TEMP2620
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2620
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2620
    pop
    leave TAG_DONE_2395
    br END2628
ELSE2627:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2396
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE2625
    ldloc RESULT2393
    ldnull
    stloc TEMP2621
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2621
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2621
    pop
    leave TAG_DONE_2395
    br END2626
ELSE2625:
    nop
    ldnull
END2626:
    nop
END2628:
    nop
    br END2630
ELSE2629:
    nop
    ldnull
END2630:
    nop
    pop
    ldloc K2392
    ldloc K2392
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
    stloc TEMP2622
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2622
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2622
    pop
    leave TAG_LOOP_2394
    pop
TAG_DONE_2395:
    nop
    ldnull
    pop
    ldloc RESULT2393
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_2389:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    ldc.i4 511
    box int32
    dup
    stsfld object Program::'_PUZZLE_SIZE_'
    pop
    ldc.i4 3
    box int32
    dup
    stsfld object Program::'_PUZZLE_CLASSMAX_'
    pop
    ldc.i4 12
    box int32
    dup
    stsfld object Program::'_PUZZLE_TYPEMAX_'
    pop
    ldc.i4 8
    box int32
    dup
    stsfld object Program::'_PUZZLE_DEE_'
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_III_'
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 4
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PIECECOUNT_'
    pop
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_CLASS_'
    pop
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PIECEMAX_'
    pop
    ldc.i4 512
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PUZZL_'
    pop
    ldc.i4 6656
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_P_'
    pop
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

