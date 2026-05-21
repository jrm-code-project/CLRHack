.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'FibBenchmark' {}
.module 'FibBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'PRINT'
    .field public static object 'FIB'
    .field public static object 'TEMP_B'
    .field public static object '_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G574'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'FIB'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G574'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    ldstr "Fibonacci of 10:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldc.i4 10
    box int32
    call object Program::'FIB'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_566:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'FIB'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE572
    ldnull
    br END573
TRUE572:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G574'
END573:
    nop
    ldnull
    ceq
    brtrue ELSE575
    ldarg 0
    ret
ELSE575:
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
    call object Program::'FIB'(object)
    ldarg 0
    ldc.i4 2
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    call object Program::'FIB'(object)
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ret
BLOCK_END_FIB_562:
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

