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
    .field public static object 'TOTAL_ACCOUNTS161'
    .field public static object 'RESERVE160'
    .field public static object 'TEMP_B'
    .field public static object '_CELL_VALUE'
    .field public static object '_'
    .field public static object 'BALANCE166'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_INTERN'
    .field public static object 'EQ'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G229'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G224'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G221'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G212'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G209'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G206'

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
    stsfld object Program::'TOTAL_ACCOUNTS161'
    ldnull
    stsfld object Program::'RESERVE160'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'BALANCE166'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'EQ'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-ACCOUNTS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G229'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "GET-RESERVE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G224'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "CREATE-ACCOUNT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G221'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WITHDRAW"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G212'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G209'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "DEPOSIT"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G206'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object BOB177, object ALICE176, object CREATE_ACC175, object BANK174)
    ldc.i4 1000
    box int32
    call object Program::'MAKE_BANK'(object)
    stloc BANK174
    ldloc BANK174
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G221'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc CREATE_ACC175
    ldloc CREATE_ACC175
    castclass [LispBase]Lisp.Closure
    ldc.i4 500
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ALICE176
    ldloc CREATE_ACC175
    castclass [LispBase]Lisp.Closure
    ldc.i4 200
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc BOB177
    ldstr "Initial Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK174
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G224'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Alice deposits 100:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc ALICE176
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G206'
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
    ldloc BOB177
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G212'
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
    ldloc BANK174
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G229'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Final Reserve:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc BANK174
    castclass [LispBase]Lisp.Closure
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G224'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    ret
BLOCK_END_MAIN_172:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_BANK'(object) cil managed
{
    .maxstack 8
    .locals init (object TOTAL_ACCOUNTS161, object RESERVE160)
    ldarg 0
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESERVE160
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc TOTAL_ACCOUNTS161
    ldloc RESERVE160
    ldloc TOTAL_ACCOUNTS161
    newobj instance void L_181::'.ctor'(object, object)
    ret
BLOCK_END_MAKE_BANK_158:
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

.class public auto ansi beforefieldinit L_179
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE160'
    .field public object 'BALANCE166'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_179::'RESERVE160'
    ldarg.0
    ldarg 2
    stfld object L_179::'BALANCE166'
    ret
}

.method private hidebysig object 'InvokeBody'(object, object) cil managed
{
    .maxstack 8
    .locals init (object TEMP216, object TEMP215, object TEMP211, object TEMP210)
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G206'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE207
    ldnull
    br END208
TRUE207:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G209'
END208:
    nop
    ldnull
    ceq
    brtrue ELSE218
    ldarg.0
    ldfld object L_179::'BALANCE166'
    ldarg.0
    ldfld object L_179::'BALANCE166'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP210
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP210
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP210
    pop
    ldarg.0
    ldfld object L_179::'RESERVE160'
    ldarg.0
    ldfld object L_179::'RESERVE160'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP211
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP211
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP211
    pop
    ldarg.0
    ldfld object L_179::'BALANCE166'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE218:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G212'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE213
    ldnull
    br END214
TRUE213:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G209'
END214:
    nop
    ldnull
    ceq
    brtrue ELSE217
    ldarg.0
    ldfld object L_179::'BALANCE166'
    ldarg.0
    ldfld object L_179::'BALANCE166'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP215
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP215
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP215
    pop
    ldarg.0
    ldfld object L_179::'RESERVE160'
    ldarg.0
    ldfld object L_179::'RESERVE160'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 2
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    stloc TEMP216
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP216
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP216
    pop
    ldarg.0
    ldfld object L_179::'BALANCE166'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE217:
    nop
    ldarg.0
    ldfld object L_179::'BALANCE166'
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
    callvirt instance object L_179::'InvokeBody'(object, object)
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

} // end of class L_179

.class public auto ansi beforefieldinit L_180
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE160'
    .field public object 'TOTAL_ACCOUNTS161'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_180::'RESERVE160'
    ldarg.0
    ldarg 2
    stfld object L_180::'TOTAL_ACCOUNTS161'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    .locals init (object BALANCE166, object TEMP220, object TEMP219)
    ldarg.0
    ldfld object L_180::'RESERVE160'
    ldarg.0
    ldfld object L_180::'RESERVE160'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 1
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP219
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP219
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP219
    pop
    ldarg.0
    ldfld object L_180::'TOTAL_ACCOUNTS161'
    ldarg.0
    ldfld object L_180::'TOTAL_ACCOUNTS161'
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
    stloc TEMP220
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP220
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP220
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc BALANCE166
    ldarg.0
    ldfld object L_180::'RESERVE160'
    ldloc BALANCE166
    newobj instance void L_179::'.ctor'(object, object)
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
    callvirt instance object L_180::'InvokeBody'(object)
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

} // end of class L_180

.class public auto ansi beforefieldinit L_181
       extends [LispBase]Lisp.Closure
{
    .field public object 'RESERVE160'
    .field public object 'TOTAL_ACCOUNTS161'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_181::'RESERVE160'
    ldarg.0
    ldarg 2
    stfld object L_181::'TOTAL_ACCOUNTS161'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G221'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE222
    ldnull
    br END223
TRUE222:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G209'
END223:
    nop
    ldnull
    ceq
    brtrue ELSE228
    ldarg.0
    ldfld object L_181::'RESERVE160'
    ldarg.0
    ldfld object L_181::'TOTAL_ACCOUNTS161'
    newobj instance void L_180::'.ctor'(object, object)
    ret
ELSE228:
    nop
    ldarg 1
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G224'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE225
    ldnull
    br END226
TRUE225:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G209'
END226:
    nop
    ldnull
    ceq
    brtrue ELSE227
    ldarg.0
    ldfld object L_181::'RESERVE160'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
ELSE227:
    nop
    ldarg.0
    ldfld object L_181::'TOTAL_ACCOUNTS161'
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
    callvirt instance object L_181::'InvokeBody'(object)
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

} // end of class L_181

