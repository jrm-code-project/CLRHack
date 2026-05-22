.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'TakBenchmark' {}
.module 'TakBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'PRINT'
    .field public static object 'TAK'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static object 'NOT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1682'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'TAK'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    ldnull
    stsfld object Program::'NOT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1682'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    ldc.i4 18
    box int32
    ldc.i4 12
    box int32
    ldc.i4 6
    box int32
    call object Program::'TAK'(object, object, object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_1672:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TAK'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldarg 0
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE1680
    ldnull
    br END1681
TRUE1680:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1682'
END1681:
    nop
    ldnull
    ceq
    brtrue TRUE1683
    ldnull
    br END1684
TRUE1683:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1682'
END1684:
    nop
    ldnull
    ceq
    brtrue ELSE1685
    ldarg 2
    ret
ELSE1685:
    nop
    ldarg 0
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    ldarg 1
    ldarg 2
    call object Program::'TAK'(object, object, object)
    ldarg 1
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    ldarg 2
    ldarg 0
    call object Program::'TAK'(object, object, object)
    ldarg 2
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    ldarg 0
    ldarg 1
    call object Program::'TAK'(object, object, object)
    tail. call object Program::'TAK'(object, object, object)
    ret
BLOCK_END_TAK_1668:
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

