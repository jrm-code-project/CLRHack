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
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1764'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object RESULT1732)
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
    stloc RESULT1732
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT1732
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_1730:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TRIANG_TEST'(object, object) cil managed
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
BLOCK_END_TRIANG_TEST_1726:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ATTEMPT'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP1780, object TEMP1779, object FOUND1719, object NEXT_DEPTH1718, object J1717)
    ldarg 1
    ldc.i4 14
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1769
    ldnull
    br END1770
TRUE1769:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1770:
    nop
    ldnull
    ceq
    brtrue ELSE1790
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
    ret
ELSE1790:
    nop
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1771
    ldnull
    br END1772
TRUE1771:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1772:
    nop
    ldnull
    ceq
    brtrue ELSE1783
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1773
    ldnull
    br END1774
TRUE1773:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1774:
    nop
    ldnull
    ceq
    brtrue ELSE1781
    ldc.i4 0
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1775
    ldnull
    br END1776
TRUE1775:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1776:
    nop
    br END1782
ELSE1781:
    nop
    ldnull
END1782:
    nop
    br END1784
ELSE1783:
    nop
    ldnull
END1784:
    nop
    ldnull
    ceq
    brtrue ELSE1789
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
    stloc J1717
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc NEXT_DEPTH1718
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc FOUND1719
TAG_LOOP_1720:
    nop
    ldloc J1717
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 36
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1777
    ldnull
    br END1778
TRUE1777:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1778:
    nop
    ldnull
    ceq
    brtrue ELSE1785
    leave TAG_DONE_1721
    br END1786
ELSE1785:
    nop
    ldnull
END1786:
    nop
    pop
    ldloc J1717
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldloc NEXT_DEPTH1718
    call object Program::'ATTEMPT'(object, object)
    ldnull
    ceq
    brtrue ELSE1787
    ldloc FOUND1719
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
    stloc TEMP1779
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1779
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1779
    pop
    leave TAG_DONE_1721
    br END1788
ELSE1787:
    nop
    ldnull
END1788:
    nop
    pop
    ldloc J1717
    ldloc J1717
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
    stloc TEMP1780
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP1780
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP1780
    pop
    leave TAG_LOOP_1720
    pop
TAG_DONE_1721:
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
ELSE1789:
    nop
    ldnull
    ret
BLOCK_END_ATTEMPT_1715:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ARRAY_TO_LIST'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldarg 2
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1766
    ldnull
    br END1767
TRUE1766:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1767:
    nop
    ldnull
    ceq
    brtrue ELSE1768
    ldnull
    ret
ELSE1768:
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
BLOCK_END_ARRAY_TO_LIST_1709:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'INIT_ARRAYS'() cil managed
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
BLOCK_END_INIT_ARRAYS_1702:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'LIST_TO_ARRAY'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1762
    ldnull
    br END1763
TRUE1762:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1764'
END1763:
    nop
    ldnull
    ceq
    brtrue ELSE1765
    ldarg 1
    ret
ELSE1765:
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
BLOCK_END_LIST_TO_ARRAY_1698:
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

