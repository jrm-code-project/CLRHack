.assembly extern mscorlib {}
.assembly extern LispBase {}
.assembly extern SeparateModuleA {}

.assembly 'SeparateModuleB' {}
.module 'SeparateModuleB.dll'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    ldc.i4 40
    box int32
    call object [SeparateModuleA]Program::'ADD2'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
}

} // end of class Program

