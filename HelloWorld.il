.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HelloWorld' {}
.module 'HelloWorld.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object MSG1907)
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    ldstr "Hello world from CLR-CALL"
    stloc MSG1907
    ldloc MSG1907
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Hello from PRINT"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ret
}

} // end of class Program

