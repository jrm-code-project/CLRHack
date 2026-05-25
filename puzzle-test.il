.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'puzzle-test' {}
.module 'puzzle-test.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_PUZZLE_CLASSMAX_'
    .field public static object '_III_'
    .field public static object '_PUZZLE_DEE_'
    .field public static object '_KOUNT_'
    .field public static object '_PUZZLE_TYPEMAX_'
    .field public static object '_P_PIECECOUNT_'
    .field public static object '_P_CLASS_'
    .field public static object '_P_PUZZL_'
    .field public static object '_PUZZLE_SIZE_'
    .field public static object '_P_P_'
    .field public static object 'TEMP_B'
    .field public static object '_P_PIECEMAX_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T1739'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1738'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_PUZZLE_CLASSMAX_'
    ldnull
    stsfld object Program::'_III_'
    ldnull
    stsfld object Program::'_PUZZLE_DEE_'
    ldnull
    stsfld object Program::'_KOUNT_'
    ldnull
    stsfld object Program::'_PUZZLE_TYPEMAX_'
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
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_P_PIECEMAX_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
BLOCK_END_MAIN_1565:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    .locals init (object CELL_VAL_TMP1903, object CELL_TMP1902, object CELL_VAL_TMP1901, object CELL_TMP1900, object CELL_VAL_TMP1895, object CELL_TMP1894, object CELL_VAL_TMP1893, object CELL_TMP1892, object CELL_VAL_TMP1891, object CELL_TMP1890, object CELL_VAL_TMP1883, object CELL_TMP1882, object N1561, object M1560, object TEMP1879, object TEMP1878, object J1557, object I1554, object TEMP1873, object TEMP1872, object TEMP1871, object IDX1553, object K1550, object J1547, object I1544, object TEMP1864, object I1541)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1541
TAG_LOOP_1542:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1541
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1862
    ldnull
    br END1863
TRUE1862:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1863:
    nop
    ldnull
    ceq
    brtrue ELSE1880
    leave TAG_DONE_1543
    br END1881
ELSE1880:
    nop
    ldnull
END1881:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I1541
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I1541
    stloc CELL_TMP1882
    ldloc I1541
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
    stloc CELL_VAL_TMP1883
    ldloc CELL_TMP1882
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1883
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1883
    pop
    leave TAG_LOOP_1542
    pop
TAG_DONE_1543:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1544
TAG_LOOP_I_1545:
    nop
    ldc.i4 5
    box int32
    ldloc I1544
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1865
    ldnull
    br END1866
TRUE1865:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1866:
    nop
    ldnull
    ceq
    brtrue ELSE1884
    leave TAG_DONE_I_1546
    br END1885
ELSE1884:
    nop
    ldnull
END1885:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1547
TAG_LOOP_J_1548:
    nop
    ldc.i4 5
    box int32
    ldloc J1547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1867
    ldnull
    br END1868
TRUE1867:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1868:
    nop
    ldnull
    ceq
    brtrue ELSE1886
    leave TAG_DONE_J_1549
    br END1887
ELSE1886:
    nop
    ldnull
END1887:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1550
TAG_LOOP_K_1551:
    nop
    ldc.i4 5
    box int32
    ldloc K1550
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1869
    ldnull
    br END1870
TRUE1869:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1870:
    nop
    ldnull
    ceq
    brtrue ELSE1888
    leave TAG_DONE_K_1552
    br END1889
ELSE1888:
    nop
    ldnull
END1889:
    nop
    pop
    ldloc K1550
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J1547
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I1544
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
    stloc IDX1553
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1553
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1550
    stloc CELL_TMP1890
    ldloc K1550
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
    stloc CELL_VAL_TMP1891
    ldloc CELL_TMP1890
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1891
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1891
    pop
    leave TAG_LOOP_K_1551
    pop
TAG_DONE_K_1552:
    nop
    ldnull
    pop
    ldloc J1547
    stloc CELL_TMP1892
    ldloc J1547
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
    stloc CELL_VAL_TMP1893
    ldloc CELL_TMP1892
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1893
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1893
    pop
    leave TAG_LOOP_J_1548
    pop
TAG_DONE_J_1549:
    nop
    ldnull
    pop
    ldloc I1544
    stloc CELL_TMP1894
    ldloc I1544
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
    stloc CELL_VAL_TMP1895
    ldloc CELL_TMP1894
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1895
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1895
    pop
    leave TAG_LOOP_I_1545
    pop
TAG_DONE_I_1546:
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
    stloc I1554
TAG_LOOP_I2_1555:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I1554
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1874
    ldnull
    br END1875
TRUE1874:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1875:
    nop
    ldnull
    ceq
    brtrue ELSE1896
    leave TAG_DONE_I2_1556
    br END1897
ELSE1896:
    nop
    ldnull
END1897:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1557
TAG_LOOP_J2_1558:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J1557
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1876
    ldnull
    br END1877
TRUE1876:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1877:
    nop
    ldnull
    ceq
    brtrue ELSE1898
    leave TAG_DONE_J2_1559
    br END1899
ELSE1898:
    nop
    ldnull
END1899:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J1557
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
    ldloc I1554
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
    ldloc J1557
    stloc CELL_TMP1900
    ldloc J1557
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
    stloc CELL_VAL_TMP1901
    ldloc CELL_TMP1900
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1901
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1901
    pop
    leave TAG_LOOP_J2_1558
    pop
TAG_DONE_J2_1559:
    nop
    ldnull
    pop
    ldloc I1554
    stloc CELL_TMP1902
    ldloc I1554
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
    stloc CELL_VAL_TMP1903
    ldloc CELL_TMP1902
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1903
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1903
    pop
    leave TAG_LOOP_I2_1555
    pop
TAG_DONE_I2_1556:
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
    stloc M1560
    ldc.i4 0
    box int32
    ldloc M1560
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1905
    ldc.i4 0
    box int32
    ldloc M1560
    call object Program::'P_PLACE'(object, object)
    stloc N1561
    ldloc N1561
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE1904
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
ELSE1904:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1905:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_1539:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'() cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_DEFINE_PIECE_Body'(object, object, object, object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1860, object CELL_TMP1859, object CELL_VAL_TMP1858, object CELL_TMP1857, object CELL_VAL_TMP1856, object CELL_TMP1855, object INDEX1535, object TEMP1846, object TEMP1845, object TEMP1844, object INDEX1534, object K1531, object J1528, object I1525)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1525
TAG_LOOP_I_1526:
    nop
    ldarg 2
    ldloc I1525
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1838
    ldnull
    br END1839
TRUE1838:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1839:
    nop
    ldnull
    ceq
    brtrue ELSE1849
    leave TAG_DONE_I_1527
    br END1850
ELSE1849:
    nop
    ldnull
END1850:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J1528
TAG_LOOP_J_1529:
    nop
    ldarg 3
    ldloc J1528
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1840
    ldnull
    br END1841
TRUE1840:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1841:
    nop
    ldnull
    ceq
    brtrue ELSE1851
    leave TAG_DONE_J_1530
    br END1852
ELSE1851:
    nop
    ldnull
END1852:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1531
TAG_LOOP_K_1532:
    nop
    ldarg 4
    ldloc K1531
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1842
    ldnull
    br END1843
TRUE1842:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1843:
    nop
    ldnull
    ceq
    brtrue ELSE1853
    leave TAG_DONE_K_1533
    br END1854
ELSE1853:
    nop
    ldnull
END1854:
    nop
    pop
    ldloc I1525
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J1528
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K1531
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
    stloc INDEX1534
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
    ldloc INDEX1534
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K1531
    stloc CELL_TMP1855
    ldloc K1531
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
    stloc CELL_VAL_TMP1856
    ldloc CELL_TMP1855
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1856
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1856
    pop
    leave TAG_LOOP_K_1532
    pop
TAG_DONE_K_1533:
    nop
    ldnull
    pop
    ldloc J1528
    stloc CELL_TMP1857
    ldloc J1528
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
    stloc CELL_VAL_TMP1858
    ldloc CELL_TMP1857
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1858
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1858
    pop
    leave TAG_LOOP_J_1529
    pop
TAG_DONE_J_1530:
    nop
    ldnull
    pop
    ldloc I1525
    stloc CELL_TMP1859
    ldloc I1525
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
    stloc CELL_VAL_TMP1860
    ldloc CELL_TMP1859
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1860
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1860
    pop
    leave TAG_LOOP_I_1526
    pop
TAG_DONE_I_1527:
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
    stloc INDEX1535
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX1535
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1847
    ldnull
    br END1848
TRUE1847:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1848:
    nop
    ldnull
    ceq
    brtrue ELSE1861
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
ELSE1861:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_1523:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_TRIAL_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1833, object CELL_TMP1832, object CELL_VAL_TMP1829, object CELL_TMP1828, object CELL_VAL_TMP1825, object CELL_TMP1824, object CELL_VAL_TMP1823, object CELL_TMP1822, object CELL_VAL_TMP1819, object CELL_TMP1818, object TEMP1817, object TEMP1816, object TEMP1815, object TEMP1814, object G15131514, object N1512, object COUNT1511, object CLASS1510, object TEMP1807, object RESULT1507, object I1506)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I1506
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1507
TAG_LOOP_1508:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I1506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1805
    ldnull
    br END1806
TRUE1805:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1806:
    nop
    ldnull
    ceq
    brtrue ELSE1836
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
    ldloc RESULT1507
    stloc CELL_TMP1818
    ldnull
    stloc CELL_VAL_TMP1819
    ldloc CELL_TMP1818
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1819
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1819
    pop
    leave TAG_DONE_1509
    br END1837
ELSE1836:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I1506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1510
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1510
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1511
    ldloc COUNT1511
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1808
    ldnull
    br END1809
TRUE1808:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1809:
    nop
    ldnull
    ceq
    brtrue TRUE1810
    ldnull
    br END1811
TRUE1810:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1811:
    nop
    ldnull
    ceq
    brtrue ELSE1834
    ldloc I1506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE1830
    ldloc I1506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N1512
    ldloc N1512
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1812
    ldnull
    br END1813
TRUE1812:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1813:
    nop
    stloc G15131514
    ldloc G15131514
    ldnull
    ceq
    brtrue ELSE1820
    ldloc G15131514
    br END1821
ELSE1820:
    nop
    ldloc N1512
    call object Program::'P_TRIAL'(object)
END1821:
    nop
    ldnull
    ceq
    brtrue ELSE1826
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
    ldloc RESULT1507
    stloc CELL_TMP1822
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    stloc CELL_VAL_TMP1823
    ldloc CELL_TMP1822
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1823
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1823
    pop
    leave TAG_DONE_1509
    br END1827
ELSE1826:
    nop
    ldloc I1506
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I1506
    stloc CELL_TMP1824
    ldloc I1506
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
    stloc CELL_VAL_TMP1825
    ldloc CELL_TMP1824
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1825
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1825
    pop
    leave TAG_LOOP_1508
END1827:
    nop
    br END1831
ELSE1830:
    nop
    ldloc I1506
    stloc CELL_TMP1828
    ldloc I1506
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
    stloc CELL_VAL_TMP1829
    ldloc CELL_TMP1828
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1829
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1829
    pop
    leave TAG_LOOP_1508
END1831:
    nop
    br END1835
ELSE1834:
    nop
    ldloc I1506
    stloc CELL_TMP1832
    ldloc I1506
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
    stloc CELL_VAL_TMP1833
    ldloc CELL_TMP1832
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1833
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1833
    pop
    leave TAG_LOOP_1508
END1835:
    nop
END1837:
    nop
    pop
TAG_DONE_1509:
    nop
    ldnull
    pop
    ldloc RESULT1507
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_1504:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_REMOVE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1804, object CELL_TMP1803, object COUNT1499, object CLASS1498, object TEMP1796, object IDX1497, object K1494, object END1493)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1493
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1494
TAG_LOOP_1495:
    nop
    ldloc END1493
    ldloc K1494
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1792
    ldnull
    br END1793
TRUE1792:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1793:
    nop
    ldnull
    ceq
    brtrue ELSE1797
    leave TAG_DONE_1496
    br END1798
ELSE1797:
    nop
    ldnull
END1798:
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
    ldloc K1494
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
    brtrue ELSE1801
    ldarg 1
    ldloc K1494
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1497
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1497
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1794
    ldnull
    br END1795
TRUE1794:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1795:
    nop
    ldnull
    ceq
    brtrue ELSE1799
    ldnull
    br END1800
ELSE1799:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1497
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1800:
    nop
    br END1802
ELSE1801:
    nop
    ldnull
END1802:
    nop
    pop
    ldloc K1494
    stloc CELL_TMP1803
    ldloc K1494
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
    stloc CELL_VAL_TMP1804
    ldloc CELL_TMP1803
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1804
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1804
    pop
    leave TAG_LOOP_1495
    pop
TAG_DONE_1496:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1498
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1498
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1499
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1498
    ldloc COUNT1499
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
BLOCK_END_P_REMOVE_1491:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_PLACE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1791, object CELL_TMP1790, object CELL_VAL_TMP1785, object CELL_TMP1784, object CELL_VAL_TMP1783, object CELL_TMP1782, object CELL_VAL_TMP1781, object CELL_TMP1780, object TEMP1773, object TEMP1772, object TEMP1769, object RESULT1483, object K21482, object COUNT1481, object CLASS1480, object TEMP1766, object IDX1479, object K1476, object END1475)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1475
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1476
TAG_LOOP_1477:
    nop
    ldloc END1475
    ldloc K1476
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1762
    ldnull
    br END1763
TRUE1762:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1763:
    nop
    ldnull
    ceq
    brtrue ELSE1774
    leave TAG_DONE_1478
    br END1775
ELSE1774:
    nop
    ldnull
END1775:
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
    ldloc K1476
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
    brtrue ELSE1778
    ldarg 1
    ldloc K1476
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1479
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1479
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1764
    ldnull
    br END1765
TRUE1764:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1765:
    nop
    ldnull
    ceq
    brtrue ELSE1776
    ldnull
    br END1777
ELSE1776:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1479
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END1777:
    nop
    br END1779
ELSE1778:
    nop
    ldnull
END1779:
    nop
    pop
    ldloc K1476
    stloc CELL_TMP1780
    ldloc K1476
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
    stloc CELL_VAL_TMP1781
    ldloc CELL_TMP1780
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1781
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1781
    pop
    leave TAG_LOOP_1477
    pop
TAG_DONE_1478:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS1480
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1480
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT1481
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS1480
    ldloc COUNT1481
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
    stloc K21482
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1483
TAG_LOOP2_1484:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K21482
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1767
    ldnull
    br END1768
TRUE1767:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1768:
    nop
    ldnull
    ceq
    brtrue ELSE1788
    ldloc RESULT1483
    stloc CELL_TMP1782
    ldnull
    stloc CELL_VAL_TMP1783
    ldloc CELL_TMP1782
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1783
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1783
    pop
    leave TAG_DONE2_1485
    br END1789
ELSE1788:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K21482
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE1770
    ldnull
    br END1771
TRUE1770:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1771:
    nop
    ldnull
    ceq
    brtrue ELSE1786
    ldloc RESULT1483
    stloc CELL_TMP1784
    ldloc K21482
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc CELL_VAL_TMP1785
    ldloc CELL_TMP1784
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1785
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1785
    pop
    leave TAG_DONE2_1485
    br END1787
ELSE1786:
    nop
    ldnull
END1787:
    nop
END1789:
    nop
    pop
    ldloc K21482
    stloc CELL_TMP1790
    ldloc K21482
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
    stloc CELL_VAL_TMP1791
    ldloc CELL_TMP1790
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1791
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1791
    pop
    leave TAG_LOOP2_1484
    pop
TAG_DONE2_1485:
    nop
    ldnull
    pop
    ldloc RESULT1483
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_1473:
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_FIT_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP1761, object CELL_TMP1760, object CELL_VAL_TMP1753, object CELL_TMP1752, object CELL_VAL_TMP1751, object CELL_TMP1750, object CELL_VAL_TMP1747, object CELL_TMP1746, object TEMP1745, object TEMP1744, object TEMP1743, object IDX1467, object TEMP1740, object RESULT1464, object K1463, object END1462)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END1462
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K1463
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT1464
TAG_LOOP_1465:
    nop
    ldloc END1462
    ldloc K1463
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1736
    ldnull
    br END1737
TRUE1736:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1737:
    nop
    ldnull
    ceq
    brtrue ELSE1748
    ldloc RESULT1464
    stloc CELL_TMP1746
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T1739'
    stloc CELL_VAL_TMP1747
    ldloc CELL_TMP1746
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1747
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1747
    pop
    leave TAG_DONE_1466
    br END1749
ELSE1748:
    nop
    ldnull
END1749:
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
    ldloc K1463
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
    brtrue ELSE1758
    ldarg 1
    ldloc K1463
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX1467
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX1467
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1741
    ldnull
    br END1742
TRUE1741:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1738'
END1742:
    nop
    ldnull
    ceq
    brtrue ELSE1756
    ldloc RESULT1464
    stloc CELL_TMP1750
    ldnull
    stloc CELL_VAL_TMP1751
    ldloc CELL_TMP1750
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1751
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1751
    pop
    leave TAG_DONE_1466
    br END1757
ELSE1756:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX1467
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE1754
    ldloc RESULT1464
    stloc CELL_TMP1752
    ldnull
    stloc CELL_VAL_TMP1753
    ldloc CELL_TMP1752
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1753
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1753
    pop
    leave TAG_DONE_1466
    br END1755
ELSE1754:
    nop
    ldnull
END1755:
    nop
END1757:
    nop
    br END1759
ELSE1758:
    nop
    ldnull
END1759:
    nop
    pop
    ldloc K1463
    stloc CELL_TMP1760
    ldloc K1463
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
    stloc CELL_VAL_TMP1761
    ldloc CELL_TMP1760
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP1761
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP1761
    pop
    leave TAG_LOOP_1465
    pop
TAG_DONE_1466:
    nop
    ldnull
    pop
    ldloc RESULT1464
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_1460:
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

