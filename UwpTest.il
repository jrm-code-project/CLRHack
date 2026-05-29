.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S8602'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T8598'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S8602'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T8598'
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
BLOCK_END_MAIN_8323:
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
    .locals init (object CELL_VAL_TMP8605, object CELL_TMP8604, object TEMP8599, object UWP_V638597, object UWP_V628596, object UWP_V618595, object UWP_V608594, object UWP_V598593, object UWP_V588592, object UWP_V578591, object UWP_V568590, object UWP_V558589, object UWP_V548588, object UWP_V538587, object UWP_V528586, object UWP_V518585, object UWP_V508584, object UWP_V498583, object UWP_V488582, object UWP_V478581, object UWP_V468580, object UWP_V458579, object UWP_V448578, object UWP_V438577, object UWP_V428576, object UWP_V418575, object UWP_V408574, object UWP_V398573, object UWP_V388572, object UWP_V378571, object UWP_V368570, object UWP_V358569, object UWP_V348568, object UWP_V338567, object UWP_V328566, object UWP_V318565, object UWP_V308564, object UWP_V298563, object UWP_V288562, object UWP_V278561, object UWP_V268560, object UWP_V258559, object UWP_V248558, object UWP_V238557, object UWP_V228556, object UWP_V218555, object UWP_V208554, object UWP_V198553, object UWP_V188552, object UWP_V178551, object UWP_V168550, object UWP_V158549, object UWP_V148548, object UWP_V138547, object UWP_V128546, object UWP_V118545, object UWP_V108544, object UWP_V98543, object UWP_V88542, object UWP_V78541, object UWP_V68540, object UWP_V58539, object UWP_V48538, object UWP_V38537, object UWP_V28536, object UWP_V18535, object UWP_COUNT8534, object UWP_RESULT8533, object CLEANUP_RUN8318)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN8318
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_8319
    stloc UWP_RESULT8533
    leave DONE8603
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8534
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18535
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28536
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38537
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48538
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58539
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68540
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78541
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88542
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98543
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108544
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118545
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128546
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138547
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148548
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158549
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168550
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178551
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188552
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198553
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208554
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218555
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228556
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238557
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248558
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258559
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268560
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278561
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288562
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298563
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308564
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318565
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328566
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338567
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348568
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358569
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368570
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378571
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388572
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398573
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408574
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418575
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428576
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438577
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448578
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458579
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468580
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478581
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488582
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498583
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508584
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518585
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528586
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538587
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548588
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558589
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568590
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578591
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588592
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598593
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608594
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618595
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628596
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638597
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8318
    stloc CELL_TMP8604
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8598'
    stloc CELL_VAL_TMP8605
    ldloc CELL_TMP8604
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8605
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8605
    pop
    ldloc UWP_COUNT8534
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18535
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28536
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38537
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48538
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58539
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68540
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78541
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88542
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98543
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108544
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118545
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128546
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138547
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148548
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158549
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168550
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178551
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188552
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198553
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208554
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218555
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228556
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238557
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248558
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258559
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268560
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278561
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288562
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298563
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308564
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318565
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328566
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338567
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348568
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358569
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368570
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378571
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388572
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398573
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408574
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418575
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428576
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438577
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448578
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458579
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468580
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478581
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488582
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498583
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508584
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518585
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528586
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538587
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548588
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558589
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568590
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578591
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588592
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598593
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608594
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618595
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628596
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638597
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8603:
    ldloc UWP_RESULT8533
    pop
TAG_TARGET_8319:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8318
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8598'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE8600
    ldnull
    br END8601
TRUE8600:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S8602'
END8601:
    nop
    ldnull
    ceq
    brtrue ELSE8606
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END8607
ELSE8606:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END8607:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_8316:
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
    .locals init (object CELL_VAL_TMP8532, object CELL_TMP8531, object CELL_VAL_TMP8530, object CELL_TMP8529, object RES8312, object TEMP8527, object TEMP8526, object UWP_V638525, object UWP_V628524, object UWP_V618523, object UWP_V608522, object UWP_V598521, object UWP_V588520, object UWP_V578519, object UWP_V568518, object UWP_V558517, object UWP_V548516, object UWP_V538515, object UWP_V528514, object UWP_V518513, object UWP_V508512, object UWP_V498511, object UWP_V488510, object UWP_V478509, object UWP_V468508, object UWP_V458507, object UWP_V448506, object UWP_V438505, object UWP_V428504, object UWP_V418503, object UWP_V408502, object UWP_V398501, object UWP_V388500, object UWP_V378499, object UWP_V368498, object UWP_V358497, object UWP_V348496, object UWP_V338495, object UWP_V328494, object UWP_V318493, object UWP_V308492, object UWP_V298491, object UWP_V288490, object UWP_V278489, object UWP_V268488, object UWP_V258487, object UWP_V248486, object UWP_V238485, object UWP_V228484, object UWP_V218483, object UWP_V208482, object UWP_V198481, object UWP_V188480, object UWP_V178479, object UWP_V168478, object UWP_V158477, object UWP_V148476, object UWP_V138475, object UWP_V128474, object UWP_V118473, object UWP_V108472, object UWP_V98471, object UWP_V88470, object UWP_V78469, object UWP_V68468, object UWP_V58467, object UWP_V48466, object UWP_V38465, object UWP_V28464, object UWP_V18463, object UWP_COUNT8462, object UWP_RESULT8461, object X8311)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X8311
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8311
    stloc CELL_TMP8529
    ldstr "mutated"
    stloc CELL_VAL_TMP8530
    ldloc CELL_TMP8529
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8530
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8530
    pop
    ldstr "result"
    stloc UWP_RESULT8461
    leave DONE8528
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8462
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18463
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28464
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38465
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48466
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58467
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68468
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78469
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88470
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98471
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108472
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118473
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128474
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138475
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148476
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158477
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168478
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178479
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188480
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198481
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208482
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218483
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228484
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238485
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248486
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258487
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268488
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278489
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288490
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298491
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308492
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318493
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328494
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338495
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348496
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358497
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368498
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378499
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388500
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398501
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408502
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418503
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428504
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438505
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448506
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458507
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468508
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478509
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488510
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498511
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508512
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518513
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528514
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538515
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548516
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558517
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568518
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578519
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588520
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598521
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608522
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618523
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628524
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638525
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8311
    stloc CELL_TMP8531
    ldstr "cleaned"
    stloc CELL_VAL_TMP8532
    ldloc CELL_TMP8531
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8532
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8532
    pop
    ldloc UWP_COUNT8462
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18463
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28464
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38465
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48466
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58467
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68468
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78469
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88470
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98471
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108472
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118473
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128474
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138475
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148476
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158477
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168478
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178479
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188480
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198481
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208482
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218483
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228484
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238485
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248486
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258487
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268488
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278489
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288490
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298491
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308492
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318493
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328494
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338495
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348496
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358497
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368498
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378499
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388500
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398501
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408502
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418503
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428504
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438505
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448506
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458507
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468508
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478509
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488510
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498511
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508512
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518513
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528514
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538515
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548516
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558517
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568518
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578519
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588520
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598521
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608522
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618523
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628524
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638525
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8528:
    ldloc UWP_RESULT8461
    stloc RES8312
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES8312
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8311
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_8309:
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

