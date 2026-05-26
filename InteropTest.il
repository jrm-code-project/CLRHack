.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'InteropTest' {}
.module 'InteropTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object LIST2009, object CLR_VIRT_INST_TEMP, object SYM2008)
    ldstr "FOO"
    ldnull
    newobj instance void [LispBase]Lisp.Symbol::'.ctor'(string, class [LispBase]Lisp.Package)
    stloc SYM2008
    ldloc SYM2008
    castclass [LispBase]Lisp.Symbol
    callvirt instance string [LispBase]Lisp.Symbol::'get_Name'()
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "head"
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    stloc LIST2009
    ldloc LIST2009
    ldfld object [LispBase]Lisp.List/ListCell::'first'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'InitializeModule'()
    pop
    ret
}

} // end of class Program

