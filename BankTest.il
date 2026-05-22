.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'BankTest' {}
.module 'BankTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'PRINT'
    .field public static object 'MAKE_BANK'
    .field public static object '_CTOR'
    .field public static object '_MAKE_CELL'
    .field public static object 'TOTAL_ACCOUNTS157'
    .field public static object 'RESERVE156'
    .field public static object 'TEMP_B'
    .field public static object '_CELL_VALUE'
    .field public static object '_'
    .field public static object 'BALANCE162'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_INTERN'
    .field public static object 'EQ'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G225'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G220'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G217'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G208'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S205'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G202'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'MAKE_BANK'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'TOTAL_ACCOUNTS157'
    ldnull
    stsfld object Program::'RESERVE156'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'BALANCE162'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'EQ'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-ACCOUNTS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G225'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-RESERVE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G220'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CREATE-ACCOUNT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G217'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WITHDRAW"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G208'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S205'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "DEPOSIT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G202'
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
    .locals init (object BOB173, object ALICE172, object CREATE_ACC171, object BANK170)
    ldc.i4 1000
    box int32
    call object Program::'MAKE_BANK'(object)
    stloc BANK170
    ldloc BANK170
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G217'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CREATE_ACC171
    ldloc CREATE_ACC171
    castclass [LispBase]Lisp.Closure
    ldc.i4 500
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ALICE172
    ldloc CREATE_ACC171
    castclass [LispBase]Lisp.Closure
    ldc.i4 200
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc BOB173
    ldstr "Initial Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK170
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G220'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Alice deposits 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ALICE172
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G202'
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
    ldloc BOB173
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G208'
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
    ldloc BANK170
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G225'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Final Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK170
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G220'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
BLOCK_END_MAIN_168:
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
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAKE_BANK'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    throw
}

.method private static hidebysig object 'MAKE_BANK_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object TOTAL_ACCOUNTS157, object RESERVE156)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESERVE156
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TOTAL_ACCOUNTS157
    ldloc RESERVE156
    ldloc TOTAL_ACCOUNTS157
    newobj instance void L_177::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_BANK_154:
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

.class public auto ansi beforefieldinit L_175
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE156'
    .field public object 'BALANCE162'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_175::'RESERVE156'
    ldarg.0
    ldarg 2
    stfld object L_175::'BALANCE162'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP212, object TEMP211, object TEMP207, object TEMP206)
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G202'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE203
    ldnull
    br END204
TRUE203:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S205'
END204:
    nop
    ldnull
    ceq
    brtrue ELSE214
    ldarg.0
    ldfld object L_175::'BALANCE162'
    ldarg.0
    ldfld object L_175::'BALANCE162'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP206
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP206
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP206
    pop
    ldarg.0
    ldfld object L_175::'RESERVE156'
    ldarg.0
    ldfld object L_175::'RESERVE156'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP207
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP207
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP207
    pop
    ldarg.0
    ldfld object L_175::'BALANCE162'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE214:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G208'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE209
    ldnull
    br END210
TRUE209:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S205'
END210:
    nop
    ldnull
    ceq
    brtrue ELSE213
    ldarg.0
    ldfld object L_175::'BALANCE162'
    ldarg.0
    ldfld object L_175::'BALANCE162'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP211
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP211
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP211
    pop
    ldarg.0
    ldfld object L_175::'RESERVE156'
    ldarg.0
    ldfld object L_175::'RESERVE156'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP212
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP212
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP212
    pop
    ldarg.0
    ldfld object L_175::'BALANCE162'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE213:
    nop
    ldarg.0
    ldfld object L_175::'BALANCE162'
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
    throw
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    ldarg 2
    tail.
    callvirt instance object L_175::'InvokeBody'(object, object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_175

.class public auto ansi beforefieldinit L_176
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE156'
    .field public object 'TOTAL_ACCOUNTS157'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_176::'RESERVE156'
    ldarg.0
    ldarg 2
    stfld object L_176::'TOTAL_ACCOUNTS157'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object BALANCE162, object TEMP216, object TEMP215)
    ldarg.0
    ldfld object L_176::'RESERVE156'
    ldarg.0
    ldfld object L_176::'RESERVE156'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP215
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP215
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP215
    pop
    ldarg.0
    ldfld object L_176::'TOTAL_ACCOUNTS157'
    ldarg.0
    ldfld object L_176::'TOTAL_ACCOUNTS157'
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
    stloc TEMP216
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP216
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP216
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc BALANCE162
    ldarg.0
    ldfld object L_176::'RESERVE156'
    ldloc BALANCE162
    newobj instance void L_175::'.ctor'(object, object)
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
    callvirt instance object L_176::'InvokeBody'(object)
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

} // end of class L_176

.class public auto ansi beforefieldinit L_177
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE156'
    .field public object 'TOTAL_ACCOUNTS157'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_177::'RESERVE156'
    ldarg.0
    ldarg 2
    stfld object L_177::'TOTAL_ACCOUNTS157'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G217'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE218
    ldnull
    br END219
TRUE218:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S205'
END219:
    nop
    ldnull
    ceq
    brtrue ELSE224
    ldarg.0
    ldfld object L_177::'RESERVE156'
    ldarg.0
    ldfld object L_177::'TOTAL_ACCOUNTS157'
    newobj instance void L_176::'.ctor'(object, object)
    ret
ELSE224:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G220'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE221
    ldnull
    br END222
TRUE221:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S205'
END222:
    nop
    ldnull
    ceq
    brtrue ELSE223
    ldarg.0
    ldfld object L_177::'RESERVE156'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE223:
    nop
    ldarg.0
    ldfld object L_177::'TOTAL_ACCOUNTS157'
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
    callvirt instance object L_177::'InvokeBody'(object)
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

} // end of class L_177

