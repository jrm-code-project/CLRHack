.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ReflectionTest' {}
.module 'ReflectionTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
.method public static hidebysig object 'TEST_ENV'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_ENV'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_ENV_Body'()
    ret
}

.method private static hidebysig object 'TEST_ENV_Body'() cil managed
{
    .maxstack 8
    ldstr "--- test-env ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Machine name:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "System.Environment"
    ldstr "MachineName"
    call object [LispBase]Lisp.Reflection::'GetStaticProperty'(object, string)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "OS Version:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "System.Environment"
    ldstr "OSVersion"
    call object [LispBase]Lisp.Reflection::'GetStaticProperty'(object, string)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_ENV_7561:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_LIST'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_LIST_Body'()
    ret
}

.method private static hidebysig object 'TEST_LIST_Body'() cil managed
{
    .maxstack 8
    .locals init (object REFLECT_ARGS7575, object REFLECT_ARGS7574, object REFLECT_ARGS7573, object REFLECT_ARGS7572, object REFLECT_ARGS7571, object L7557)
    ldstr "--- test-list ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "System.Collections.Generic.List`1[System.String]"
    ldc.i4 0
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7571
    ldloc REFLECT_ARGS7571
    call object [LispBase]Lisp.Reflection::'New'(object, object[])
    stloc L7557
    ldloc L7557
    ldstr "Add"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7572
    ldloc REFLECT_ARGS7572
    ldc.i4 0
    ldstr "Hello"
    stelem.ref
    ldloc REFLECT_ARGS7572
    call object [LispBase]Lisp.Reflection::'InvokeInstance'(object, string, object[])
    pop
    ldloc L7557
    ldstr "Add"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7573
    ldloc REFLECT_ARGS7573
    ldc.i4 0
    ldstr "Reflection"
    stelem.ref
    ldloc REFLECT_ARGS7573
    call object [LispBase]Lisp.Reflection::'InvokeInstance'(object, string, object[])
    pop
    ldstr "List count:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc L7557
    ldstr "Count"
    call object [LispBase]Lisp.Reflection::'GetProperty'(object, string)
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "List items:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc L7557
    ldstr "get_Item"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7574
    ldloc REFLECT_ARGS7574
    ldc.i4 0
    ldc.i4 0
    box int32
    stelem.ref
    ldloc REFLECT_ARGS7574
    call object [LispBase]Lisp.Reflection::'InvokeInstance'(object, string, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc L7557
    ldstr "get_Item"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7575
    ldloc REFLECT_ARGS7575
    ldc.i4 0
    ldc.i4 1
    box int32
    stelem.ref
    ldloc REFLECT_ARGS7575
    call object [LispBase]Lisp.Reflection::'InvokeInstance'(object, string, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_LIST_7555:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    tail.
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    ret
}

.method public static hidebysig object 'TEST_MATH'() cil managed
{
    .maxstack 8
    tail.
    call object Program::'TEST_MATH_Body'()
    ret
}

.method private static hidebysig object 'TEST_MATH_Body'() cil managed
{
    .maxstack 8
    .locals init (object REFLECT_ARGS7570)
    ldstr "--- test-math ---"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Sqrt(16):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "System.Math"
    ldstr "Sqrt"
    ldc.i4 1
    newarr [mscorlib]System.Object
    stloc REFLECT_ARGS7570
    ldloc REFLECT_ARGS7570
    ldc.i4 0
    ldc.i4 16
    box int32
    stelem.ref
    ldloc REFLECT_ARGS7570
    call object [LispBase]Lisp.Reflection::'InvokeStatic'(object, string, object[])
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_MATH_7550:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    call object Program::'TEST_MATH'()
    pop
    call object Program::'TEST_LIST'()
    pop
    call object Program::'TEST_ENV'()
    pop
    ret
}

} // end of class Program

