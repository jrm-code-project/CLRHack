.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'bank-test' {}
.module 'bank-test.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TOTAL_ACCOUNTS453'
    .field public static object 'RESERVE452'
    .field public static object 'TEMP_B'
    .field public static object 'BALANCE458'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S545'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S540'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S537'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S516'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S513'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S510'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TOTAL_ACCOUNTS453'
    ldnull
    stsfld object Program::'RESERVE452'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'BALANCE458'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-ACCOUNTS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S545'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-RESERVE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S540'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CREATE-ACCOUNT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S537'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WITHDRAW"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S516'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S513'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "DEPOSIT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S510'
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
    .locals init (object BOB470, object ALICE469, object CREATE_ACC468, object BANK467)
    ldc.i4 1000
    box int32
    call object Program::'MAKE_BANK'(object)
    stloc BANK467
    ldloc BANK467
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S537'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CREATE_ACC468
    ldloc CREATE_ACC468
    castclass [LispBase]Lisp.Closure
    ldc.i4 500
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ALICE469
    ldloc CREATE_ACC468
    castclass [LispBase]Lisp.Closure
    ldc.i4 200
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc BOB470
    ldstr "Initial Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK467
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S540'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Alice deposits 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ALICE469
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S510'
    ldc.i4 100
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Bob withdraws 50:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BOB470
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S516'
    ldc.i4 50
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Total accounts:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK467
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S545'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Final Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK467
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S540'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
BLOCK_END_MAIN_465:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'MAKE_BANK_Body'(object)
    ret
}

.method public static hidebysig object 'MAKE_BANK'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'MAKE_BANK_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TOTAL_ACCOUNTS453, object RESERVE452)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESERVE452
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TOTAL_ACCOUNTS453
    ldloc RESERVE452
    ldloc TOTAL_ACCOUNTS453
    newobj instance void L_474::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_BANK_450:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_472
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE452'
    .field public object 'BALANCE458'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_472::'RESERVE452'
    ldarg.0
    ldarg 2
    stfld object L_472::'BALANCE458'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP528, object CELL_TMP527, object CELL_VAL_TMP526, object CELL_TMP525, object CELL_VAL_TMP524, object CELL_TMP523, object CELL_VAL_TMP522, object CELL_TMP521, object TEMP520, object TEMP519, object TEMP515, object TEMP514)
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S510'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE511
    ldnull
    br END512
TRUE511:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S513'
END512:
    nop
    ldnull
    ceq
    brtrue ELSE530
    ldarg.0
    ldfld object L_472::'BALANCE458'
    stloc CELL_TMP521
    ldarg.0
    ldfld object L_472::'BALANCE458'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP522
    ldloc CELL_TMP521
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP522
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP522
    pop
    ldarg.0
    ldfld object L_472::'RESERVE452'
    stloc CELL_TMP523
    ldarg.0
    ldfld object L_472::'RESERVE452'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP524
    ldloc CELL_TMP523
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP524
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP524
    pop
    ldarg.0
    ldfld object L_472::'BALANCE458'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE530:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S516'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE517
    ldnull
    br END518
TRUE517:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S513'
END518:
    nop
    ldnull
    ceq
    brtrue ELSE529
    ldarg.0
    ldfld object L_472::'BALANCE458'
    stloc CELL_TMP525
    ldarg.0
    ldfld object L_472::'BALANCE458'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc CELL_VAL_TMP526
    ldloc CELL_TMP525
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP526
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP526
    pop
    ldarg.0
    ldfld object L_472::'RESERVE452'
    stloc CELL_TMP527
    ldarg.0
    ldfld object L_472::'RESERVE452'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc CELL_VAL_TMP528
    ldloc CELL_TMP527
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP528
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP528
    pop
    ldarg.0
    ldfld object L_472::'BALANCE458'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE529:
    nop
    ldarg.0
    ldfld object L_472::'BALANCE458'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_472::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_472

.class public auto ansi beforefieldinit L_473
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE452'
    .field public object 'TOTAL_ACCOUNTS453'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_473::'RESERVE452'
    ldarg.0
    ldarg 2
    stfld object L_473::'TOTAL_ACCOUNTS453'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP536, object CELL_TMP535, object CELL_VAL_TMP534, object CELL_TMP533, object BALANCE458, object TEMP532, object TEMP531)
    ldarg.0
    ldfld object L_473::'RESERVE452'
    stloc CELL_TMP533
    ldarg.0
    ldfld object L_473::'RESERVE452'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP534
    ldloc CELL_TMP533
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP534
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP534
    pop
    ldarg.0
    ldfld object L_473::'TOTAL_ACCOUNTS453'
    stloc CELL_TMP535
    ldarg.0
    ldfld object L_473::'TOTAL_ACCOUNTS453'
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
    stloc CELL_VAL_TMP536
    ldloc CELL_TMP535
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP536
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP536
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc BALANCE458
    ldarg.0
    ldfld object L_473::'RESERVE452'
    ldloc BALANCE458
    newobj instance void L_472::'.ctor'(object, object)
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_473::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_473

.class public auto ansi beforefieldinit L_474
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE452'
    .field public object 'TOTAL_ACCOUNTS453'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_474::'RESERVE452'
    ldarg.0
    ldarg 2
    stfld object L_474::'TOTAL_ACCOUNTS453'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S537'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE538
    ldnull
    br END539
TRUE538:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S513'
END539:
    nop
    ldnull
    ceq
    brtrue ELSE544
    ldarg.0
    ldfld object L_474::'RESERVE452'
    ldarg.0
    ldfld object L_474::'TOTAL_ACCOUNTS453'
    newobj instance void L_473::'.ctor'(object, object)
    ret
ELSE544:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S540'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE541
    ldnull
    br END542
TRUE541:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S513'
END542:
    nop
    ldnull
    ceq
    brtrue ELSE543
    ldarg.0
    ldfld object L_474::'RESERVE452'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE543:
    nop
    ldarg.0
    ldfld object L_474::'TOTAL_ACCOUNTS453'
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
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_474::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_474

