.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HelloWorld' {}
.module 'HelloWorld.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object MSG1940)
    ldstr "Hello world from CLR-CALL"
    stloc MSG1940
    ldloc MSG1940
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Hello from PRINT"
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

