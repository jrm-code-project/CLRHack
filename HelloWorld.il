.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HelloWorld' {}
.module 'HelloWorld.exe'

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
    .locals init (object MSG739)
    ldstr "Hello world from CLR-CALL"
    stloc MSG739
    ldloc MSG739
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

