.assembly extern mscorlib {}
.assembly extern LispBase {}
.assembly extern SeparateModuleA {}

.assembly 'ShouldNotLink' {}
.module 'ShouldNotLink.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object [SeparateModuleA]Program::'InitializeModule'()
    pop
    ret
}

} // end of class Program

