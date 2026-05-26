.assembly extern mscorlib {}
.assembly extern LispBase {}
.assembly extern SeparateModuleA {}

.assembly 'SeparateModuleB' {}
.module 'SeparateModuleB.dll'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'ADD2'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'ADD2'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP8647, object FN_TMP8643)
    ldstr "SEPARATE-MODULE-A"
    ldstr "ADD2"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'ADD2'
    ldsfld object Program::'ADD2'
    stloc FN_TMP8643
    ldloc FN_TMP8643
    brtrue FN_NULL8644
    ldstr "Undefined function: ADD2"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP8643
FN_NULL8644:
    nop
    ldloc FN_TMP8643
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP8643
    ldloc FN_TMP8643
    brtrue FN_TYPE_OK8645
    ldstr "Attempted to call non-function object in ADD2"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP8643
FN_TYPE_OK8645:
    nop
FN_AFTER8646:
    nop
    ldc.i4 40
    box int32
    stloc ARG_TMP8647
    ldloc FN_TMP8643
    ldloc ARG_TMP8647
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
}

} // end of class Program

