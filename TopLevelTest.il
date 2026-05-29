.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'TopLevelTest' {}
.module 'TopLevelTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'FACTOR8123'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'FACTOR8123'
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
    .locals init (object ARG_TMP8141, object FN_TMP8137, object MUL_BY_108134)
    ldstr "TopLevelTest"
    call object Program::'SAY_HELLO'(object)
    pop
    ldstr "10"
    call object Program::'MAKE_MULTIPLIER'(object)
    stloc MUL_BY_108134
    ldloc MUL_BY_108134
    stloc FN_TMP8137
    ldloc FN_TMP8137
    brtrue FN_NULL8138
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP8137
FN_NULL8138:
    nop
    ldloc FN_TMP8137
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP8137
    ldloc FN_TMP8137
    brtrue FN_TYPE_OK8139
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP8137
FN_TYPE_OK8139:
    nop
FN_AFTER8140:
    nop
    ldstr "5"
    stloc ARG_TMP8141
    ldloc FN_TMP8137
    ldloc ARG_TMP8141
    tail. callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ret
BLOCK_END_MAIN_8132:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'MAKE_MULTIPLIER_Body'(object)
    ret
}

.method public static hidebysig object 'MAKE_MULTIPLIER'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'MAKE_MULTIPLIER_Body'(object) cil managed
{
    .maxstack 8
    ldarg 0
    newobj instance void L_8136::'.ctor'(object)
    ret
BLOCK_END_MAKE_MULTIPLIER_8125:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'SAY_HELLO_Body'(object)
    ret
}

.method public static hidebysig object 'SAY_HELLO'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'SAY_HELLO_Body'(object) cil managed
{
    .maxstack 8
    ldstr "Hello from:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_SAY_HELLO_8119:
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

.class public auto ansi beforefieldinit L_8136
       extends [LispBase]Lisp.Closure
{
    .field public object 'FACTOR8123'

.method public hidebysig void '.ctor'(object) cil managed
{
    .maxstack 8
    ldarg.0
    call instance void [LispBase]Lisp.Closure::'.ctor'()
    ldarg.0
    ldarg 1
    stfld object L_8136::'FACTOR8123'
    ret
}

.method private hidebysig object 'InvokeBody'(object) cil managed
{
    .maxstack 8
    ldstr "Multiplying by captured factor (simulated)..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg.0
    ldfld object L_8136::'FACTOR8123'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 1
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
    ldnull
    ret
}

.method public virtual hidebysig object 'Invoke'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object) cil managed
{
    .maxstack 8
    ldarg.0
    ldarg 1
    tail.
    callvirt instance object L_8136::'InvokeBody'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public virtual hidebysig object 'Invoke'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

} // end of class L_8136

