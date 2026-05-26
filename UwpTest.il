.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S8763'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T8759'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S8763'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T8759'
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
BLOCK_END_MAIN_8484:
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
    .locals init (object CELL_VAL_TMP8766, object CELL_TMP8765, object TEMP8760, object UWP_V638758, object UWP_V628757, object UWP_V618756, object UWP_V608755, object UWP_V598754, object UWP_V588753, object UWP_V578752, object UWP_V568751, object UWP_V558750, object UWP_V548749, object UWP_V538748, object UWP_V528747, object UWP_V518746, object UWP_V508745, object UWP_V498744, object UWP_V488743, object UWP_V478742, object UWP_V468741, object UWP_V458740, object UWP_V448739, object UWP_V438738, object UWP_V428737, object UWP_V418736, object UWP_V408735, object UWP_V398734, object UWP_V388733, object UWP_V378732, object UWP_V368731, object UWP_V358730, object UWP_V348729, object UWP_V338728, object UWP_V328727, object UWP_V318726, object UWP_V308725, object UWP_V298724, object UWP_V288723, object UWP_V278722, object UWP_V268721, object UWP_V258720, object UWP_V248719, object UWP_V238718, object UWP_V228717, object UWP_V218716, object UWP_V208715, object UWP_V198714, object UWP_V188713, object UWP_V178712, object UWP_V168711, object UWP_V158710, object UWP_V148709, object UWP_V138708, object UWP_V128707, object UWP_V118706, object UWP_V108705, object UWP_V98704, object UWP_V88703, object UWP_V78702, object UWP_V68701, object UWP_V58700, object UWP_V48699, object UWP_V38698, object UWP_V28697, object UWP_V18696, object UWP_COUNT8695, object UWP_RESULT8694, object CLEANUP_RUN8479)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN8479
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_8480
    stloc UWP_RESULT8694
    leave DONE8764
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8695
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18696
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28697
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38698
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48699
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58700
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68701
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78702
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88703
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98704
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108705
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118706
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128707
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138708
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148709
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158710
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168711
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178712
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188713
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198714
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208715
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218716
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228717
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238718
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248719
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258720
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268721
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278722
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288723
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298724
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308725
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318726
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328727
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338728
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348729
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358730
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368731
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378732
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388733
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398734
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408735
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418736
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428737
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438738
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448739
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458740
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468741
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478742
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488743
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498744
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508745
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518746
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528747
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538748
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548749
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558750
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568751
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578752
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588753
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598754
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608755
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618756
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628757
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638758
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8479
    stloc CELL_TMP8765
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8759'
    stloc CELL_VAL_TMP8766
    ldloc CELL_TMP8765
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8766
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8766
    pop
    ldloc UWP_COUNT8695
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18696
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28697
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38698
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48699
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58700
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68701
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78702
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88703
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98704
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108705
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118706
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128707
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138708
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148709
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158710
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168711
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178712
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188713
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198714
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208715
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218716
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228717
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238718
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248719
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258720
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268721
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278722
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288723
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298724
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308725
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318726
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328727
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338728
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348729
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358730
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368731
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378732
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388733
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398734
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408735
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418736
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428737
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438738
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448739
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458740
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468741
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478742
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488743
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498744
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508745
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518746
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528747
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538748
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548749
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558750
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568751
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578752
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588753
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598754
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608755
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618756
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628757
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638758
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8764:
    ldloc UWP_RESULT8694
    pop
TAG_TARGET_8480:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8479
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8759'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE8761
    ldnull
    br END8762
TRUE8761:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S8763'
END8762:
    nop
    ldnull
    ceq
    brtrue ELSE8767
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END8768
ELSE8767:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END8768:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_8477:
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
    .locals init (object CELL_VAL_TMP8693, object CELL_TMP8692, object CELL_VAL_TMP8691, object CELL_TMP8690, object RES8473, object TEMP8688, object TEMP8687, object UWP_V638686, object UWP_V628685, object UWP_V618684, object UWP_V608683, object UWP_V598682, object UWP_V588681, object UWP_V578680, object UWP_V568679, object UWP_V558678, object UWP_V548677, object UWP_V538676, object UWP_V528675, object UWP_V518674, object UWP_V508673, object UWP_V498672, object UWP_V488671, object UWP_V478670, object UWP_V468669, object UWP_V458668, object UWP_V448667, object UWP_V438666, object UWP_V428665, object UWP_V418664, object UWP_V408663, object UWP_V398662, object UWP_V388661, object UWP_V378660, object UWP_V368659, object UWP_V358658, object UWP_V348657, object UWP_V338656, object UWP_V328655, object UWP_V318654, object UWP_V308653, object UWP_V298652, object UWP_V288651, object UWP_V278650, object UWP_V268649, object UWP_V258648, object UWP_V248647, object UWP_V238646, object UWP_V228645, object UWP_V218644, object UWP_V208643, object UWP_V198642, object UWP_V188641, object UWP_V178640, object UWP_V168639, object UWP_V158638, object UWP_V148637, object UWP_V138636, object UWP_V128635, object UWP_V118634, object UWP_V108633, object UWP_V98632, object UWP_V88631, object UWP_V78630, object UWP_V68629, object UWP_V58628, object UWP_V48627, object UWP_V38626, object UWP_V28625, object UWP_V18624, object UWP_COUNT8623, object UWP_RESULT8622, object X8472)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X8472
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8472
    stloc CELL_TMP8690
    ldstr "mutated"
    stloc CELL_VAL_TMP8691
    ldloc CELL_TMP8690
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8691
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8691
    pop
    ldstr "result"
    stloc UWP_RESULT8622
    leave DONE8689
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8623
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18624
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28625
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38626
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48627
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58628
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68629
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78630
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88631
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98632
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108633
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118634
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128635
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138636
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148637
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158638
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168639
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178640
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188641
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198642
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208643
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218644
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228645
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238646
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248647
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258648
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268649
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278650
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288651
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298652
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308653
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318654
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328655
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338656
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348657
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358658
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368659
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378660
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388661
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398662
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408663
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418664
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428665
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438666
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448667
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458668
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468669
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478670
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488671
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498672
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508673
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518674
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528675
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538676
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548677
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558678
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568679
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578680
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588681
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598682
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608683
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618684
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628685
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638686
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8472
    stloc CELL_TMP8692
    ldstr "cleaned"
    stloc CELL_VAL_TMP8693
    ldloc CELL_TMP8692
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8693
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8693
    pop
    ldloc UWP_COUNT8623
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18624
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28625
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38626
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48627
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58628
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68629
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78630
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88631
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98632
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108633
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118634
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128635
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138636
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148637
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158638
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168639
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178640
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188641
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198642
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208643
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218644
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228645
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238646
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248647
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258648
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268649
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278650
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288651
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298652
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308653
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318654
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328655
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338656
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348657
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358658
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368659
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378660
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388661
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398662
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408663
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418664
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428665
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438666
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448667
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458668
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468669
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478670
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488671
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498672
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508673
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518674
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528675
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538676
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548677
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558678
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568679
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578680
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588681
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598682
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608683
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618684
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628685
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638686
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8689:
    ldloc UWP_RESULT8622
    stloc RES8473
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES8473
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8472
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_8470:
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

