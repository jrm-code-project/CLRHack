.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'LetRecTest' {}
.module 'LetRecTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_LETREC_'
    .field public static object 'TEST_LETREC'
    .field public static object '_CTOR'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static object 'B800'
    .field public static object 'A799'
    .field public static object 'EVEN_789'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object 'ODD_790'
    .field public static object '_CELL_VALUE'
    .field public static object 'EQ'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T828'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S827'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_LETREC_'
    ldnull
    stsfld object Program::'TEST_LETREC'
    ldnull
    stsfld object Program::'_CTOR'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'B800'
    ldnull
    stsfld object Program::'A799'
    ldnull
    stsfld object Program::'EVEN_789'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'ODD_790'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'EQ'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T828'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S827'
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
    call object Program::'TEST_LETREC'()
    pop
    tail. call object Program::'TEST_LETREC_'()
    ret
BLOCK_END_MAIN_805:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC_'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LETREC__Body'()
    ret
}

.method private static hidebysig object 'TEST_LETREC__Body'() cil managed
{
    .maxstack 8
    .locals init (object TEMP840, object TEMP839, object TEMP838, object C801, object B800, object A799)
    ldstr "Testing letrec*..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc A799
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc B800
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc C801
    ldloc A799
    ldc.i4 10
    box int32
    stloc TEMP838
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP838
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP838
    pop
    ldloc B800
    ldloc A799
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 5
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc TEMP839
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP839
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP839
    pop
    ldloc C801
    ldloc A799
    ldloc B800
    newobj instance void L_810::'.ctor'(object, object)
    stloc TEMP840
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP840
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP840
    pop
    ldstr "a:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc A799
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "b:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc B800
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "c():"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc C801
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LETREC__797:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_LETREC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LETREC_Body'()
    ret
}

.method private static hidebysig object 'TEST_LETREC_Body'() cil managed
{
    .maxstack 8
    .locals init (object TEMP834, object TEMP833, object ODD_790, object EVEN_789)
    ldstr "Testing letrec..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc EVEN_789
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc ODD_790
    ldloc EVEN_789
    ldloc ODD_790
    newobj instance void L_808::'.ctor'(object)
    stloc TEMP833
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP833
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP833
    pop
    ldloc ODD_790
    ldloc EVEN_789
    newobj instance void L_809::'.ctor'(object)
    stloc TEMP834
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP834
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP834
    pop
    ldloc EVEN_789
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldc.i4 10
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    ceq
    brtrue ELSE835
    ldstr "even? 10 is T (Correct)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END836
ELSE835:
    nop
    ldstr "even? 10 is NIL (Error)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END836:
    nop
    pop
    ldloc ODD_790
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    castclass [LispBase]Lisp.Closure
    ldc.i4 11
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldnull
    ceq
    brtrue ELSE837
    ldstr "odd? 11 is T (Correct)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE837:
    nop
    ldstr "odd? 11 is NIL (Error)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LETREC_787:
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

.class public auto ansi beforefieldinit L_808
       extends [LispBase]Lisp.Closure
{
    .field public object 'ODD_790'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_808::'ODD_790'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE825
    ldnull
    br END826
TRUE825:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S827'
END826:
    nop
    ldnull
    ceq
    brtrue ELSE829
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T828'
    ret
ELSE829:
    nop
    ldarg.0
    ldfld object L_808::'ODD_790'
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
    sub
    box int32
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
    callvirt instance object L_808::'InvokeBody'(object)
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

} // end of class L_808

.class public auto ansi beforefieldinit L_809
       extends [LispBase]Lisp.Closure
{
    .field public object 'EVEN_789'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_809::'EVEN_789'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldarg 1
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE830
    ldnull
    br END831
TRUE830:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S827'
END831:
    nop
    ldnull
    ceq
    brtrue ELSE832
    ldnull
    ret
ELSE832:
    nop
    ldarg.0
    ldfld object L_809::'EVEN_789'
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
    sub
    box int32
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
    callvirt instance object L_809::'InvokeBody'(object)
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

} // end of class L_809

.class public auto ansi beforefieldinit L_810
       extends [LispBase]Lisp.Closure
{
    .field public object 'A799'
    .field public object 'B800'

.method public hidebysig void '.ctor'(object, object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_810::'A799'
    ldarg.0
    ldarg 2
    stfld object L_810::'B800'
    ret
}

.method private hidebysig object 'InvokeBody'() cil managed
{
    .maxstack 8
    ldarg.0
    ldfld object L_810::'A799'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg.0
    ldfld object L_810::'B800'
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldarg.0
    tail.
    callvirt instance object L_810::'InvokeBody'()
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

} // end of class L_810

