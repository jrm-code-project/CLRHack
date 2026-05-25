.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ValuesCorruptionTest' {}
.module 'ValuesCorruptionTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3227'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3224'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3223'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3227'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INTERLOPER-2"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3224'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "INTERLOPER-1"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3223'
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_CORRUPTION'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_CORRUPTION_Body'()
    ret
}

.method private static hidebysig object 'TEST_CORRUPTION_Body'() cil managed
{
    .maxstack 8
    .locals init (object VALUES_TEMP_33222, object VALUES_TEMP_23221, object VALUES_TEMP_13220, object V43190, object V33189, object V23188, object V13187)
    ldc.i4.1
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    box int32
    ldc.i4 2
    box int32
    stloc VALUES_TEMP_13220
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3223'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3224'
    call object Program::'RETURN_TWO'(object, object)
    pop
    ldc.i4 3
    box int32
    stloc VALUES_TEMP_23221
    ldc.i4 4
    box int32
    stloc VALUES_TEMP_33222
    ldloc VALUES_TEMP_13220
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc VALUES_TEMP_23221
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc VALUES_TEMP_33222
    stsfld object [LispBase]Lisp.Values::Value3
    ldc.i4 4
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc V13187
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 1
    ble SKIP_VAL3234
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc V23188
    br DONE_VAL3235
SKIP_VAL3234:
    nop
    ldnull
    stloc V23188
DONE_VAL3235:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 2
    ble SKIP_VAL3236
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc V33189
    br DONE_VAL3237
SKIP_VAL3236:
    nop
    ldnull
    stloc V33189
DONE_VAL3237:
    nop
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldc.i4 3
    ble SKIP_VAL3238
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc V43190
    br DONE_VAL3239
SKIP_VAL3238:
    nop
    ldnull
    stloc V43190
DONE_VAL3239:
    nop
    ldloc V13187
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc V23188
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc V33189
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc V43190
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc V13187
    ldc.i4 1
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3225
    ldnull
    br END3226
TRUE3225:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3227'
END3226:
    nop
    ldnull
    ceq
    brtrue ELSE3244
    ldloc V23188
    ldc.i4 2
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3228
    ldnull
    br END3229
TRUE3228:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3227'
END3229:
    nop
    ldnull
    ceq
    brtrue ELSE3242
    ldloc V33189
    ldc.i4 3
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3230
    ldnull
    br END3231
TRUE3230:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3227'
END3231:
    nop
    ldnull
    ceq
    brtrue ELSE3240
    ldloc V43190
    ldc.i4 4
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3232
    ldnull
    br END3233
TRUE3232:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3227'
END3233:
    nop
    br END3241
ELSE3240:
    nop
    ldnull
END3241:
    nop
    br END3243
ELSE3242:
    nop
    ldnull
END3243:
    nop
    br END3245
ELSE3244:
    nop
    ldnull
END3245:
    nop
    ldnull
    ceq
    brtrue ELSE3246
    ldstr "SUCCESS"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE3246:
    nop
    ldstr "FAILURE"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call void [mscorlib]System.Diagnostics.Debugger::'Break'()
    ldnull
    ret
BLOCK_END_TEST_CORRUPTION_3185:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    tail.
    call object Program::'RETURN_TWO_Body'(object, object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'(object) cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'RETURN_TWO'() cil managed
{
    .maxstack 8
    ldc.i4 2
    ldc.i4 0
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method private static hidebysig object 'RETURN_TWO_Body'(object, object) cil managed
{
    .maxstack 8
    .locals init (object VALUES_TEMP_13219)
    ldarg 0
    ldarg 1
    stloc VALUES_TEMP_13219
    ldloc VALUES_TEMP_13219
    stsfld object [LispBase]Lisp.Values::Value1
    ldc.i4 2
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ret
BLOCK_END_RETURN_TWO_3180:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'TEST_CORRUPTION'()
    pop
    ret
}

} // end of class Program

