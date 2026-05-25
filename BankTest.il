.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'BankTest' {}
.module 'BankTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'TOTAL_ACCOUNTS472'
    .field public static object 'RESERVE471'
    .field public static object 'TEMP_B'
    .field public static object 'BALANCE477'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S597'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S592'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S589'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S568'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S565'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S562'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'TOTAL_ACCOUNTS472'
    ldnull
    stsfld object Program::'RESERVE471'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'BALANCE477'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-ACCOUNTS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S597'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-RESERVE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S592'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CREATE-ACCOUNT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S589'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WITHDRAW"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S568'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S565'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "DEPOSIT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S562'
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
    .locals init (object FN_TMP626, object FN_TMP622, object FN_TMP618, object FN_TMP614, object FN_TMP610, object FN_TMP606, object FN_TMP602, object FN_TMP598, object BOB489, object ALICE488, object CREATE_ACC487, object BANK486)
    ldc.i4 1000
    box int32
    call object Program::'MAKE_BANK'(object)
    stloc BANK486
    ldloc BANK486
    stloc FN_TMP598
    ldloc FN_TMP598
    brtrue FN_NULL599
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP598
FN_NULL599:
    nop
    ldloc FN_TMP598
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK600
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK600:
    nop
FN_AFTER601:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S589'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CREATE_ACC487
    ldloc CREATE_ACC487
    stloc FN_TMP602
    ldloc FN_TMP602
    brtrue FN_NULL603
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP602
FN_NULL603:
    nop
    ldloc FN_TMP602
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK604
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK604:
    nop
FN_AFTER605:
    nop
    ldc.i4 500
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ALICE488
    ldloc CREATE_ACC487
    stloc FN_TMP606
    ldloc FN_TMP606
    brtrue FN_NULL607
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP606
FN_NULL607:
    nop
    ldloc FN_TMP606
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK608
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK608:
    nop
FN_AFTER609:
    nop
    ldc.i4 200
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc BOB489
    ldstr "Initial Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK486
    stloc FN_TMP610
    ldloc FN_TMP610
    brtrue FN_NULL611
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP610
FN_NULL611:
    nop
    ldloc FN_TMP610
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK612
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK612:
    nop
FN_AFTER613:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S592'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Alice deposits 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ALICE488
    stloc FN_TMP614
    ldloc FN_TMP614
    brtrue FN_NULL615
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP614
FN_NULL615:
    nop
    ldloc FN_TMP614
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK616
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK616:
    nop
FN_AFTER617:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S562'
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
    ldloc BOB489
    stloc FN_TMP618
    ldloc FN_TMP618
    brtrue FN_NULL619
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP618
FN_NULL619:
    nop
    ldloc FN_TMP618
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK620
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK620:
    nop
FN_AFTER621:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S568'
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
    ldloc BANK486
    stloc FN_TMP622
    ldloc FN_TMP622
    brtrue FN_NULL623
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP622
FN_NULL623:
    nop
    ldloc FN_TMP622
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK624
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK624:
    nop
FN_AFTER625:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S597'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Final Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK486
    stloc FN_TMP626
    ldloc FN_TMP626
    brtrue FN_NULL627
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP626
FN_NULL627:
    nop
    ldloc FN_TMP626
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK628
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK628:
    nop
FN_AFTER629:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S592'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
BLOCK_END_MAIN_484:
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
    .locals init (object TOTAL_ACCOUNTS472, object RESERVE471)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESERVE471
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TOTAL_ACCOUNTS472
    ldloc RESERVE471
    ldloc TOTAL_ACCOUNTS472
    newobj instance void L_493::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_BANK_469:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

.class public auto ansi beforefieldinit L_491
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE471'
    .field public object 'BALANCE477'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_491::'RESERVE471'
    ldarg.0
    ldarg 2
    stfld object L_491::'BALANCE477'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP580, object CELL_TMP579, object CELL_VAL_TMP578, object CELL_TMP577, object CELL_VAL_TMP576, object CELL_TMP575, object CELL_VAL_TMP574, object CELL_TMP573, object TEMP572, object TEMP571, object TEMP567, object TEMP566)
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S562'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE563
    ldnull
    br END564
TRUE563:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S565'
END564:
    nop
    ldnull
    ceq
    brtrue ELSE582
    ldarg.0
    ldfld object L_491::'BALANCE477'
    stloc CELL_TMP573
    ldarg.0
    ldfld object L_491::'BALANCE477'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP574
    ldloc CELL_TMP573
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP574
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP574
    pop
    ldarg.0
    ldfld object L_491::'RESERVE471'
    stloc CELL_TMP575
    ldarg.0
    ldfld object L_491::'RESERVE471'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP576
    ldloc CELL_TMP575
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP576
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP576
    pop
    ldarg.0
    ldfld object L_491::'BALANCE477'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE582:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S568'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE569
    ldnull
    br END570
TRUE569:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S565'
END570:
    nop
    ldnull
    ceq
    brtrue ELSE581
    ldarg.0
    ldfld object L_491::'BALANCE477'
    stloc CELL_TMP577
    ldarg.0
    ldfld object L_491::'BALANCE477'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc CELL_VAL_TMP578
    ldloc CELL_TMP577
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP578
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP578
    pop
    ldarg.0
    ldfld object L_491::'RESERVE471'
    stloc CELL_TMP579
    ldarg.0
    ldfld object L_491::'RESERVE471'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc CELL_VAL_TMP580
    ldloc CELL_TMP579
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP580
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP580
    pop
    ldarg.0
    ldfld object L_491::'BALANCE477'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE581:
    nop
    ldarg.0
    ldfld object L_491::'BALANCE477'
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
    callvirt instance object L_491::'InvokeBody'(object, object)
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

} // end of class L_491

.class public auto ansi beforefieldinit L_492
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE471'
    .field public object 'TOTAL_ACCOUNTS472'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_492::'RESERVE471'
    ldarg.0
    ldarg 2
    stfld object L_492::'TOTAL_ACCOUNTS472'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP588, object CELL_TMP587, object CELL_VAL_TMP586, object CELL_TMP585, object BALANCE477, object TEMP584, object TEMP583)
    ldarg.0
    ldfld object L_492::'RESERVE471'
    stloc CELL_TMP585
    ldarg.0
    ldfld object L_492::'RESERVE471'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP586
    ldloc CELL_TMP585
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP586
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP586
    pop
    ldarg.0
    ldfld object L_492::'TOTAL_ACCOUNTS472'
    stloc CELL_TMP587
    ldarg.0
    ldfld object L_492::'TOTAL_ACCOUNTS472'
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
    stloc CELL_VAL_TMP588
    ldloc CELL_TMP587
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP588
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP588
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc BALANCE477
    ldarg.0
    ldfld object L_492::'RESERVE471'
    ldloc BALANCE477
    newobj instance void L_491::'.ctor'(object, object)
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
    callvirt instance object L_492::'InvokeBody'(object)
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

} // end of class L_492

.class public auto ansi beforefieldinit L_493
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE471'
    .field public object 'TOTAL_ACCOUNTS472'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_493::'RESERVE471'
    ldarg.0
    ldarg 2
    stfld object L_493::'TOTAL_ACCOUNTS472'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S589'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE590
    ldnull
    br END591
TRUE590:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S565'
END591:
    nop
    ldnull
    ceq
    brtrue ELSE596
    ldarg.0
    ldfld object L_493::'RESERVE471'
    ldarg.0
    ldfld object L_493::'TOTAL_ACCOUNTS472'
    newobj instance void L_492::'.ctor'(object, object)
    ret
ELSE596:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S592'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE593
    ldnull
    br END594
TRUE593:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S565'
END594:
    nop
    ldnull
    ceq
    brtrue ELSE595
    ldarg.0
    ldfld object L_493::'RESERVE471'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE595:
    nop
    ldarg.0
    ldfld object L_493::'TOTAL_ACCOUNTS472'
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
    callvirt instance object L_493::'InvokeBody'(object)
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

} // end of class L_493

