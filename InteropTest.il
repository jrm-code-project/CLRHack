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
    .locals init (object LIST614, object CLR_VIRT_INST_TEMP, object SYM613)
    ldstr "FOO"
    ldnull
    newobj instance void [LispBase]Lisp.Symbol::'.ctor'(string, class [LispBase]Lisp.Package)
    stloc SYM613
    ldloc SYM613
    castclass [LispBase]Lisp.Symbol
    callvirt instance string [LispBase]Lisp.Symbol::'get_Name'()
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "head"
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc LIST614
    ldloc LIST614
    ldfld object [LispBase]Lisp.List/ListCell::'first'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

