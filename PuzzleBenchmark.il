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
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1461'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
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
BLOCK_END_MAIN_1334:
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
    .locals init (object N1331, object M1330, object TEMP1567, object TEMP1566, object J1327, object I1324, object TEMP1561, object TEMP1560, object TEMP1559, object IDX1323, object K1320, object J1317, object I1314, object TEMP1552, object I1311)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1311
TAG_LOOP_1312:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1311
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1550
    ldnull
    br END1551
TRUE1550:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1551:
    nop
    ldnull
    ceq
    brtrue ELSE1568
    leave TAG_DONE_1313
    br END1569
ELSE1568:
    nop
    ldnull
END1569:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I1311
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I1311
    ldloc I1311
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
    stloc TEMP1552
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1552
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1552
    pop
    leave TAG_LOOP_1312
    pop
TAG_DONE_1313:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1314
TAG_LOOP_I_1315:
    nop
    ldc.i4 5
    box int32
    ldloc I1314
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1553
    ldnull
    br END1554
TRUE1553:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1554:
    nop
    ldnull
    ceq
    brtrue ELSE1570
    leave TAG_DONE_I_1316
    br END1571
ELSE1570:
    nop
    ldnull
END1571:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1317
TAG_LOOP_J_1318:
    nop
    ldc.i4 5
    box int32
    ldloc J1317
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1555
    ldnull
    br END1556
TRUE1555:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1556:
    nop
    ldnull
    ceq
    brtrue ELSE1572
    leave TAG_DONE_J_1319
    br END1573
ELSE1572:
    nop
    ldnull
END1573:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1320
TAG_LOOP_K_1321:
    nop
    ldc.i4 5
    box int32
    ldloc K1320
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1557
    ldnull
    br END1558
TRUE1557:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1558:
    nop
    ldnull
    ceq
    brtrue ELSE1574
    leave TAG_DONE_K_1322
    br END1575
ELSE1574:
    nop
    ldnull
END1575:
    nop
    pop
    ldloc K1320
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J1317
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I1314
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
    stloc IDX1323
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1323
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1320
    ldloc K1320
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
    stloc TEMP1559
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1559
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1559
    pop
    leave TAG_LOOP_K_1321
    pop
TAG_DONE_K_1322:
    nop
    ldnull
    pop
    ldloc J1317
    ldloc J1317
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
    stloc TEMP1560
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1560
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1560
    pop
    leave TAG_LOOP_J_1318
    pop
TAG_DONE_J_1319:
    nop
    ldnull
    pop
    ldloc I1314
    ldloc I1314
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
    stloc TEMP1561
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1561
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1561
    pop
    leave TAG_LOOP_I_1315
    pop
TAG_DONE_I_1316:
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
    stloc I1324
TAG_LOOP_I2_1325:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1324
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1562
    ldnull
    br END1563
TRUE1562:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1563:
    nop
    ldnull
    ceq
    brtrue ELSE1576
    leave TAG_DONE_I2_1326
    br END1577
ELSE1576:
    nop
    ldnull
END1577:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1327
TAG_LOOP_J2_1328:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J1327
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1564
    ldnull
    br END1565
TRUE1564:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1565:
    nop
    ldnull
    ceq
    brtrue ELSE1578
    leave TAG_DONE_J2_1329
    br END1579
ELSE1578:
    nop
    ldnull
END1579:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J1327
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
    ldloc I1324
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
    ldloc J1327
    ldloc J1327
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
    stloc TEMP1566
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1566
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1566
    pop
    leave TAG_LOOP_J2_1328
    pop
TAG_DONE_J2_1329:
    nop
    ldnull
    pop
    ldloc I1324
    ldloc I1324
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
    stloc TEMP1567
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1567
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1567
    pop
    leave TAG_LOOP_I2_1325
    pop
TAG_DONE_I2_1326:
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
    stloc M1330
    ldc.i4 0
    box int32
    ldloc M1330
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1581
    ldc.i4 0
    box int32
    ldloc M1330
    call object Program::'P_PLACE'(object, object)
    stloc N1331
    ldloc N1331
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE1580
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
ELSE1580:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1581:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_1309:
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
    .locals init (object INDEX1306, object TEMP1540, object TEMP1539, object TEMP1538, object INDEX1305, object K1302, object J1299, object I1296)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1296
TAG_LOOP_I_1297:
    nop
    ldarg 2
    ldloc I1296
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1532
    ldnull
    br END1533
TRUE1532:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1533:
    nop
    ldnull
    ceq
    brtrue ELSE1543
    leave TAG_DONE_I_1298
    br END1544
ELSE1543:
    nop
    ldnull
END1544:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1299
TAG_LOOP_J_1300:
    nop
    ldarg 3
    ldloc J1299
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1534
    ldnull
    br END1535
TRUE1534:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1535:
    nop
    ldnull
    ceq
    brtrue ELSE1545
    leave TAG_DONE_J_1301
    br END1546
ELSE1545:
    nop
    ldnull
END1546:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1302
TAG_LOOP_K_1303:
    nop
    ldarg 4
    ldloc K1302
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1536
    ldnull
    br END1537
TRUE1536:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1537:
    nop
    ldnull
    ceq
    brtrue ELSE1547
    leave TAG_DONE_K_1304
    br END1548
ELSE1547:
    nop
    ldnull
END1548:
    nop
    pop
    ldloc I1296
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J1299
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K1302
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
    stloc INDEX1305
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
    ldloc INDEX1305
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1302
    ldloc K1302
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
    stloc TEMP1538
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1538
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1538
    pop
    leave TAG_LOOP_K_1303
    pop
TAG_DONE_K_1304:
    nop
    ldnull
    pop
    ldloc J1299
    ldloc J1299
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
    stloc TEMP1539
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1539
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1539
    pop
    leave TAG_LOOP_J_1300
    pop
TAG_DONE_J_1301:
    nop
    ldnull
    pop
    ldloc I1296
    ldloc I1296
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
    stloc TEMP1540
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1540
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1540
    pop
    leave TAG_LOOP_I_1297
    pop
TAG_DONE_I_1298:
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
    stloc INDEX1306
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX1306
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1541
    ldnull
    br END1542
TRUE1541:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1542:
    nop
    ldnull
    ceq
    brtrue ELSE1549
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
ELSE1549:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_1294:
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
    .locals init (object TEMP1521, object TEMP1520, object TEMP1519, object TEMP1518, object G12851286, object N1284, object COUNT1283, object CLASS1282, object TEMP1511, object RESULT1279, object I1278)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1278
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1279
TAG_LOOP_1280:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I1278
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1509
    ldnull
    br END1510
TRUE1509:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1510:
    nop
    ldnull
    ceq
    brtrue ELSE1530
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
    ldloc RESULT1279
    ldnull
    stloc TEMP1511
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1511
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1511
    pop
    leave TAG_DONE_1281
    br END1531
ELSE1530:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I1278
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1282
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1282
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1283
    ldloc COUNT1283
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1512
    ldnull
    br END1513
TRUE1512:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1513:
    nop
    ldnull
    ceq
    brtrue TRUE1514
    ldnull
    br END1515
TRUE1514:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1515:
    nop
    ldnull
    ceq
    brtrue ELSE1528
    ldloc I1278
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1526
    ldloc I1278
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N1284
    ldloc N1284
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1516
    ldnull
    br END1517
TRUE1516:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1517:
    nop
    stloc G12851286
    ldloc G12851286
    ldnull
    ceq
    brtrue ELSE1522
    ldloc G12851286
    br END1523
ELSE1522:
    nop
    ldloc N1284
    call object Program::'P_TRIAL'(object)
END1523:
    nop
    ldnull
    ceq
    brtrue ELSE1524
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
    ldloc RESULT1279
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
    stloc TEMP1518
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1518
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1518
    pop
    leave TAG_DONE_1281
    br END1525
ELSE1524:
    nop
    ldloc I1278
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I1278
    ldloc I1278
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
    stloc TEMP1519
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1519
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1519
    pop
    leave TAG_LOOP_1280
END1525:
    nop
    br END1527
ELSE1526:
    nop
    ldloc I1278
    ldloc I1278
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
    stloc TEMP1520
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1520
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1520
    pop
    leave TAG_LOOP_1280
END1527:
    nop
    br END1529
ELSE1528:
    nop
    ldloc I1278
    ldloc I1278
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
    stloc TEMP1521
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1521
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1521
    pop
    leave TAG_LOOP_1280
END1529:
    nop
END1531:
    nop
    pop
TAG_DONE_1281:
    nop
    ldnull
    pop
    ldloc RESULT1279
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_1276:
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
    .locals init (object COUNT1272, object CLASS1271, object TEMP1502, object IDX1270, object K1267, object END1266)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1266
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1267
TAG_LOOP_1268:
    nop
    ldloc END1266
    ldloc K1267
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1498
    ldnull
    br END1499
TRUE1498:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1499:
    nop
    ldnull
    ceq
    brtrue ELSE1503
    leave TAG_DONE_1269
    br END1504
ELSE1503:
    nop
    ldnull
END1504:
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
    ldloc K1267
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
    brtrue ELSE1507
    ldarg 1
    ldloc K1267
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1270
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1270
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1500
    ldnull
    br END1501
TRUE1500:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1501:
    nop
    ldnull
    ceq
    brtrue ELSE1505
    ldnull
    br END1506
ELSE1505:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1270
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1506:
    nop
    br END1508
ELSE1507:
    nop
    ldnull
END1508:
    nop
    pop
    ldloc K1267
    ldloc K1267
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
    stloc TEMP1502
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1502
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1502
    pop
    leave TAG_LOOP_1268
    pop
TAG_DONE_1269:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1271
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1271
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1272
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1271
    ldloc COUNT1272
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
BLOCK_END_P_REMOVE_1264:
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
    .locals init (object TEMP1487, object TEMP1486, object TEMP1483, object RESULT1257, object K21256, object COUNT1255, object CLASS1254, object TEMP1480, object IDX1253, object K1250, object END1249)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1249
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1250
TAG_LOOP_1251:
    nop
    ldloc END1249
    ldloc K1250
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1476
    ldnull
    br END1477
TRUE1476:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1477:
    nop
    ldnull
    ceq
    brtrue ELSE1488
    leave TAG_DONE_1252
    br END1489
ELSE1488:
    nop
    ldnull
END1489:
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
    ldloc K1250
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
    brtrue ELSE1492
    ldarg 1
    ldloc K1250
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1253
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1253
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1478
    ldnull
    br END1479
TRUE1478:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1479:
    nop
    ldnull
    ceq
    brtrue ELSE1490
    ldnull
    br END1491
ELSE1490:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1253
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1491:
    nop
    br END1493
ELSE1492:
    nop
    ldnull
END1493:
    nop
    pop
    ldloc K1250
    ldloc K1250
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
    stloc TEMP1480
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1480
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1480
    pop
    leave TAG_LOOP_1251
    pop
TAG_DONE_1252:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1254
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1254
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1255
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1254
    ldloc COUNT1255
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
    stloc K21256
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1257
TAG_LOOP2_1258:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K21256
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1481
    ldnull
    br END1482
TRUE1481:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1482:
    nop
    ldnull
    ceq
    brtrue ELSE1496
    ldloc RESULT1257
    ldnull
    stloc TEMP1483
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1483
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1483
    pop
    leave TAG_DONE2_1259
    br END1497
ELSE1496:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K21256
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE1484
    ldnull
    br END1485
TRUE1484:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1485:
    nop
    ldnull
    ceq
    brtrue ELSE1494
    ldloc RESULT1257
    ldloc K21256
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc TEMP1486
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1486
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1486
    pop
    leave TAG_DONE2_1259
    br END1495
ELSE1494:
    nop
    ldnull
END1495:
    nop
END1497:
    nop
    pop
    ldloc K21256
    ldloc K21256
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
    stloc TEMP1487
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1487
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1487
    pop
    leave TAG_LOOP2_1258
    pop
TAG_DONE2_1259:
    nop
    ldnull
    pop
    ldloc RESULT1257
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_1247:
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
    .locals init (object TEMP1467, object TEMP1466, object TEMP1465, object IDX1242, object TEMP1462, object RESULT1239, object K1238, object END1237)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1237
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1238
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1239
TAG_LOOP_1240:
    nop
    ldloc END1237
    ldloc K1238
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1459
    ldnull
    br END1460
TRUE1459:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1460:
    nop
    ldnull
    ceq
    brtrue ELSE1468
    ldloc RESULT1239
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
    stloc TEMP1462
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1462
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1462
    pop
    leave TAG_DONE_1241
    br END1469
ELSE1468:
    nop
    ldnull
END1469:
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
    ldloc K1238
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
    brtrue ELSE1474
    ldarg 1
    ldloc K1238
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1242
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1242
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1463
    ldnull
    br END1464
TRUE1463:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1461'
END1464:
    nop
    ldnull
    ceq
    brtrue ELSE1472
    ldloc RESULT1239
    ldnull
    stloc TEMP1465
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1465
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1465
    pop
    leave TAG_DONE_1241
    br END1473
ELSE1472:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1242
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE1470
    ldloc RESULT1239
    ldnull
    stloc TEMP1466
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1466
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1466
    pop
    leave TAG_DONE_1241
    br END1471
ELSE1470:
    nop
    ldnull
END1471:
    nop
END1473:
    nop
    br END1475
ELSE1474:
    nop
    ldnull
END1475:
    nop
    pop
    ldloc K1238
    ldloc K1238
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
    stloc TEMP1467
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1467
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1467
    pop
    leave TAG_LOOP_1240
    pop
TAG_DONE_1241:
    nop
    ldnull
    pop
    ldloc RESULT1239
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_1235:
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

