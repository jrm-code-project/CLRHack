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
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1473'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    tail. call object Program::'PUZZLE_START'()
    ret
BLOCK_END_MAIN_1346:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUZZLE_START'() cil managed
{
    .maxstack 8
    .locals init (object N1343, object M1342, object TEMP1579, object TEMP1578, object J1339, object I1336, object TEMP1573, object TEMP1572, object TEMP1571, object IDX1335, object K1332, object J1329, object I1326, object TEMP1564, object I1323)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1323
TAG_LOOP_1324:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1323
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1563:
    nop
    ldnull
    ceq
    brtrue ELSE1580
    leave TAG_DONE_1325
    br END1581
ELSE1580:
    nop
    ldnull
END1581:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I1323
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I1323
    ldloc I1323
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
    stloc TEMP1564
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1564
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1564
    pop
    leave TAG_LOOP_1324
    pop
TAG_DONE_1325:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1326
TAG_LOOP_I_1327:
    nop
    ldc.i4 5
    box int32
    ldloc I1326
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1565
    ldnull
    br END1566
TRUE1565:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1566:
    nop
    ldnull
    ceq
    brtrue ELSE1582
    leave TAG_DONE_I_1328
    br END1583
ELSE1582:
    nop
    ldnull
END1583:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1329
TAG_LOOP_J_1330:
    nop
    ldc.i4 5
    box int32
    ldloc J1329
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1567
    ldnull
    br END1568
TRUE1567:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1568:
    nop
    ldnull
    ceq
    brtrue ELSE1584
    leave TAG_DONE_J_1331
    br END1585
ELSE1584:
    nop
    ldnull
END1585:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1332
TAG_LOOP_K_1333:
    nop
    ldc.i4 5
    box int32
    ldloc K1332
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1569
    ldnull
    br END1570
TRUE1569:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1570:
    nop
    ldnull
    ceq
    brtrue ELSE1586
    leave TAG_DONE_K_1334
    br END1587
ELSE1586:
    nop
    ldnull
END1587:
    nop
    pop
    ldloc K1332
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J1329
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I1326
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
    stloc IDX1335
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1335
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1332
    ldloc K1332
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
    stloc TEMP1571
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1571
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1571
    pop
    leave TAG_LOOP_K_1333
    pop
TAG_DONE_K_1334:
    nop
    ldnull
    pop
    ldloc J1329
    ldloc J1329
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
    stloc TEMP1572
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1572
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1572
    pop
    leave TAG_LOOP_J_1330
    pop
TAG_DONE_J_1331:
    nop
    ldnull
    pop
    ldloc I1326
    ldloc I1326
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
    stloc TEMP1573
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1573
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1573
    pop
    leave TAG_LOOP_I_1327
    pop
TAG_DONE_I_1328:
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
    stloc I1336
TAG_LOOP_I2_1337:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1336
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1574
    ldnull
    br END1575
TRUE1574:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1575:
    nop
    ldnull
    ceq
    brtrue ELSE1588
    leave TAG_DONE_I2_1338
    br END1589
ELSE1588:
    nop
    ldnull
END1589:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1339
TAG_LOOP_J2_1340:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J1339
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1576
    ldnull
    br END1577
TRUE1576:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1577:
    nop
    ldnull
    ceq
    brtrue ELSE1590
    leave TAG_DONE_J2_1341
    br END1591
ELSE1590:
    nop
    ldnull
END1591:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J1339
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
    ldloc I1336
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
    ldloc J1339
    ldloc J1339
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
    stloc TEMP1578
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1578
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1578
    pop
    leave TAG_LOOP_J2_1340
    pop
TAG_DONE_J2_1341:
    nop
    ldnull
    pop
    ldloc I1336
    ldloc I1336
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
    stloc TEMP1579
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1579
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1579
    pop
    leave TAG_LOOP_I2_1337
    pop
TAG_DONE_I2_1338:
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
    stloc M1342
    ldc.i4 0
    box int32
    ldloc M1342
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1593
    ldc.i4 0
    box int32
    ldloc M1342
    call object Program::'P_PLACE'(object, object)
    stloc N1343
    ldloc N1343
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE1592
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
ELSE1592:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1593:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_1321:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    .locals init (object INDEX1318, object TEMP1552, object TEMP1551, object TEMP1550, object INDEX1317, object K1314, object J1311, object I1308)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1308
TAG_LOOP_I_1309:
    nop
    ldarg 2
    ldloc I1308
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1544
    ldnull
    br END1545
TRUE1544:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1545:
    nop
    ldnull
    ceq
    brtrue ELSE1555
    leave TAG_DONE_I_1310
    br END1556
ELSE1555:
    nop
    ldnull
END1556:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1311
TAG_LOOP_J_1312:
    nop
    ldarg 3
    ldloc J1311
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1546
    ldnull
    br END1547
TRUE1546:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1547:
    nop
    ldnull
    ceq
    brtrue ELSE1557
    leave TAG_DONE_J_1313
    br END1558
ELSE1557:
    nop
    ldnull
END1558:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1314
TAG_LOOP_K_1315:
    nop
    ldarg 4
    ldloc K1314
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1548
    ldnull
    br END1549
TRUE1548:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1549:
    nop
    ldnull
    ceq
    brtrue ELSE1559
    leave TAG_DONE_K_1316
    br END1560
ELSE1559:
    nop
    ldnull
END1560:
    nop
    pop
    ldloc I1308
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J1311
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K1314
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
    stloc INDEX1317
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
    ldloc INDEX1317
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1314
    ldloc K1314
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
    stloc TEMP1550
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1550
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1550
    pop
    leave TAG_LOOP_K_1315
    pop
TAG_DONE_K_1316:
    nop
    ldnull
    pop
    ldloc J1311
    ldloc J1311
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
    stloc TEMP1551
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1551
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1551
    pop
    leave TAG_LOOP_J_1312
    pop
TAG_DONE_J_1313:
    nop
    ldnull
    pop
    ldloc I1308
    ldloc I1308
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
    leave TAG_LOOP_I_1309
    pop
TAG_DONE_I_1310:
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
    stloc INDEX1318
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX1318
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1554:
    nop
    ldnull
    ceq
    brtrue ELSE1561
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
ELSE1561:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_1306:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_TRIAL'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP1533, object TEMP1532, object TEMP1531, object TEMP1530, object G12971298, object N1296, object COUNT1295, object CLASS1294, object TEMP1523, object RESULT1291, object I1290)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1290
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1291
TAG_LOOP_1292:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I1290
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1521
    ldnull
    br END1522
TRUE1521:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1522:
    nop
    ldnull
    ceq
    brtrue ELSE1542
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
    ldloc RESULT1291
    ldnull
    stloc TEMP1523
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1523
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1523
    pop
    leave TAG_DONE_1293
    br END1543
ELSE1542:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I1290
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1294
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1294
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1295
    ldloc COUNT1295
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1524
    ldnull
    br END1525
TRUE1524:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1525:
    nop
    ldnull
    ceq
    brtrue TRUE1526
    ldnull
    br END1527
TRUE1526:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1527:
    nop
    ldnull
    ceq
    brtrue ELSE1540
    ldloc I1290
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1538
    ldloc I1290
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N1296
    ldloc N1296
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1528
    ldnull
    br END1529
TRUE1528:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1529:
    nop
    stloc G12971298
    ldloc G12971298
    ldnull
    ceq
    brtrue ELSE1534
    ldloc G12971298
    br END1535
ELSE1534:
    nop
    ldloc N1296
    call object Program::'P_TRIAL'(object)
END1535:
    nop
    ldnull
    ceq
    brtrue ELSE1536
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
    ldloc RESULT1291
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    stloc TEMP1530
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1530
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1530
    pop
    leave TAG_DONE_1293
    br END1537
ELSE1536:
    nop
    ldloc I1290
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I1290
    ldloc I1290
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
    stloc TEMP1531
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1531
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1531
    pop
    leave TAG_LOOP_1292
END1537:
    nop
    br END1539
ELSE1538:
    nop
    ldloc I1290
    ldloc I1290
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
    stloc TEMP1532
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1532
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1532
    pop
    leave TAG_LOOP_1292
END1539:
    nop
    br END1541
ELSE1540:
    nop
    ldloc I1290
    ldloc I1290
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
    stloc TEMP1533
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1533
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1533
    pop
    leave TAG_LOOP_1292
END1541:
    nop
END1543:
    nop
    pop
TAG_DONE_1293:
    nop
    ldnull
    pop
    ldloc RESULT1291
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_1288:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object) cil managed
{
    .maxstack 8
    .locals init (object COUNT1284, object CLASS1283, object TEMP1514, object IDX1282, object K1279, object END1278)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1278
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1279
TAG_LOOP_1280:
    nop
    ldloc END1278
    ldloc K1279
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1510
    ldnull
    br END1511
TRUE1510:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1511:
    nop
    ldnull
    ceq
    brtrue ELSE1515
    leave TAG_DONE_1281
    br END1516
ELSE1515:
    nop
    ldnull
END1516:
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
    ldloc K1279
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
    brtrue ELSE1519
    ldarg 1
    ldloc K1279
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1282
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1282
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1512
    ldnull
    br END1513
TRUE1512:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1513:
    nop
    ldnull
    ceq
    brtrue ELSE1517
    ldnull
    br END1518
ELSE1517:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1282
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1518:
    nop
    br END1520
ELSE1519:
    nop
    ldnull
END1520:
    nop
    pop
    ldloc K1279
    ldloc K1279
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
    stloc TEMP1514
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1514
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1514
    pop
    leave TAG_LOOP_1280
    pop
TAG_DONE_1281:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1283
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1283
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1284
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1283
    ldloc COUNT1284
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
BLOCK_END_P_REMOVE_1276:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP1499, object TEMP1498, object TEMP1495, object RESULT1269, object K21268, object COUNT1267, object CLASS1266, object TEMP1492, object IDX1265, object K1262, object END1261)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1261
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1262
TAG_LOOP_1263:
    nop
    ldloc END1261
    ldloc K1262
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1488
    ldnull
    br END1489
TRUE1488:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1489:
    nop
    ldnull
    ceq
    brtrue ELSE1500
    leave TAG_DONE_1264
    br END1501
ELSE1500:
    nop
    ldnull
END1501:
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
    ldloc K1262
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
    brtrue ELSE1504
    ldarg 1
    ldloc K1262
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1265
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1265
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1490
    ldnull
    br END1491
TRUE1490:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1491:
    nop
    ldnull
    ceq
    brtrue ELSE1502
    ldnull
    br END1503
ELSE1502:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1265
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1503:
    nop
    br END1505
ELSE1504:
    nop
    ldnull
END1505:
    nop
    pop
    ldloc K1262
    ldloc K1262
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
    stloc TEMP1492
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1492
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1492
    pop
    leave TAG_LOOP_1263
    pop
TAG_DONE_1264:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1266
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1266
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1267
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1266
    ldloc COUNT1267
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
    stloc K21268
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1269
TAG_LOOP2_1270:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K21268
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1493
    ldnull
    br END1494
TRUE1493:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1494:
    nop
    ldnull
    ceq
    brtrue ELSE1508
    ldloc RESULT1269
    ldnull
    stloc TEMP1495
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1495
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1495
    pop
    leave TAG_DONE2_1271
    br END1509
ELSE1508:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K21268
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE1496
    ldnull
    br END1497
TRUE1496:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1497:
    nop
    ldnull
    ceq
    brtrue ELSE1506
    ldloc RESULT1269
    ldloc K21268
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc TEMP1498
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1498
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1498
    pop
    leave TAG_DONE2_1271
    br END1507
ELSE1506:
    nop
    ldnull
END1507:
    nop
END1509:
    nop
    pop
    ldloc K21268
    ldloc K21268
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
    stloc TEMP1499
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1499
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1499
    pop
    leave TAG_LOOP2_1270
    pop
TAG_DONE2_1271:
    nop
    ldnull
    pop
    ldloc RESULT1269
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_1259:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_FIT'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP1479, object TEMP1478, object TEMP1477, object IDX1254, object TEMP1474, object RESULT1251, object K1250, object END1249)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1249
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1250
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1251
TAG_LOOP_1252:
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
    brtrue TRUE1471
    ldnull
    br END1472
TRUE1471:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1472:
    nop
    ldnull
    ceq
    brtrue ELSE1480
    ldloc RESULT1251
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
    stloc TEMP1474
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1474
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1474
    pop
    leave TAG_DONE_1253
    br END1481
ELSE1480:
    nop
    ldnull
END1481:
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
    brtrue ELSE1486
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
    stloc IDX1254
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1254
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1475
    ldnull
    br END1476
TRUE1475:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1473'
END1476:
    nop
    ldnull
    ceq
    brtrue ELSE1484
    ldloc RESULT1251
    ldnull
    stloc TEMP1477
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1477
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1477
    pop
    leave TAG_DONE_1253
    br END1485
ELSE1484:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1254
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE1482
    ldloc RESULT1251
    ldnull
    stloc TEMP1478
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1478
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1478
    pop
    leave TAG_DONE_1253
    br END1483
ELSE1482:
    nop
    ldnull
END1483:
    nop
END1485:
    nop
    br END1487
ELSE1486:
    nop
    ldnull
END1487:
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
    stloc TEMP1479
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1479
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1479
    pop
    leave TAG_LOOP_1252
    pop
TAG_DONE_1253:
    nop
    ldnull
    pop
    ldloc RESULT1251
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_1247:
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

