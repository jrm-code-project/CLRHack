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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2362'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2361'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
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
BLOCK_END_MAIN_2234:
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
    .locals init (object N2231, object M2230, object TEMP2468, object TEMP2467, object J2227, object I2224, object TEMP2462, object TEMP2461, object TEMP2460, object IDX2223, object K2220, object J2217, object I2214, object TEMP2453, object I2211)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2211
TAG_LOOP_2212:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I2211
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2451
    ldnull
    br END2452
TRUE2451:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2452:
    nop
    ldnull
    ceq
    brtrue ELSE2469
    leave TAG_DONE_2213
    br END2470
ELSE2469:
    nop
    ldnull
END2470:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I2211
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I2211
    ldloc I2211
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
    stloc TEMP2453
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2453
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2453
    pop
    leave TAG_LOOP_2212
    pop
TAG_DONE_2213:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2214
TAG_LOOP_I_2215:
    nop
    ldc.i4 5
    box int32
    ldloc I2214
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2454
    ldnull
    br END2455
TRUE2454:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2455:
    nop
    ldnull
    ceq
    brtrue ELSE2471
    leave TAG_DONE_I_2216
    br END2472
ELSE2471:
    nop
    ldnull
END2472:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2217
TAG_LOOP_J_2218:
    nop
    ldc.i4 5
    box int32
    ldloc J2217
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2456
    ldnull
    br END2457
TRUE2456:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2457:
    nop
    ldnull
    ceq
    brtrue ELSE2473
    leave TAG_DONE_J_2219
    br END2474
ELSE2473:
    nop
    ldnull
END2474:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2220
TAG_LOOP_K_2221:
    nop
    ldc.i4 5
    box int32
    ldloc K2220
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2458
    ldnull
    br END2459
TRUE2458:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2459:
    nop
    ldnull
    ceq
    brtrue ELSE2475
    leave TAG_DONE_K_2222
    br END2476
ELSE2475:
    nop
    ldnull
END2476:
    nop
    pop
    ldloc K2220
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J2217
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I2214
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
    stloc IDX2223
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2223
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K2220
    ldloc K2220
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
    stloc TEMP2460
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2460
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2460
    pop
    leave TAG_LOOP_K_2221
    pop
TAG_DONE_K_2222:
    nop
    ldnull
    pop
    ldloc J2217
    ldloc J2217
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
    stloc TEMP2461
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2461
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2461
    pop
    leave TAG_LOOP_J_2218
    pop
TAG_DONE_J_2219:
    nop
    ldnull
    pop
    ldloc I2214
    ldloc I2214
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
    stloc TEMP2462
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2462
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2462
    pop
    leave TAG_LOOP_I_2215
    pop
TAG_DONE_I_2216:
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
    stloc I2224
TAG_LOOP_I2_2225:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I2224
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2463
    ldnull
    br END2464
TRUE2463:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2464:
    nop
    ldnull
    ceq
    brtrue ELSE2477
    leave TAG_DONE_I2_2226
    br END2478
ELSE2477:
    nop
    ldnull
END2478:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2227
TAG_LOOP_J2_2228:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J2227
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2465
    ldnull
    br END2466
TRUE2465:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2466:
    nop
    ldnull
    ceq
    brtrue ELSE2479
    leave TAG_DONE_J2_2229
    br END2480
ELSE2479:
    nop
    ldnull
END2480:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J2227
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
    ldloc I2224
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
    ldloc J2227
    ldloc J2227
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
    stloc TEMP2467
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2467
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2467
    pop
    leave TAG_LOOP_J2_2228
    pop
TAG_DONE_J2_2229:
    nop
    ldnull
    pop
    ldloc I2224
    ldloc I2224
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
    stloc TEMP2468
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2468
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2468
    pop
    leave TAG_LOOP_I2_2225
    pop
TAG_DONE_I2_2226:
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
    stloc M2230
    ldc.i4 0
    box int32
    ldloc M2230
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE2482
    ldc.i4 0
    box int32
    ldloc M2230
    call object Program::'P_PLACE'(object, object)
    stloc N2231
    ldloc N2231
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE2481
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
ELSE2481:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE2482:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_2209:
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
    .locals init (object INDEX2206, object TEMP2441, object TEMP2440, object TEMP2439, object INDEX2205, object K2202, object J2199, object I2196)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2196
TAG_LOOP_I_2197:
    nop
    ldarg 2
    ldloc I2196
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2433
    ldnull
    br END2434
TRUE2433:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2434:
    nop
    ldnull
    ceq
    brtrue ELSE2444
    leave TAG_DONE_I_2198
    br END2445
ELSE2444:
    nop
    ldnull
END2445:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J2199
TAG_LOOP_J_2200:
    nop
    ldarg 3
    ldloc J2199
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2435
    ldnull
    br END2436
TRUE2435:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2436:
    nop
    ldnull
    ceq
    brtrue ELSE2446
    leave TAG_DONE_J_2201
    br END2447
ELSE2446:
    nop
    ldnull
END2447:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2202
TAG_LOOP_K_2203:
    nop
    ldarg 4
    ldloc K2202
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2437
    ldnull
    br END2438
TRUE2437:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2438:
    nop
    ldnull
    ceq
    brtrue ELSE2448
    leave TAG_DONE_K_2204
    br END2449
ELSE2448:
    nop
    ldnull
END2449:
    nop
    pop
    ldloc I2196
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J2199
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K2202
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
    stloc INDEX2205
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
    ldloc INDEX2205
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K2202
    ldloc K2202
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
    stloc TEMP2439
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2439
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2439
    pop
    leave TAG_LOOP_K_2203
    pop
TAG_DONE_K_2204:
    nop
    ldnull
    pop
    ldloc J2199
    ldloc J2199
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
    stloc TEMP2440
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2440
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2440
    pop
    leave TAG_LOOP_J_2200
    pop
TAG_DONE_J_2201:
    nop
    ldnull
    pop
    ldloc I2196
    ldloc I2196
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
    stloc TEMP2441
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2441
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2441
    pop
    leave TAG_LOOP_I_2197
    pop
TAG_DONE_I_2198:
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
    stloc INDEX2206
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX2206
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2442
    ldnull
    br END2443
TRUE2442:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2443:
    nop
    ldnull
    ceq
    brtrue ELSE2450
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
ELSE2450:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_2194:
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
    .locals init (object TEMP2422, object TEMP2421, object TEMP2420, object TEMP2419, object G21852186, object N2184, object COUNT2183, object CLASS2182, object TEMP2412, object RESULT2179, object I2178)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I2178
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2179
TAG_LOOP_2180:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I2178
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2410
    ldnull
    br END2411
TRUE2410:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2411:
    nop
    ldnull
    ceq
    brtrue ELSE2431
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
    ldloc RESULT2179
    ldnull
    stloc TEMP2412
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2412
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2412
    pop
    leave TAG_DONE_2181
    br END2432
ELSE2431:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I2178
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2182
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2182
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2183
    ldloc COUNT2183
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2413
    ldnull
    br END2414
TRUE2413:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2414:
    nop
    ldnull
    ceq
    brtrue TRUE2415
    ldnull
    br END2416
TRUE2415:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2416:
    nop
    ldnull
    ceq
    brtrue ELSE2429
    ldloc I2178
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE2427
    ldloc I2178
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N2184
    ldloc N2184
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2417
    ldnull
    br END2418
TRUE2417:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2418:
    nop
    stloc G21852186
    ldloc G21852186
    ldnull
    ceq
    brtrue ELSE2423
    ldloc G21852186
    br END2424
ELSE2423:
    nop
    ldloc N2184
    call object Program::'P_TRIAL'(object)
END2424:
    nop
    ldnull
    ceq
    brtrue ELSE2425
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
    ldloc RESULT2179
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    stloc TEMP2419
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2419
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2419
    pop
    leave TAG_DONE_2181
    br END2426
ELSE2425:
    nop
    ldloc I2178
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I2178
    ldloc I2178
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
    stloc TEMP2420
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2420
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2420
    pop
    leave TAG_LOOP_2180
END2426:
    nop
    br END2428
ELSE2427:
    nop
    ldloc I2178
    ldloc I2178
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
    stloc TEMP2421
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2421
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2421
    pop
    leave TAG_LOOP_2180
END2428:
    nop
    br END2430
ELSE2429:
    nop
    ldloc I2178
    ldloc I2178
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
    stloc TEMP2422
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2422
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2422
    pop
    leave TAG_LOOP_2180
END2430:
    nop
END2432:
    nop
    pop
TAG_DONE_2181:
    nop
    ldnull
    pop
    ldloc RESULT2179
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_2176:
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
    .locals init (object COUNT2172, object CLASS2171, object TEMP2403, object IDX2170, object K2167, object END2166)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2166
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2167
TAG_LOOP_2168:
    nop
    ldloc END2166
    ldloc K2167
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2399
    ldnull
    br END2400
TRUE2399:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2400:
    nop
    ldnull
    ceq
    brtrue ELSE2404
    leave TAG_DONE_2169
    br END2405
ELSE2404:
    nop
    ldnull
END2405:
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
    ldloc K2167
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
    brtrue ELSE2408
    ldarg 1
    ldloc K2167
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2170
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2170
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2401
    ldnull
    br END2402
TRUE2401:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2402:
    nop
    ldnull
    ceq
    brtrue ELSE2406
    ldnull
    br END2407
ELSE2406:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2170
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END2407:
    nop
    br END2409
ELSE2408:
    nop
    ldnull
END2409:
    nop
    pop
    ldloc K2167
    ldloc K2167
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
    stloc TEMP2403
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2403
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2403
    pop
    leave TAG_LOOP_2168
    pop
TAG_DONE_2169:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2171
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2171
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2172
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2171
    ldloc COUNT2172
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
BLOCK_END_P_REMOVE_2164:
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
    .locals init (object TEMP2388, object TEMP2387, object TEMP2384, object RESULT2157, object K22156, object COUNT2155, object CLASS2154, object TEMP2381, object IDX2153, object K2150, object END2149)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2149
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2150
TAG_LOOP_2151:
    nop
    ldloc END2149
    ldloc K2150
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2377
    ldnull
    br END2378
TRUE2377:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2378:
    nop
    ldnull
    ceq
    brtrue ELSE2389
    leave TAG_DONE_2152
    br END2390
ELSE2389:
    nop
    ldnull
END2390:
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
    ldloc K2150
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
    brtrue ELSE2393
    ldarg 1
    ldloc K2150
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2153
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2153
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2379
    ldnull
    br END2380
TRUE2379:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2380:
    nop
    ldnull
    ceq
    brtrue ELSE2391
    ldnull
    br END2392
ELSE2391:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2153
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END2392:
    nop
    br END2394
ELSE2393:
    nop
    ldnull
END2394:
    nop
    pop
    ldloc K2150
    ldloc K2150
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
    stloc TEMP2381
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2381
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2381
    pop
    leave TAG_LOOP_2151
    pop
TAG_DONE_2152:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS2154
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2154
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT2155
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS2154
    ldloc COUNT2155
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
    stloc K22156
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2157
TAG_LOOP2_2158:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K22156
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2382
    ldnull
    br END2383
TRUE2382:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2383:
    nop
    ldnull
    ceq
    brtrue ELSE2397
    ldloc RESULT2157
    ldnull
    stloc TEMP2384
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2384
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2384
    pop
    leave TAG_DONE2_2159
    br END2398
ELSE2397:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K22156
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE2385
    ldnull
    br END2386
TRUE2385:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2386:
    nop
    ldnull
    ceq
    brtrue ELSE2395
    ldloc RESULT2157
    ldloc K22156
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc TEMP2387
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2387
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2387
    pop
    leave TAG_DONE2_2159
    br END2396
ELSE2395:
    nop
    ldnull
END2396:
    nop
END2398:
    nop
    pop
    ldloc K22156
    ldloc K22156
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
    stloc TEMP2388
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2388
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2388
    pop
    leave TAG_LOOP2_2158
    pop
TAG_DONE2_2159:
    nop
    ldnull
    pop
    ldloc RESULT2157
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_2147:
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
    .locals init (object TEMP2368, object TEMP2367, object TEMP2366, object IDX2142, object TEMP2363, object RESULT2139, object K2138, object END2137)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END2137
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K2138
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT2139
TAG_LOOP_2140:
    nop
    ldloc END2137
    ldloc K2138
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2359
    ldnull
    br END2360
TRUE2359:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2360:
    nop
    ldnull
    ceq
    brtrue ELSE2369
    ldloc RESULT2139
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2362'
    stloc TEMP2363
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2363
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2363
    pop
    leave TAG_DONE_2141
    br END2370
ELSE2369:
    nop
    ldnull
END2370:
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
    ldloc K2138
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
    brtrue ELSE2375
    ldarg 1
    ldloc K2138
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX2142
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX2142
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE2364
    ldnull
    br END2365
TRUE2364:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2361'
END2365:
    nop
    ldnull
    ceq
    brtrue ELSE2373
    ldloc RESULT2139
    ldnull
    stloc TEMP2366
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2366
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2366
    pop
    leave TAG_DONE_2141
    br END2374
ELSE2373:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX2142
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE2371
    ldloc RESULT2139
    ldnull
    stloc TEMP2367
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2367
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2367
    pop
    leave TAG_DONE_2141
    br END2372
ELSE2371:
    nop
    ldnull
END2372:
    nop
END2374:
    nop
    br END2376
ELSE2375:
    nop
    ldnull
END2376:
    nop
    pop
    ldloc K2138
    ldloc K2138
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
    stloc TEMP2368
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2368
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2368
    pop
    leave TAG_LOOP_2140
    pop
TAG_DONE_2141:
    nop
    ldnull
    pop
    ldloc RESULT2139
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_2135:
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

