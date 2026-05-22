.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'InteropTest' {}
.module 'InteropTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'PRINT'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'PRINT'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object LIST750, object CLR_VIRT_INST_TEMP, object SYM749)
    ldstr "FOO"
    ldnull
    newobj instance void [LispBase]Lisp.Symbol::'.ctor'(string, class [LispBase]Lisp.Package)
    stloc SYM749
    ldloc SYM749
    castclass [LispBase]Lisp.Symbol
    callvirt instance string [LispBase]Lisp.Symbol::'get_Name'()
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "head"
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc LIST750
    ldloc LIST750
    ldfld object [LispBase]Lisp.List/ListCell::'first'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

