.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'test-hello' {}
.module 'test-hello.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object MSG126)
    ldstr "Hello world from CLR-CALL"
    stloc MSG126
    ldloc MSG126
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

