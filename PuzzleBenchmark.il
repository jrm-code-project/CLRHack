.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'PuzzleBenchmark' {}
.module 'PuzzleBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object '_PUZZLE_CLASSMAX_'
    .field public static object '_III_'
    .field public static object '_PUZZLE_DEE_'
    .field public static object '_KOUNT_'
    .field public static object '_PUZZLE_TYPEMAX_'
    .field public static object '_P_PIECECOUNT_'
    .field public static object '_P_CLASS_'
    .field public static object '_P_PUZZL_'
    .field public static object '_PUZZLE_SIZE_'
    .field public static object '_P_P_'
    .field public static object 'TEMP_B'
    .field public static object '_P_PIECEMAX_'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7811'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7806'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7767'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T7734'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S7733'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'_PUZZLE_CLASSMAX_'
    ldnull
    stsfld object Program::'_III_'
    ldnull
    stsfld object Program::'_PUZZLE_DEE_'
    ldnull
    stsfld object Program::'_KOUNT_'
    ldnull
    stsfld object Program::'_PUZZLE_TYPEMAX_'
    ldnull
    stsfld object Program::'_P_PIECECOUNT_'
    ldnull
    stsfld object Program::'_P_CLASS_'
    ldnull
    stsfld object Program::'_P_PUZZL_'
    ldnull
    stsfld object Program::'_PUZZLE_SIZE_'
    ldnull
    stsfld object Program::'_P_P_'
    ldnull
    stsfld object Program::'TEMP_B'
    ldnull
    stsfld object Program::'_P_PIECEMAX_'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7811'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7806'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7767'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
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
    tail. call object Program::'PUZZLE_START'()
    ret
BLOCK_END_MAIN_7661:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'PUZZLE_START'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'PUZZLE_START_Body'()
    ret
}

.method private static hidebysig object 'PUZZLE_START_Body'() cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7901, object CELL_TMP7900, object CELL_VAL_TMP7899, object CELL_TMP7898, object CELL_VAL_TMP7893, object CELL_TMP7892, object CELL_VAL_TMP7891, object CELL_TMP7890, object CELL_VAL_TMP7889, object CELL_TMP7888, object CELL_VAL_TMP7881, object CELL_TMP7880, object N7657, object M7656, object TEMP7877, object TEMP7876, object J7653, object I7650, object TEMP7871, object TEMP7870, object TEMP7869, object IDX7649, object K7646, object J7643, object I7640, object TEMP7862, object I7637)
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I7637
TAG_LOOP_7638:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I7637
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7860
    ldnull
    br END7861
TRUE7860:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7861:
    nop
    ldnull
    ceq
    brtrue ELSE7878
    leave TAG_DONE_7639
    br END7879
ELSE7878:
    nop
    ldnull
END7879:
    nop
    pop
    ldsfld object Program::'_P_PUZZL_'
    ldloc I7637
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc I7637
    stloc CELL_TMP7880
    ldloc I7637
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7881
    ldloc CELL_TMP7880
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7881
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7881
    pop
    leave TAG_LOOP_7638
    pop
TAG_DONE_7639:
    nop
    ldnull
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I7640
TAG_LOOP_I_7641:
    nop
    ldc.i4 5
    box int32
    ldloc I7640
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7863
    ldnull
    br END7864
TRUE7863:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7864:
    nop
    ldnull
    ceq
    brtrue ELSE7882
    leave TAG_DONE_I_7642
    br END7883
ELSE7882:
    nop
    ldnull
END7883:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J7643
TAG_LOOP_J_7644:
    nop
    ldc.i4 5
    box int32
    ldloc J7643
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7865
    ldnull
    br END7866
TRUE7865:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7866:
    nop
    ldnull
    ceq
    brtrue ELSE7884
    leave TAG_DONE_J_7645
    br END7885
ELSE7884:
    nop
    ldnull
END7885:
    nop
    pop
    ldc.i4 1
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K7646
TAG_LOOP_K_7647:
    nop
    ldc.i4 5
    box int32
    ldloc K7646
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7867
    ldnull
    br END7868
TRUE7867:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7868:
    nop
    ldnull
    ceq
    brtrue ELSE7886
    leave TAG_DONE_K_7648
    br END7887
ELSE7886:
    nop
    ldnull
END7887:
    nop
    pop
    ldloc K7646
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc J7643
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 8
    box int32
    ldloc I7640
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX7649
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX7649
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K7646
    stloc CELL_TMP7888
    ldloc K7646
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7889
    ldloc CELL_TMP7888
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7889
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7889
    pop
    leave TAG_LOOP_K_7647
    pop
TAG_DONE_K_7648:
    nop
    ldnull
    pop
    ldloc J7643
    stloc CELL_TMP7890
    ldloc J7643
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7891
    ldloc CELL_TMP7890
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7891
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7891
    pop
    leave TAG_LOOP_J_7644
    pop
TAG_DONE_J_7645:
    nop
    ldnull
    pop
    ldloc I7640
    stloc CELL_TMP7892
    ldloc I7640
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7893
    ldloc CELL_TMP7892
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7893
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7893
    pop
    leave TAG_LOOP_I_7641
    pop
TAG_DONE_I_7642:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 0
    box int32
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_P_PIECECOUNT_'
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I7650
TAG_LOOP_I2_7651:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc I7650
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7872
    ldnull
    br END7873
TRUE7872:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7873:
    nop
    ldnull
    ceq
    brtrue ELSE7894
    leave TAG_DONE_I2_7652
    br END7895
ELSE7894:
    nop
    ldnull
END7895:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J7653
TAG_LOOP_J2_7654:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc J7653
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7874
    ldnull
    br END7875
TRUE7874:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7875:
    nop
    ldnull
    ceq
    brtrue ELSE7896
    leave TAG_DONE_J2_7655
    br END7897
ELSE7896:
    nop
    ldnull
END7897:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldloc J7653
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc I7650
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc J7653
    stloc CELL_TMP7898
    ldloc J7653
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7899
    ldloc CELL_TMP7898
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7899
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7899
    pop
    leave TAG_LOOP_J2_7654
    pop
TAG_DONE_J2_7655:
    nop
    ldnull
    pop
    ldloc I7650
    stloc CELL_TMP7900
    ldloc I7650
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7901
    ldloc CELL_TMP7900
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7901
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7901
    pop
    leave TAG_LOOP_I2_7651
    pop
TAG_DONE_I2_7652:
    nop
    ldnull
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_III_'
    pop
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 4
    box int32
    ldc.i4 0
    box int32
    ldc.i4 3
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 5
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 3
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 6
    box int32
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 7
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 8
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 0
    box int32
    ldc.i4 2
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 9
    box int32
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 10
    box int32
    ldc.i4 2
    box int32
    ldc.i4 1
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 11
    box int32
    ldc.i4 2
    box int32
    ldc.i4 0
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 12
    box int32
    ldc.i4 3
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    ldc.i4 1
    box int32
    call object Program::'P_DEFINE_PIECE'(object, object, object, object, object)
    pop
    ldc.i4 1
    box int32
    ldsfld object Program::'_PUZZLE_DEE_'
    ldc.i4 1
    box int32
    ldsfld object Program::'_PUZZLE_DEE_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc M7656
    ldc.i4 0
    box int32
    ldloc M7656
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE7903
    ldc.i4 0
    box int32
    ldloc M7656
    call object Program::'P_PLACE'(object, object)
    stloc N7657
    ldloc N7657
    call object Program::'P_TRIAL'(object)
    ldnull
    ceq
    brtrue ELSE7902
    ldstr "Kount:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_KOUNT_'
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldsfld object Program::'_KOUNT_'
    ret
ELSE7902:
    nop
    ldstr "Puzzle failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE7903:
    nop
    ldstr "Puzzle setup failed"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_PUZZLE_START_7635:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    ldarg 2
    ldarg 3
    ldarg 4
    tail.
    call object Program::'P_DEFINE_PIECE_Body'(object, object, object, object, object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'(object) cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_DEFINE_PIECE'() cil managed
{
    .maxstack 8
    ldc.i4 5
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_DEFINE_PIECE_Body'(object, object, object, object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7858, object CELL_TMP7857, object CELL_VAL_TMP7856, object CELL_TMP7855, object CELL_VAL_TMP7854, object CELL_TMP7853, object INDEX7631, object TEMP7844, object TEMP7843, object TEMP7842, object INDEX7630, object K7627, object J7624, object I7621)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I7621
TAG_LOOP_I_7622:
    nop
    ldarg 2
    ldloc I7621
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7836
    ldnull
    br END7837
TRUE7836:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7837:
    nop
    ldnull
    ceq
    brtrue ELSE7847
    leave TAG_DONE_I_7623
    br END7848
ELSE7847:
    nop
    ldnull
END7848:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc J7624
TAG_LOOP_J_7625:
    nop
    ldarg 3
    ldloc J7624
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7838
    ldnull
    br END7839
TRUE7838:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7839:
    nop
    ldnull
    ceq
    brtrue ELSE7849
    leave TAG_DONE_J_7626
    br END7850
ELSE7849:
    nop
    ldnull
END7850:
    nop
    pop
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K7627
TAG_LOOP_K_7628:
    nop
    ldarg 4
    ldloc K7627
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7840
    ldnull
    br END7841
TRUE7840:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7841:
    nop
    ldnull
    ceq
    brtrue ELSE7851
    leave TAG_DONE_K_7629
    br END7852
ELSE7851:
    nop
    ldnull
END7852:
    nop
    pop
    ldloc I7621
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc J7624
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld object Program::'_PUZZLE_DEE_'
    ldloc K7627
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc INDEX7630
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc INDEX7630
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldloc K7627
    stloc CELL_TMP7853
    ldloc K7627
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7854
    ldloc CELL_TMP7853
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7854
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7854
    pop
    leave TAG_LOOP_K_7628
    pop
TAG_DONE_K_7629:
    nop
    ldnull
    pop
    ldloc J7624
    stloc CELL_TMP7855
    ldloc J7624
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7856
    ldloc CELL_TMP7855
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7856
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7856
    pop
    leave TAG_LOOP_J_7625
    pop
TAG_DONE_J_7626:
    nop
    ldnull
    pop
    ldloc I7621
    stloc CELL_TMP7857
    ldloc I7621
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7858
    ldloc CELL_TMP7857
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7858
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7858
    pop
    leave TAG_LOOP_I_7622
    pop
TAG_DONE_I_7623:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    ldarg 1
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldarg 2
    ldsfld object Program::'_PUZZLE_DEE_'
    ldarg 3
    ldsfld object Program::'_PUZZLE_DEE_'
    ldarg 4
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc INDEX7631
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    ldloc INDEX7631
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldsfld object Program::'_III_'
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7845
    ldnull
    br END7846
TRUE7845:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7846:
    nop
    ldnull
    ceq
    brtrue ELSE7859
    ldsfld object Program::'_III_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_III_'
    ret
ELSE7859:
    nop
    ldc.i4 0
    box int32
    ret
BLOCK_END_P_DEFINE_PIECE_7619:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'(object) cil managed
{
    .maxstack 8
    ldarg 0
    tail.
    call object Program::'P_TRIAL_Body'(object)
    ret
}

.method public static hidebysig object 'P_TRIAL'() cil managed
{
    .maxstack 8
    ldc.i4 1
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_TRIAL_Body'(object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7831, object CELL_TMP7830, object CELL_VAL_TMP7827, object CELL_TMP7826, object CELL_VAL_TMP7823, object CELL_TMP7822, object CELL_VAL_TMP7821, object CELL_TMP7820, object CELL_VAL_TMP7817, object CELL_TMP7816, object TEMP7815, object TEMP7814, object TEMP7813, object TEMP7812, object G76097610, object N7608, object COUNT7607, object CLASS7606, object TEMP7803, object RESULT7603, object I7602)
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc I7602
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT7603
TAG_LOOP_7604:
    nop
    ldsfld object Program::'_PUZZLE_TYPEMAX_'
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7801
    ldnull
    br END7802
TRUE7801:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7802:
    nop
    ldnull
    ceq
    brtrue ELSE7834
    ldsfld object Program::'_KOUNT_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldloc RESULT7603
    stloc CELL_TMP7816
    ldnull
    stloc CELL_VAL_TMP7817
    ldloc CELL_TMP7816
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7817
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7817
    pop
    leave TAG_DONE_7605
    br END7835
ELSE7834:
    nop
    ldsfld object Program::'_P_CLASS_'
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS7606
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS7606
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT7607
    ldloc COUNT7607
    ldc.i4 0
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7804
    ldnull
    br END7805
TRUE7804:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7806'
END7805:
    nop
    ldnull
    ceq
    brtrue TRUE7807
    ldnull
    br END7808
TRUE7807:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7767'
END7808:
    nop
    ldnull
    ceq
    brtrue ELSE7832
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_FIT'(object, object)
    ldnull
    ceq
    brtrue ELSE7828
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_PLACE'(object, object)
    stloc N7608
    ldloc N7608
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE7809
    ldnull
    br END7810
TRUE7809:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7811'
END7810:
    nop
    stloc G76097610
    ldloc G76097610
    ldnull
    ceq
    brtrue ELSE7818
    ldloc G76097610
    br END7819
ELSE7818:
    nop
    ldloc N7608
    call object Program::'P_TRIAL'(object)
END7819:
    nop
    ldnull
    ceq
    brtrue ELSE7824
    ldsfld object Program::'_KOUNT_'
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldloc RESULT7603
    stloc CELL_TMP7820
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    stloc CELL_VAL_TMP7821
    ldloc CELL_TMP7820
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7821
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7821
    pop
    leave TAG_DONE_7605
    br END7825
ELSE7824:
    nop
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldarg 0
    call object Program::'P_REMOVE'(object, object)
    pop
    ldloc I7602
    stloc CELL_TMP7822
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7823
    ldloc CELL_TMP7822
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7823
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7823
    pop
    leave TAG_LOOP_7604
END7825:
    nop
    br END7829
ELSE7828:
    nop
    ldloc I7602
    stloc CELL_TMP7826
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7827
    ldloc CELL_TMP7826
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7827
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7827
    pop
    leave TAG_LOOP_7604
END7829:
    nop
    br END7833
ELSE7832:
    nop
    ldloc I7602
    stloc CELL_TMP7830
    ldloc I7602
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7831
    ldloc CELL_TMP7830
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7831
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7831
    pop
    leave TAG_LOOP_7604
END7833:
    nop
END7835:
    nop
    pop
TAG_DONE_7605:
    nop
    ldnull
    pop
    ldloc RESULT7603
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_TRIAL_7600:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_REMOVE_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_REMOVE'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_REMOVE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_REMOVE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7800, object CELL_TMP7799, object COUNT7595, object CLASS7594, object TEMP7792, object IDX7593, object K7590, object END7589)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END7589
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K7590
TAG_LOOP_7591:
    nop
    ldloc END7589
    ldloc K7590
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7788
    ldnull
    br END7789
TRUE7788:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7789:
    nop
    ldnull
    ceq
    brtrue ELSE7793
    leave TAG_DONE_7592
    br END7794
ELSE7793:
    nop
    ldnull
END7794:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K7590
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE7797
    ldarg 1
    ldloc K7590
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX7593
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX7593
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7790
    ldnull
    br END7791
TRUE7790:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7791:
    nop
    ldnull
    ceq
    brtrue ELSE7795
    ldnull
    br END7796
ELSE7795:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX7593
    ldnull
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END7796:
    nop
    br END7798
ELSE7797:
    nop
    ldnull
END7798:
    nop
    pop
    ldloc K7590
    stloc CELL_TMP7799
    ldloc K7590
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7800
    ldloc CELL_TMP7799
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7800
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7800
    pop
    leave TAG_LOOP_7591
    pop
TAG_DONE_7592:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS7594
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS7594
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT7595
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS7594
    ldloc COUNT7595
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    ret
BLOCK_END_P_REMOVE_7587:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_PLACE_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_PLACE'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_PLACE'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_PLACE_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7787, object CELL_TMP7786, object CELL_VAL_TMP7781, object CELL_TMP7780, object CELL_VAL_TMP7779, object CELL_TMP7778, object CELL_VAL_TMP7777, object CELL_TMP7776, object TEMP7769, object TEMP7768, object TEMP7764, object RESULT7579, object K27578, object COUNT7577, object CLASS7576, object TEMP7761, object IDX7575, object K7572, object END7571)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END7571
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K7572
TAG_LOOP_7573:
    nop
    ldloc END7571
    ldloc K7572
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7757
    ldnull
    br END7758
TRUE7757:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7758:
    nop
    ldnull
    ceq
    brtrue ELSE7770
    leave TAG_DONE_7574
    br END7771
ELSE7770:
    nop
    ldnull
END7771:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K7572
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE7774
    ldarg 1
    ldloc K7572
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX7575
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX7575
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7759
    ldnull
    br END7760
TRUE7759:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7760:
    nop
    ldnull
    ceq
    brtrue ELSE7772
    ldnull
    br END7773
ELSE7772:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX7575
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
END7773:
    nop
    br END7775
ELSE7774:
    nop
    ldnull
END7775:
    nop
    pop
    ldloc K7572
    stloc CELL_TMP7776
    ldloc K7572
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7777
    ldloc CELL_TMP7776
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7777
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7777
    pop
    leave TAG_LOOP_7573
    pop
TAG_DONE_7574:
    nop
    ldnull
    pop
    ldsfld object Program::'_P_CLASS_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc CLASS7576
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS7576
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc COUNT7577
    ldsfld object Program::'_P_PIECECOUNT_'
    ldloc CLASS7576
    ldloc COUNT7577
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    sub
    box int32
    call object [LispBase]Lisp.Vector::'Aset'(object, object, object)
    pop
    ldarg 1
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K27578
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT7579
TAG_LOOP2_7580:
    nop
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc K27578
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7762
    ldnull
    br END7763
TRUE7762:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7763:
    nop
    ldnull
    ceq
    brtrue ELSE7784
    ldloc RESULT7579
    stloc CELL_TMP7778
    ldnull
    stloc CELL_VAL_TMP7779
    ldloc CELL_TMP7778
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7779
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7779
    pop
    leave TAG_DONE2_7581
    br END7785
ELSE7784:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc K27578
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue TRUE7765
    ldnull
    br END7766
TRUE7765:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7767'
END7766:
    nop
    ldnull
    ceq
    brtrue ELSE7782
    ldloc RESULT7579
    stloc CELL_TMP7780
    ldloc K27578
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stloc CELL_VAL_TMP7781
    ldloc CELL_TMP7780
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7781
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7781
    pop
    leave TAG_DONE2_7581
    br END7783
ELSE7782:
    nop
    ldnull
END7783:
    nop
END7785:
    nop
    pop
    ldloc K27578
    stloc CELL_TMP7786
    ldloc K27578
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7787
    ldloc CELL_TMP7786
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7787
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7787
    pop
    leave TAG_LOOP2_7580
    pop
TAG_DONE2_7581:
    nop
    ldnull
    pop
    ldloc RESULT7579
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_PLACE_7569:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 32
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 31
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 30
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 29
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 28
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 27
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 26
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 25
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 24
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 23
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 22
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 21
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 20
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 19
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 18
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 17
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 16
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 15
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 14
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 13
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 12
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 11
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 10
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 9
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'P_FIT_Body'(object, object)
    ret
}

.method public static hidebysig object 'P_FIT'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'P_FIT'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'P_FIT_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CELL_VAL_TMP7756, object CELL_TMP7755, object CELL_VAL_TMP7748, object CELL_TMP7747, object CELL_VAL_TMP7746, object CELL_TMP7745, object CELL_VAL_TMP7742, object CELL_TMP7741, object TEMP7740, object TEMP7739, object TEMP7738, object IDX7563, object TEMP7735, object RESULT7560, object K7559, object END7558)
    ldsfld object Program::'_P_PIECEMAX_'
    ldarg 0
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    stloc END7558
    ldc.i4 0
    box int32
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc K7559
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc RESULT7560
TAG_LOOP_7561:
    nop
    ldloc END7558
    ldloc K7559
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7731
    ldnull
    br END7732
TRUE7731:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7732:
    nop
    ldnull
    ceq
    brtrue ELSE7743
    ldloc RESULT7560
    stloc CELL_TMP7741
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T7734'
    stloc CELL_VAL_TMP7742
    ldloc CELL_TMP7741
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7742
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7742
    pop
    leave TAG_DONE_7562
    br END7744
ELSE7743:
    nop
    ldnull
END7744:
    nop
    pop
    ldsfld object Program::'_P_P_'
    ldarg 0
    ldc.i4 512
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    mul
    box int32
    ldloc K7559
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE7753
    ldarg 1
    ldloc K7559
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc IDX7563
    ldsfld object Program::'_PUZZLE_SIZE_'
    ldloc IDX7563
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    clt
    brtrue TRUE7736
    ldnull
    br END7737
TRUE7736:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S7733'
END7737:
    nop
    ldnull
    ceq
    brtrue ELSE7751
    ldloc RESULT7560
    stloc CELL_TMP7745
    ldnull
    stloc CELL_VAL_TMP7746
    ldloc CELL_TMP7745
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7746
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7746
    pop
    leave TAG_DONE_7562
    br END7752
ELSE7751:
    nop
    ldsfld object Program::'_P_PUZZL_'
    ldloc IDX7563
    call object [LispBase]Lisp.Vector::'Aref'(object, object)
    ldnull
    ceq
    brtrue ELSE7749
    ldloc RESULT7560
    stloc CELL_TMP7747
    ldnull
    stloc CELL_VAL_TMP7748
    ldloc CELL_TMP7747
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7748
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7748
    pop
    leave TAG_DONE_7562
    br END7750
ELSE7749:
    nop
    ldnull
END7750:
    nop
END7752:
    nop
    br END7754
ELSE7753:
    nop
    ldnull
END7754:
    nop
    pop
    ldloc K7559
    stloc CELL_TMP7755
    ldloc K7559
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldc.i4 1
    box int32
    stsfld object Program::'TEMP_B'
    unbox.any int32
    ldsfld object Program::'TEMP_B'
    unbox.any int32
    add
    box int32
    stloc CELL_VAL_TMP7756
    ldloc CELL_TMP7755
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP7756
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP7756
    pop
    leave TAG_LOOP_7561
    pop
TAG_DONE_7562:
    nop
    ldnull
    pop
    ldloc RESULT7560
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ret
BLOCK_END_P_FIT_7556:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    ldc.i4 511
    box int32
    dup
    stsfld object Program::'_PUZZLE_SIZE_'
    pop
    ldc.i4 3
    box int32
    dup
    stsfld object Program::'_PUZZLE_CLASSMAX_'
    pop
    ldc.i4 12
    box int32
    dup
    stsfld object Program::'_PUZZLE_TYPEMAX_'
    pop
    ldc.i4 8
    box int32
    dup
    stsfld object Program::'_PUZZLE_DEE_'
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_III_'
    pop
    ldc.i4 0
    box int32
    dup
    stsfld object Program::'_KOUNT_'
    pop
    ldc.i4 4
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PIECECOUNT_'
    pop
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_CLASS_'
    pop
    ldc.i4 13
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PIECEMAX_'
    pop
    ldc.i4 512
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_PUZZL_'
    pop
    ldc.i4 6656
    box int32
    call object [LispBase]Lisp.Vector::'MakeArray'(object)
    dup
    stsfld object Program::'_P_P_'
    pop
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

