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
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3014'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3007'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3014'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
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
    .locals init (object RESULT2975)
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
    stloc RESULT2975
    ldstr "Result:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RESULT2975
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_2973:
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
BLOCK_END_TRIANG_TEST_2969:
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
    .locals init (object TEMP3024, object TEMP3023, object FOUND2962, object NEXT_DEPTH2961, object J2960)
    ldarg 1
    ldc.i4 14
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3012
    ldnull
    br END3013
TRUE3012:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3013:
    nop
    ldnull
    ceq
    brtrue ELSE3034
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3014'
    ret
ELSE3034:
    nop
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_A_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3015
    ldnull
    br END3016
TRUE3015:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3016:
    nop
    ldnull
    ceq
    brtrue ELSE3027
    ldc.i4 1
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_B_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3017
    ldnull
    br END3018
TRUE3017:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3018:
    nop
    ldnull
    ceq
    brtrue ELSE3025
    ldc.i4 0
    box int32
    ldsfld object Program::'_BOARD_'
    ldsfld object Program::'_C_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3019
    ldnull
    br END3020
TRUE3019:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3020:
    nop
    br END3026
ELSE3025:
    nop
    ldnull
END3026:
    nop
    br END3028
ELSE3027:
    nop
    ldnull
END3028:
    nop
    ldnull
    ceq
    brtrue ELSE3033
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
    stloc J2960
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc NEXT_DEPTH2961
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc FOUND2962
TAG_LOOP_2963:
    nop
    ldloc J2960
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 36
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3021
    ldnull
    br END3022
TRUE3021:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3022:
    nop
    ldnull
    ceq
    brtrue ELSE3029
    leave TAG_DONE_2964
    br END3030
ELSE3029:
    nop
    ldnull
END3030:
    nop
    pop
    ldloc J2960
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldloc NEXT_DEPTH2961
    call object Program::'ATTEMPT'(object, object)
    ldnull
    ceq
    brtrue ELSE3031
    ldloc FOUND2962
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3014'
    stloc TEMP3023
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3023
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3023
    pop
    leave TAG_DONE_2964
    br END3032
ELSE3031:
    nop
    ldnull
END3032:
    nop
    pop
    ldloc J2960
    ldloc J2960
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
    stloc TEMP3024
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3024
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3024
    pop
    leave TAG_LOOP_2963
    pop
TAG_DONE_2964:
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
ELSE3033:
    nop
    ldnull
    ret
BLOCK_END_ATTEMPT_2958:
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
    brtrue TRUE3009
    ldnull
    br END3010
TRUE3009:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3010:
    nop
    ldnull
    ceq
    brtrue ELSE3011
    ldnull
    ret
ELSE3011:
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
BLOCK_END_ARRAY_TO_LIST_2952:
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
BLOCK_END_INIT_ARRAYS_2945:
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
    brtrue TRUE3005
    ldnull
    br END3006
TRUE3005:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3007'
END3006:
    nop
    ldnull
    ceq
    brtrue ELSE3008
    ldarg 1
    ret
ELSE3008:
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
BLOCK_END_LIST_TO_ARRAY_2941:
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

