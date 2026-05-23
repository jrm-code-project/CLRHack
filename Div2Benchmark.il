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
    .field public static object 'COUNT_LEN622'
    .field public static object 'COUNT621'
    .field public static object 'NULL'
    .field public static object 'LOOP_K583'
    .field public static object '_CELL_VALUE'
    .field public static object 'CONS'
    .field public static object 'L582'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object 'TEMP_B'
    .field public static object 'N579'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S659'

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
    stsfld object Program::'COUNT_LEN622'
    ldnull
    stsfld object Program::'COUNT621'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'LOOP_K583'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'CONS'
    ldnull
    stsfld object Program::'L582'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'N579'
    ldnull
    stsfld object Program::'_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
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
    .locals init (object TEMP686, object COUNT_LEN622, object COUNT621, object RES620)
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
    stloc RES620
    ldstr "Length of div2 result should be 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT621
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc COUNT_LEN622
    ldloc COUNT_LEN622
    ldloc COUNT_LEN622
    ldloc COUNT621
    newobj instance void L_627::'.ctor'(object, object)
    stloc TEMP686
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP686
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP686
    pop
    ldloc COUNT_LEN622
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldloc RES620
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    pop
    ldloc COUNT621
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Done"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_618:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_2'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'TEST_2_Body'(object)
    ret
}

.method public static hidebysig object 'TEST_2'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_2_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP683, object I613)
    ldc.i4 300
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I613
TAG_LOOP_614:
    nop
    ldloc I613
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE681
    ldnull
    br END682
TRUE681:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END682:
    nop
    ldnull
    ceq
    brtrue ELSE684
    leave TAG_DONE_615
    br END685
ELSE684:
    nop
    ldnull
END685:
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
    ldloc I613
    ldloc I613
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
    stloc TEMP683
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP683
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP683
    pop
    leave TAG_LOOP_614
    pop
TAG_DONE_615:
    nop
    ldnull
    ret
BLOCK_END_TEST_2_611:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_1'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_1'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'TEST_1_Body'(object)
    ret
}

.method public static hidebysig object 'TEST_1'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'TEST_1_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP678, object I605)
    ldc.i4 300
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I605
TAG_LOOP_606:
    nop
    ldloc I605
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE676
    ldnull
    br END677
TRUE676:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END677:
    nop
    ldnull
    ceq
    brtrue ELSE679
    leave TAG_DONE_607
    br END680
ELSE679:
    nop
    ldnull
END680:
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
    ldloc I605
    ldloc I605
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
    stloc TEMP678
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP678
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP678
    pop
    leave TAG_LOOP_606
    pop
TAG_DONE_607:
    nop
    ldnull
    ret
BLOCK_END_TEST_1_603:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'RECURSIVE_DIV2'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'RECURSIVE_DIV2_Body'(object)
    ret
}

.method public static hidebysig object 'RECURSIVE_DIV2'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'RECURSIVE_DIV2_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE673
    ldnull
    br END674
TRUE673:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END674:
    nop
    ldnull
    ceq
    brtrue ELSE675
    ldnull
    ret
ELSE675:
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
BLOCK_END_RECURSIVE_DIV2_598:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'ITERATIVE_DIV2'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'ITERATIVE_DIV2_Body'(object)
    ret
}

.method public static hidebysig object 'ITERATIVE_DIV2'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'ITERATIVE_DIV2_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP670, object TEMP669, object A592, object L_PTR591)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc L_PTR591
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A592
TAG_LOOP_593:
    nop
    ldloc L_PTR591
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE667
    ldnull
    br END668
TRUE667:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END668:
    nop
    ldnull
    ceq
    brtrue ELSE671
    leave TAG_DONE_594
    br END672
ELSE671:
    nop
    ldnull
END672:
    nop
    pop
    ldloc A592
    ldloc L_PTR591
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc A592
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TEMP669
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP669
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP669
    pop
    ldloc L_PTR591
    ldloc L_PTR591
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    stloc TEMP670
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP670
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP670
    pop
    leave TAG_LOOP_593
    pop
TAG_DONE_594:
    nop
    ldnull
    pop
    ldloc A592
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_ITERATIVE_DIV2_589:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'CREATE_N'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'CREATE_N'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'CREATE_N_Body'(object)
    ret
}

.method public static hidebysig object 'CREATE_N'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method private static hidebysig object 'CREATE_N_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP666, object LOOP_K583, object L582)
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc L582
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc LOOP_K583
    ldloc LOOP_K583
    ldarg 0
    ldloc LOOP_K583
    ldloc L582
    newobj instance void L_626::'.ctor'(object, object, object)
    stloc TEMP666
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP666
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP666
    pop
    ldloc LOOP_K583
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldc.i4 0
    box int32
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_CREATE_N_580:
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

.class public auto ansi beforefieldinit L_626
       extends [LispBase]Lisp.Closure
{
    .field public object 'N579'
    .field public object 'LOOP_K583'
    .field public object 'L582'

.method public hidebysig void '.ctor'(object, object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_626::'N579'
    ldarg.0
    ldarg 2
    stfld object L_626::'LOOP_K583'
    ldarg.0
    ldarg 3
    stfld object L_626::'L582'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP660)
    ldarg 1
    ldarg.0
    ldfld object L_626::'N579'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE657
    ldnull
    br END658
TRUE657:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END658:
    nop
    ldnull
    ceq
    brtrue ELSE661
    ldarg.0
    ldfld object L_626::'L582'
    ldnull
    ldarg.0
    ldfld object L_626::'L582'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc TEMP660
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP660
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP660
    pop
    ldarg.0
    ldfld object L_626::'LOOP_K583'
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
ELSE661:
    nop
    ldarg.0
    ldfld object L_626::'L582'
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
    callvirt instance object L_626::'InvokeBody'(object)
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

} // end of class L_626

.class public auto ansi beforefieldinit L_627
       extends [LispBase]Lisp.Closure
{
    .field public object 'COUNT_LEN622'
    .field public object 'COUNT621'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_627::'COUNT_LEN622'
    ldarg.0
    ldarg 2
    stfld object L_627::'COUNT621'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object TEMP664)
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE662
    ldnull
    br END663
TRUE662:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S659'
END663:
    nop
    ldnull
    ceq
    brtrue ELSE665
    ldnull
    ret
ELSE665:
    nop
    ldarg.0
    ldfld object L_627::'COUNT621'
    ldarg.0
    ldfld object L_627::'COUNT621'
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
    stloc TEMP664
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP664
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP664
    pop
    ldarg.0
    ldfld object L_627::'COUNT_LEN622'
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
    callvirt instance object L_627::'InvokeBody'(object)
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

} // end of class L_627

