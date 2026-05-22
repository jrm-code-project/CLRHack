.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'HelloWorld-new' {}
.module 'HelloWorld-new.exe'

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
    .locals init (object MSG454)
    ldstr "Hello world from CLR-CALL"
    stloc MSG454
    ldloc MSG454
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

