.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'test-uwp' {}
.module 'test-uwp.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static class [LispBase]Lisp.Symbol 'SYM_S2615'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T2611'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T2611'
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
BLOCK_END_MAIN_2326:
    nop
    ldnull
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
    .locals init (object CELL_VAL_TMP2618, object CELL_TMP2617, object TEMP2612, object UWP_V632610, object UWP_V622609, object UWP_V612608, object UWP_V602607, object UWP_V592606, object UWP_V582605, object UWP_V572604, object UWP_V562603, object UWP_V552602, object UWP_V542601, object UWP_V532600, object UWP_V522599, object UWP_V512598, object UWP_V502597, object UWP_V492596, object UWP_V482595, object UWP_V472594, object UWP_V462593, object UWP_V452592, object UWP_V442591, object UWP_V432590, object UWP_V422589, object UWP_V412588, object UWP_V402587, object UWP_V392586, object UWP_V382585, object UWP_V372584, object UWP_V362583, object UWP_V352582, object UWP_V342581, object UWP_V332580, object UWP_V322579, object UWP_V312578, object UWP_V302577, object UWP_V292576, object UWP_V282575, object UWP_V272574, object UWP_V262573, object UWP_V252572, object UWP_V242571, object UWP_V232570, object UWP_V222569, object UWP_V212568, object UWP_V202567, object UWP_V192566, object UWP_V182565, object UWP_V172564, object UWP_V162563, object UWP_V152562, object UWP_V142561, object UWP_V132560, object UWP_V122559, object UWP_V112558, object UWP_V102557, object UWP_V92556, object UWP_V82555, object UWP_V72554, object UWP_V62553, object UWP_V52552, object UWP_V42551, object UWP_V32550, object UWP_V22549, object UWP_V12548, object UWP_COUNT2547, object UWP_RESULT2546, object CLEANUP_RUN2321)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2321
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2322
    stloc UWP_RESULT2546
    leave DONE2616
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2547
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12548
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22549
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32550
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42551
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52552
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62553
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72554
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82555
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92556
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102557
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112558
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122559
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132560
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142561
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152562
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162563
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172564
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182565
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192566
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202567
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212568
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222569
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232570
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242571
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252572
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262573
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272574
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282575
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292576
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302577
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312578
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322579
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332580
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342581
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352582
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362583
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372584
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382585
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392586
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402587
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412588
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422589
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432590
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442591
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452592
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462593
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472594
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482595
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492596
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502597
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512598
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522599
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532600
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542601
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552602
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562603
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572604
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582605
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592606
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602607
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612608
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622609
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632610
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2321
    stloc CELL_TMP2617
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2611'
    stloc CELL_VAL_TMP2618
    ldloc CELL_TMP2617
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2618
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2618
    pop
    ldloc UWP_COUNT2547
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12548
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22549
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32550
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42551
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52552
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62553
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72554
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82555
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92556
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102557
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112558
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122559
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132560
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142561
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152562
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162563
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172564
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182565
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192566
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202567
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212568
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222569
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232570
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242571
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252572
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262573
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272574
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282575
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292576
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302577
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312578
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322579
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332580
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342581
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352582
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362583
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372584
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382585
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392586
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402587
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412588
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422589
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432590
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442591
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452592
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462593
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472594
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482595
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492596
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502597
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512598
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522599
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532600
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542601
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552602
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562603
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572604
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582605
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592606
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602607
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612608
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622609
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632610
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2616:
    ldloc UWP_RESULT2546
    pop
TAG_TARGET_2322:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2321
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T2611'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE2613
    ldnull
    br END2614
TRUE2613:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S2615'
END2614:
    nop
    ldnull
    ceq
    brtrue ELSE2619
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END2620
ELSE2619:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END2620:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2319:
    nop
    ldnull
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
    .locals init (object CELL_VAL_TMP2545, object CELL_TMP2544, object CELL_VAL_TMP2543, object CELL_TMP2542, object RES2315, object TEMP2540, object TEMP2539, object UWP_V632538, object UWP_V622537, object UWP_V612536, object UWP_V602535, object UWP_V592534, object UWP_V582533, object UWP_V572532, object UWP_V562531, object UWP_V552530, object UWP_V542529, object UWP_V532528, object UWP_V522527, object UWP_V512526, object UWP_V502525, object UWP_V492524, object UWP_V482523, object UWP_V472522, object UWP_V462521, object UWP_V452520, object UWP_V442519, object UWP_V432518, object UWP_V422517, object UWP_V412516, object UWP_V402515, object UWP_V392514, object UWP_V382513, object UWP_V372512, object UWP_V362511, object UWP_V352510, object UWP_V342509, object UWP_V332508, object UWP_V322507, object UWP_V312506, object UWP_V302505, object UWP_V292504, object UWP_V282503, object UWP_V272502, object UWP_V262501, object UWP_V252500, object UWP_V242499, object UWP_V232498, object UWP_V222497, object UWP_V212496, object UWP_V202495, object UWP_V192494, object UWP_V182493, object UWP_V172492, object UWP_V162491, object UWP_V152490, object UWP_V142489, object UWP_V132488, object UWP_V122487, object UWP_V112486, object UWP_V102485, object UWP_V92484, object UWP_V82483, object UWP_V72482, object UWP_V62481, object UWP_V52480, object UWP_V42479, object UWP_V32478, object UWP_V22477, object UWP_V12476, object UWP_COUNT2475, object UWP_RESULT2474, object X2314)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2314
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2314
    stloc CELL_TMP2542
    ldstr "mutated"
    stloc CELL_VAL_TMP2543
    ldloc CELL_TMP2542
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2543
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2543
    pop
    ldstr "result"
    stloc UWP_RESULT2474
    leave DONE2541
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2475
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12476
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22477
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32478
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42479
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52480
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62481
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72482
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82483
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92484
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102485
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112486
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122487
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132488
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142489
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152490
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162491
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172492
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182493
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192494
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202495
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212496
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222497
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232498
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242499
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252500
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262501
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272502
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282503
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292504
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302505
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312506
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322507
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332508
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342509
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352510
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362511
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372512
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382513
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392514
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402515
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412516
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422517
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432518
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442519
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452520
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462521
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472522
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482523
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492524
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502525
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512526
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522527
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532528
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542529
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552530
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562531
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572532
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582533
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592534
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602535
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612536
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622537
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632538
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2314
    stloc CELL_TMP2544
    ldstr "cleaned"
    stloc CELL_VAL_TMP2545
    ldloc CELL_TMP2544
    castclass [LispBase]Lisp.ValueCell
    ldloc CELL_VAL_TMP2545
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc CELL_VAL_TMP2545
    pop
    ldloc UWP_COUNT2475
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12476
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22477
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32478
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42479
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52480
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62481
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72482
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82483
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92484
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102485
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112486
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122487
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132488
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142489
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152490
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162491
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172492
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182493
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192494
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202495
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212496
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222497
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232498
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242499
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252500
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262501
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272502
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282503
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292504
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302505
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312506
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322507
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332508
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342509
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352510
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362511
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372512
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382513
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392514
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402515
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412516
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422517
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432518
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442519
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452520
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462521
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472522
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482523
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492524
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502525
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512526
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522527
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532528
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542529
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552530
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562531
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572532
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582533
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592534
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602535
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612536
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622537
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632538
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2541:
    ldloc UWP_RESULT2474
    stloc RES2315
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2315
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2314
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2312:
    nop
    ldnull
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    call object Program::'MAIN'()
    pop
    ret
}

} // end of class Program

