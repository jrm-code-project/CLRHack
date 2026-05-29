.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'CatchTest' {}
.module 'CatchTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S936'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S927'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S920'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S917'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S912'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MY-TAG"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S936'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "BAR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S927'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INNER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S920'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OUTER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S917'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "FOO"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S912'
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
    call object Program::'TEST_CATCH_BASIC'()
    pop
    call object Program::'TEST_CATCH_NESTED'()
    pop
    call object Program::'TEST_CATCH_MISMATCH'()
    pop
    tail. call object Program::'TEST_CATCH_NON_LOCAL'()
    ret
BLOCK_END_MAIN_890:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NON_LOCAL'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_NON_LOCAL_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_NON_LOCAL_Body'() cil managed
{
    .maxstack 8
    .locals init (object RES886, object CATCH_RESULT935, object CATCH_TAG934)
    ldstr "Testing truly non-local throw..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S936'
    stloc CATCH_TAG934
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S936'
    ldstr "final result"
    call object Program::'NON_LOCAL_THROW_HELPER'(object, object)
    stloc CATCH_RESULT935
    leave CATCH_DONE937
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG934
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW938
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT935
    leave CATCH_DONE937
CATCH_RETHROW938:
    pop
    rethrow
    }
CATCH_DONE937:
    ldloc CATCH_RESULT935
    stloc RES886
    ldstr "Result of non-local throw:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES886
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_NON_LOCAL_884:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'NON_LOCAL_THROW_HELPER_Body'(object, object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'NON_LOCAL_THROW_HELPER'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'NON_LOCAL_THROW_HELPER_Body'(object, object) cil managed
{
    .maxstack 8
    ldstr "Inside helper, about to throw..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    ldarg 1
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
BLOCK_END_NON_LOCAL_THROW_HELPER_879:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_MISMATCH'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_MISMATCH_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_MISMATCH_Body'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT929, object CATCH_TAG928, object CATCH_RESULT926, object CATCH_TAG925)
    ldstr "Testing catch mismatch..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S927'
    stloc CATCH_TAG925
    .try
    {
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S912'
    stloc CATCH_TAG928
    .try
    {
    ldstr "Throwing to bar from inner foo"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S927'
    ldstr "reached bar"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    pop
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT929
    leave CATCH_DONE932
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG928
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW933
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT929
    leave CATCH_DONE932
CATCH_RETHROW933:
    pop
    rethrow
    }
CATCH_DONE932:
    ldloc CATCH_RESULT929
    stloc CATCH_RESULT926
    leave CATCH_DONE930
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG925
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW931
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT926
    leave CATCH_DONE930
CATCH_RETHROW931:
    pop
    rethrow
    }
CATCH_DONE930:
    ldloc CATCH_RESULT926
    ret
BLOCK_END_TEST_CATCH_MISMATCH_872:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_NESTED'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_NESTED_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_NESTED_Body'() cil managed
{
    .maxstack 8
    .locals init (object CATCH_RESULT919, object CATCH_TAG918, object CATCH_RESULT916, object CATCH_TAG915)
    ldstr "Testing nested catch..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S917'
    stloc CATCH_TAG915
    .try
    {
    ldstr "Outer start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S920'
    stloc CATCH_TAG918
    .try
    {
    ldstr "Inner start"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S917'
    ldstr "thrown to outer"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    pop
    ldstr "Should NOT print this (inner)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT919
    leave CATCH_DONE923
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG918
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW924
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT919
    leave CATCH_DONE923
CATCH_RETHROW924:
    pop
    rethrow
    }
CATCH_DONE923:
    ldloc CATCH_RESULT919
    pop
    ldstr "Should NOT print this (outer)"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT916
    leave CATCH_DONE921
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG915
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW922
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT916
    leave CATCH_DONE921
CATCH_RETHROW922:
    pop
    rethrow
    }
CATCH_DONE921:
    ldloc CATCH_RESULT916
    pop
    ldstr "Back from outer catch"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_NESTED_867:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CATCH_BASIC'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CATCH_BASIC_Body'()
    ret
}

.method private static hidebysig object 'TEST_CATCH_BASIC_Body'() cil managed
{
    .maxstack 8
    .locals init (object VAL863, object CATCH_RESULT911, object CATCH_TAG910)
    ldstr "Testing catch basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S912'
    stloc CATCH_TAG910
    .try
    {
    ldstr "Inside catch"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S912'
    ldstr "thrown value"
    call object[] [LispBase]Lisp.Values::'CaptureValues'()
    newobj instance void [LispBase]Lisp.CatchThrowException::'.ctor'(object, object, object[])
    throw
    pop
    ldstr "Should NOT print this"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    stloc CATCH_RESULT911
    leave CATCH_DONE913
    }
    catch [LispBase]Lisp.CatchThrowException
    {
    dup
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Tag'()
    ldloc CATCH_TAG910
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brfalse CATCH_RETHROW914
    dup
    callvirt instance object[] [LispBase]Lisp.CatchThrowException::'get_CapturedValues'()
    call void [LispBase]Lisp.Values::'RestoreValues'(object[])
    callvirt instance object [LispBase]Lisp.CatchThrowException::'get_Value'()
    stloc CATCH_RESULT911
    leave CATCH_DONE913
CATCH_RETHROW914:
    pop
    rethrow
    }
CATCH_DONE913:
    ldloc CATCH_RESULT911
    stloc VAL863
    ldstr "Result (should be thrown value):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc VAL863
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_CATCH_BASIC_861:
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

