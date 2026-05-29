.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S9125'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T9121'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S9125'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T9121'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'MAIN_Body'()
    ret
}

.method private static hidebysig object 'MAIN_Body'() cil managed
{
    .maxstack 8
    call object Program::'TEST_UWP_BASIC'()
    pop
    tail. call object Program::'TEST_UWP_NESTED_GO'()
    ret
BLOCK_END_MAIN_8846:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_NESTED_GO_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_NESTED_GO_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP9128, object CELL_TMP9127, object TEMP9122, object UWP_V639120, object UWP_V629119, object UWP_V619118, object UWP_V609117, object UWP_V599116, object UWP_V589115, object UWP_V579114, object UWP_V569113, object UWP_V559112, object UWP_V549111, object UWP_V539110, object UWP_V529109, object UWP_V519108, object UWP_V509107, object UWP_V499106, object UWP_V489105, object UWP_V479104, object UWP_V469103, object UWP_V459102, object UWP_V449101, object UWP_V439100, object UWP_V429099, object UWP_V419098, object UWP_V409097, object UWP_V399096, object UWP_V389095, object UWP_V379094, object UWP_V369093, object UWP_V359092, object UWP_V349091, object UWP_V339090, object UWP_V329089, object UWP_V319088, object UWP_V309087, object UWP_V299086, object UWP_V289085, object UWP_V279084, object UWP_V269083, object UWP_V259082, object UWP_V249081, object UWP_V239080, object UWP_V229079, object UWP_V219078, object UWP_V209077, object UWP_V199076, object UWP_V189075, object UWP_V179074, object UWP_V169073, object UWP_V159072, object UWP_V149071, object UWP_V139070, object UWP_V129069, object UWP_V119068, object UWP_V109067, object UWP_V99066, object UWP_V89065, object UWP_V79064, object UWP_V69063, object UWP_V59062, object UWP_V49061, object UWP_V39060, object UWP_V29059, object UWP_V19058, object UWP_COUNT9057, object UWP_RESULT9056, object CLEANUP_RUN8841)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN8841
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_8842
    stloc UWP_RESULT9056
    leave DONE9126
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT9057
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V19058
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V29059
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V39060
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V49061
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V59062
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V69063
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V79064
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V89065
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V99066
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V109067
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V119068
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V129069
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V139070
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V149071
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V159072
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V169073
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V179074
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V189075
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V199076
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V209077
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V219078
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V229079
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V239080
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V249081
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V259082
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V269083
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V279084
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V289085
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V299086
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V309087
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V319088
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V329089
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V339090
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V349091
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V359092
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V369093
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V379094
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V389095
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V399096
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V409097
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V419098
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V429099
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V439100
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V449101
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V459102
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V469103
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V479104
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V489105
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V499106
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V509107
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V519108
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V529109
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V539110
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V549111
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V559112
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V569113
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V579114
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V589115
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V599116
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V609117
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V619118
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V629119
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V639120
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8841
    stloc CELL_TMP9127
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T9121'
    stloc CELL_VAL_TMP9128
    ldloc CELL_TMP9127
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9128
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9128
    pop
    ldloc UWP_COUNT9057
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V19058
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V29059
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V39060
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V49061
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V59062
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V69063
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V79064
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V89065
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V99066
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V109067
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V119068
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V129069
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V139070
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V149071
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V159072
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V169073
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V179074
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V189075
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V199076
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V209077
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V219078
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V229079
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V239080
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V249081
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V259082
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V269083
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V279084
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V289085
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V299086
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V309087
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V319088
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V329089
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V339090
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V349091
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V359092
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V369093
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V379094
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V389095
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V399096
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V409097
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V419098
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V429099
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V439100
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V449101
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V459102
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V469103
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V479104
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V489105
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V499106
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V509107
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V519108
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V529109
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V539110
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V549111
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V559112
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V569113
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V579114
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V589115
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V599116
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V609117
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V619118
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V629119
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V639120
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE9126:
    ldloc UWP_RESULT9056
    pop
TAG_TARGET_8842:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8841
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T9121'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE9123
    ldnull
    br END9124
TRUE9123:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S9125'
END9124:
    nop
    ldnull
    ceq
    brtrue ELSE9129
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END9130
ELSE9129:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END9130:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_8839:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_UWP_BASIC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_UWP_BASIC_Body'()
    ret
}

.method private static hidebysig object 'TEST_UWP_BASIC_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP9055, object CELL_TMP9054, object CELL_VAL_TMP9053, object CELL_TMP9052, object RES8835, object TEMP9050, object TEMP9049, object UWP_V639048, object UWP_V629047, object UWP_V619046, object UWP_V609045, object UWP_V599044, object UWP_V589043, object UWP_V579042, object UWP_V569041, object UWP_V559040, object UWP_V549039, object UWP_V539038, object UWP_V529037, object UWP_V519036, object UWP_V509035, object UWP_V499034, object UWP_V489033, object UWP_V479032, object UWP_V469031, object UWP_V459030, object UWP_V449029, object UWP_V439028, object UWP_V429027, object UWP_V419026, object UWP_V409025, object UWP_V399024, object UWP_V389023, object UWP_V379022, object UWP_V369021, object UWP_V359020, object UWP_V349019, object UWP_V339018, object UWP_V329017, object UWP_V319016, object UWP_V309015, object UWP_V299014, object UWP_V289013, object UWP_V279012, object UWP_V269011, object UWP_V259010, object UWP_V249009, object UWP_V239008, object UWP_V229007, object UWP_V219006, object UWP_V209005, object UWP_V199004, object UWP_V189003, object UWP_V179002, object UWP_V169001, object UWP_V159000, object UWP_V148999, object UWP_V138998, object UWP_V128997, object UWP_V118996, object UWP_V108995, object UWP_V98994, object UWP_V88993, object UWP_V78992, object UWP_V68991, object UWP_V58990, object UWP_V48989, object UWP_V38988, object UWP_V28987, object UWP_V18986, object UWP_COUNT8985, object UWP_RESULT8984, object X8834)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X8834
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8834
    stloc CELL_TMP9052
    ldstr "mutated"
    stloc CELL_VAL_TMP9053
    ldloc CELL_TMP9052
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9053
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9053
    pop
    ldstr "result"
    stloc UWP_RESULT8984
    leave DONE9051
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8985
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18986
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28987
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38988
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48989
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58990
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68991
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78992
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88993
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98994
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108995
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118996
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128997
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138998
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148999
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V159000
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V169001
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V179002
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V189003
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V199004
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V209005
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V219006
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V229007
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V239008
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V249009
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V259010
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V269011
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V279012
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V289013
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V299014
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V309015
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V319016
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V329017
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V339018
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V349019
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V359020
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V369021
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V379022
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V389023
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V399024
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V409025
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V419026
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V429027
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V439028
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V449029
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V459030
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V469031
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V479032
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V489033
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V499034
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V509035
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V519036
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V529037
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V539038
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V549039
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V559040
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V569041
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V579042
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V589043
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V599044
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V609045
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V619046
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V629047
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V639048
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8834
    stloc CELL_TMP9054
    ldstr "cleaned"
    stloc CELL_VAL_TMP9055
    ldloc CELL_TMP9054
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP9055
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP9055
    pop
    ldloc UWP_COUNT8985
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18986
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28987
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38988
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48989
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58990
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68991
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78992
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88993
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98994
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108995
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118996
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128997
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138998
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148999
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V159000
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V169001
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V179002
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V189003
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V199004
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V209005
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V219006
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V229007
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V239008
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V249009
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V259010
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V269011
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V279012
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V289013
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V299014
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V309015
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V319016
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V329017
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V339018
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V349019
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V359020
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V369021
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V379022
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V389023
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V399024
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V409025
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V419026
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V429027
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V439028
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V449029
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V459030
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V469031
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V479032
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V489033
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V499034
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V509035
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V519036
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V529037
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V539038
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V549039
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V559040
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V569041
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V579042
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V589043
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V599044
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V609045
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V619046
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V629047
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V639048
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE9051:
    ldloc UWP_RESULT8984
    stloc RES8835
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES8835
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8834
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_8832:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    call object Program::'MAIN'()
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

