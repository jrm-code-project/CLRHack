.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S8617'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T8613'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S8617'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T8613'
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
BLOCK_END_MAIN_8338:
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
    .locals init (object CELL_VAL_TMP8620, object CELL_TMP8619, object TEMP8614, object UWP_V638612, object UWP_V628611, object UWP_V618610, object UWP_V608609, object UWP_V598608, object UWP_V588607, object UWP_V578606, object UWP_V568605, object UWP_V558604, object UWP_V548603, object UWP_V538602, object UWP_V528601, object UWP_V518600, object UWP_V508599, object UWP_V498598, object UWP_V488597, object UWP_V478596, object UWP_V468595, object UWP_V458594, object UWP_V448593, object UWP_V438592, object UWP_V428591, object UWP_V418590, object UWP_V408589, object UWP_V398588, object UWP_V388587, object UWP_V378586, object UWP_V368585, object UWP_V358584, object UWP_V348583, object UWP_V338582, object UWP_V328581, object UWP_V318580, object UWP_V308579, object UWP_V298578, object UWP_V288577, object UWP_V278576, object UWP_V268575, object UWP_V258574, object UWP_V248573, object UWP_V238572, object UWP_V228571, object UWP_V218570, object UWP_V208569, object UWP_V198568, object UWP_V188567, object UWP_V178566, object UWP_V168565, object UWP_V158564, object UWP_V148563, object UWP_V138562, object UWP_V128561, object UWP_V118560, object UWP_V108559, object UWP_V98558, object UWP_V88557, object UWP_V78556, object UWP_V68555, object UWP_V58554, object UWP_V48553, object UWP_V38552, object UWP_V28551, object UWP_V18550, object UWP_COUNT8549, object UWP_RESULT8548, object CLEANUP_RUN8333)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN8333
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_8334
    stloc UWP_RESULT8548
    leave DONE8618
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8549
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18550
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28551
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38552
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48553
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58554
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68555
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78556
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88557
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98558
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108559
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118560
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128561
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138562
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148563
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158564
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168565
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178566
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188567
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198568
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208569
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218570
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228571
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238572
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248573
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258574
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268575
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278576
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288577
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298578
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308579
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318580
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328581
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338582
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348583
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358584
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368585
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378586
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388587
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398588
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408589
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418590
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428591
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438592
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448593
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458594
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468595
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478596
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488597
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498598
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508599
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518600
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528601
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538602
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548603
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558604
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568605
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578606
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588607
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598608
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608609
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618610
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628611
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638612
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8333
    stloc CELL_TMP8619
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8613'
    stloc CELL_VAL_TMP8620
    ldloc CELL_TMP8619
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8620
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8620
    pop
    ldloc UWP_COUNT8549
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18550
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28551
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38552
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48553
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58554
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68555
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78556
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88557
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98558
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108559
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118560
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128561
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138562
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148563
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158564
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168565
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178566
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188567
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198568
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208569
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218570
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228571
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238572
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248573
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258574
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268575
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278576
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288577
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298578
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308579
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318580
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328581
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338582
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348583
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358584
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368585
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378586
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388587
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398588
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408589
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418590
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428591
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438592
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448593
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458594
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468595
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478596
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488597
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498598
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508599
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518600
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528601
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538602
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548603
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558604
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568605
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578606
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588607
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598608
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608609
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618610
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628611
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638612
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8618:
    ldloc UWP_RESULT8548
    pop
TAG_TARGET_8334:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN8333
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T8613'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE8615
    ldnull
    br END8616
TRUE8615:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S8617'
END8616:
    nop
    ldnull
    ceq
    brtrue ELSE8621
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END8622
ELSE8621:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END8622:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_8331:
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
    .locals init (object CELL_VAL_TMP8547, object CELL_TMP8546, object CELL_VAL_TMP8545, object CELL_TMP8544, object RES8327, object TEMP8542, object TEMP8541, object UWP_V638540, object UWP_V628539, object UWP_V618538, object UWP_V608537, object UWP_V598536, object UWP_V588535, object UWP_V578534, object UWP_V568533, object UWP_V558532, object UWP_V548531, object UWP_V538530, object UWP_V528529, object UWP_V518528, object UWP_V508527, object UWP_V498526, object UWP_V488525, object UWP_V478524, object UWP_V468523, object UWP_V458522, object UWP_V448521, object UWP_V438520, object UWP_V428519, object UWP_V418518, object UWP_V408517, object UWP_V398516, object UWP_V388515, object UWP_V378514, object UWP_V368513, object UWP_V358512, object UWP_V348511, object UWP_V338510, object UWP_V328509, object UWP_V318508, object UWP_V308507, object UWP_V298506, object UWP_V288505, object UWP_V278504, object UWP_V268503, object UWP_V258502, object UWP_V248501, object UWP_V238500, object UWP_V228499, object UWP_V218498, object UWP_V208497, object UWP_V198496, object UWP_V188495, object UWP_V178494, object UWP_V168493, object UWP_V158492, object UWP_V148491, object UWP_V138490, object UWP_V128489, object UWP_V118488, object UWP_V108487, object UWP_V98486, object UWP_V88485, object UWP_V78484, object UWP_V68483, object UWP_V58482, object UWP_V48481, object UWP_V38480, object UWP_V28479, object UWP_V18478, object UWP_COUNT8477, object UWP_RESULT8476, object X8326)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X8326
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8326
    stloc CELL_TMP8544
    ldstr "mutated"
    stloc CELL_VAL_TMP8545
    ldloc CELL_TMP8544
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8545
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8545
    pop
    ldstr "result"
    stloc UWP_RESULT8476
    leave DONE8543
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT8477
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V18478
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V28479
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V38480
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V48481
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V58482
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V68483
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V78484
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V88485
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V98486
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V108487
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V118488
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V128489
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V138490
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V148491
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V158492
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V168493
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V178494
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V188495
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V198496
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V208497
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V218498
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V228499
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V238500
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V248501
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V258502
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V268503
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V278504
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V288505
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V298506
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V308507
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V318508
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V328509
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V338510
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V348511
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V358512
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V368513
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V378514
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V388515
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V398516
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V408517
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V418518
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V428519
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V438520
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V448521
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V458522
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V468523
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V478524
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V488525
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V498526
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V508527
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V518528
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V528529
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V538530
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V548531
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V558532
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V568533
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V578534
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V588535
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V598536
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V608537
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V618538
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V628539
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V638540
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8326
    stloc CELL_TMP8546
    ldstr "cleaned"
    stloc CELL_VAL_TMP8547
    ldloc CELL_TMP8546
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP8547
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP8547
    pop
    ldloc UWP_COUNT8477
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V18478
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V28479
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V38480
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V48481
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V58482
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V68483
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V78484
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V88485
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V98486
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V108487
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V118488
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V128489
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V138490
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V148491
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V158492
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V168493
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V178494
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V188495
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V198496
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V208497
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V218498
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V228499
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V238500
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V248501
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V258502
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V268503
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V278504
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V288505
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V298506
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V308507
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V318508
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V328509
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V338510
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V348511
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V358512
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V368513
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V378514
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V388515
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V398516
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V408517
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V418518
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V428519
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V438520
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V448521
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V458522
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V468523
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V478524
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V488525
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V498526
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V508527
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V518528
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V528529
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V538530
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V548531
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V558532
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V568533
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V578534
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V588535
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V598536
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V608537
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V618538
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V628539
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V638540
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE8543:
    ldloc UWP_RESULT8476
    stloc RES8327
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES8327
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X8326
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_8324:
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

