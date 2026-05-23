.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'UwpTest' {}
.module 'UwpTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_UWP_NESTED_GO'
    .field public static object 'TEST_UWP_BASIC'
    .field public static object 'EQ'
    .field public static object '_CELL_VALUE'
    .field public static object '_SET_CELL_VALUE_'
    .field public static object '_MAKE_CELL'
    .field public static object 'PRINT'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S3033'
    .field public static class [LispBase]Lisp.Symbol 'SYM_T3029'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_UWP_NESTED_GO'
    ldnull
    stsfld object Program::'TEST_UWP_BASIC'
    ldnull
    stsfld object Program::'EQ'
    ldnull
    stsfld object Program::'_CELL_VALUE'
    ldnull
    stsfld object Program::'_SET_CELL_VALUE_'
    ldnull
    stsfld object Program::'_MAKE_CELL'
    ldnull
    stsfld object Program::'PRINT'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S3033'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_T3029'
    ret
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 8
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'MAIN'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
BLOCK_END_MAIN_2754:
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
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_NESTED_GO'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    .locals init (object TEMP3030, object UWP_V633028, object UWP_V623027, object UWP_V613026, object UWP_V603025, object UWP_V593024, object UWP_V583023, object UWP_V573022, object UWP_V563021, object UWP_V553020, object UWP_V543019, object UWP_V533018, object UWP_V523017, object UWP_V513016, object UWP_V503015, object UWP_V493014, object UWP_V483013, object UWP_V473012, object UWP_V463011, object UWP_V453010, object UWP_V443009, object UWP_V433008, object UWP_V423007, object UWP_V413006, object UWP_V403005, object UWP_V393004, object UWP_V383003, object UWP_V373002, object UWP_V363001, object UWP_V353000, object UWP_V342999, object UWP_V332998, object UWP_V322997, object UWP_V312996, object UWP_V302995, object UWP_V292994, object UWP_V282993, object UWP_V272992, object UWP_V262991, object UWP_V252990, object UWP_V242989, object UWP_V232988, object UWP_V222987, object UWP_V212986, object UWP_V202985, object UWP_V192984, object UWP_V182983, object UWP_V172982, object UWP_V162981, object UWP_V152980, object UWP_V142979, object UWP_V132978, object UWP_V122977, object UWP_V112976, object UWP_V102975, object UWP_V92974, object UWP_V82973, object UWP_V72972, object UWP_V62971, object UWP_V52970, object UWP_V42969, object UWP_V32968, object UWP_V22967, object UWP_V12966, object UWP_COUNT2965, object UWP_RESULT2964, object CLEANUP_RUN2750)
    ldstr "Testing unwind-protect with GO..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldnull
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc CLEANUP_RUN2750
    .try
    {
    ldstr "About to go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    leave TAG_TARGET_2751
    stloc UWP_RESULT2964
    leave DONE3034
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2965
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12966
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22967
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32968
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42969
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52970
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62971
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72972
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82973
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92974
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102975
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112976
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122977
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132978
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142979
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152980
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162981
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172982
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182983
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192984
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202985
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212986
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222987
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232988
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242989
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252990
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262991
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272992
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282993
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292994
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302995
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312996
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322997
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332998
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342999
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V353000
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V363001
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V373002
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V383003
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V393004
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V403005
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V413006
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V423007
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V433008
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V443009
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V453010
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V463011
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V473012
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V483013
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V493014
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V503015
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V513016
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V523017
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V533018
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V543019
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V553020
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V563021
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V573022
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V583023
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V593024
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V603025
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V613026
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V623027
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V633028
    ldstr "Running cleanup from go"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2750
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3029'
    stloc TEMP3030
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP3030
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP3030
    pop
    ldloc UWP_COUNT2965
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12966
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22967
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32968
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42969
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52970
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62971
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72972
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82973
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92974
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102975
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112976
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122977
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132978
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142979
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152980
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162981
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172982
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182983
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192984
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202985
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212986
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222987
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232988
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242989
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252990
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262991
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272992
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282993
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292994
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302995
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312996
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322997
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332998
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342999
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V353000
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V363001
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V373002
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V383003
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V393004
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V403005
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V413006
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V423007
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V433008
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V443009
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V453010
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V463011
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V473012
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V483013
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V493014
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V503015
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V513016
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V523017
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V533018
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V543019
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V553020
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V563021
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V573022
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V583023
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V593024
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V603025
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V613026
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V623027
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V633028
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE3034:
    ldloc UWP_RESULT2964
    pop
TAG_TARGET_2751:
    nop
    ldstr "Reached target"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc CLEANUP_RUN2750
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_T3029'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE3031
    ldnull
    br END3032
TRUE3031:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S3033'
END3032:
    nop
    ldnull
    ceq
    brtrue ELSE3035
    ldstr "SUCCESS: Cleanup run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    br END3036
ELSE3035:
    nop
    ldstr "FAILURE: Cleanup NOT run!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
END3036:
    nop
    pop
    ldnull
    ret
BLOCK_END_TEST_UWP_NESTED_GO_2748:
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
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 7
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 6
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 5
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 4
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 3
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object, object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 2
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
}

.method public static hidebysig object 'TEST_UWP_BASIC'(object) cil managed
{
    .maxstack 8
    ldc.i4 0
    ldc.i4 1
    newobj instance void [LispBase]Lisp.WrongNumberOfArgumentsException::'.ctor'(int32, int32)
    throw
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
    .locals init (object RES2745, object TEMP2962, object TEMP2961, object UWP_V632960, object UWP_V622959, object UWP_V612958, object UWP_V602957, object UWP_V592956, object UWP_V582955, object UWP_V572954, object UWP_V562953, object UWP_V552952, object UWP_V542951, object UWP_V532950, object UWP_V522949, object UWP_V512948, object UWP_V502947, object UWP_V492946, object UWP_V482945, object UWP_V472944, object UWP_V462943, object UWP_V452942, object UWP_V442941, object UWP_V432940, object UWP_V422939, object UWP_V412938, object UWP_V402937, object UWP_V392936, object UWP_V382935, object UWP_V372934, object UWP_V362933, object UWP_V352932, object UWP_V342931, object UWP_V332930, object UWP_V322929, object UWP_V312928, object UWP_V302927, object UWP_V292926, object UWP_V282925, object UWP_V272924, object UWP_V262923, object UWP_V252922, object UWP_V242921, object UWP_V232920, object UWP_V222919, object UWP_V212918, object UWP_V202917, object UWP_V192916, object UWP_V182915, object UWP_V172914, object UWP_V162913, object UWP_V152912, object UWP_V142911, object UWP_V132910, object UWP_V122909, object UWP_V112908, object UWP_V102907, object UWP_V92906, object UWP_V82905, object UWP_V72904, object UWP_V62903, object UWP_V52902, object UWP_V42901, object UWP_V32900, object UWP_V22899, object UWP_V12898, object UWP_COUNT2897, object UWP_RESULT2896, object X2744)
    ldstr "Testing unwind-protect basic..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "initial"
    newobj instance void [LispBase]Lisp.ValueCell::'.ctor'(object)
    stloc X2744
    .try
    {
    ldstr "Inside protected"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2744
    ldstr "mutated"
    stloc TEMP2961
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2961
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2961
    pop
    ldstr "result"
    stloc UWP_RESULT2896
    leave DONE2963
    }
    finally
    {
    ldsfld int32 [LispBase]Lisp.Values::ReturnCount
    stloc UWP_COUNT2897
    ldsfld object [LispBase]Lisp.Values::Value1
    stloc UWP_V12898
    ldsfld object [LispBase]Lisp.Values::Value2
    stloc UWP_V22899
    ldsfld object [LispBase]Lisp.Values::Value3
    stloc UWP_V32900
    ldsfld object [LispBase]Lisp.Values::Value4
    stloc UWP_V42901
    ldsfld object [LispBase]Lisp.Values::Value5
    stloc UWP_V52902
    ldsfld object [LispBase]Lisp.Values::Value6
    stloc UWP_V62903
    ldsfld object [LispBase]Lisp.Values::Value7
    stloc UWP_V72904
    ldsfld object [LispBase]Lisp.Values::Value8
    stloc UWP_V82905
    ldsfld object [LispBase]Lisp.Values::Value9
    stloc UWP_V92906
    ldsfld object [LispBase]Lisp.Values::Value10
    stloc UWP_V102907
    ldsfld object [LispBase]Lisp.Values::Value11
    stloc UWP_V112908
    ldsfld object [LispBase]Lisp.Values::Value12
    stloc UWP_V122909
    ldsfld object [LispBase]Lisp.Values::Value13
    stloc UWP_V132910
    ldsfld object [LispBase]Lisp.Values::Value14
    stloc UWP_V142911
    ldsfld object [LispBase]Lisp.Values::Value15
    stloc UWP_V152912
    ldsfld object [LispBase]Lisp.Values::Value16
    stloc UWP_V162913
    ldsfld object [LispBase]Lisp.Values::Value17
    stloc UWP_V172914
    ldsfld object [LispBase]Lisp.Values::Value18
    stloc UWP_V182915
    ldsfld object [LispBase]Lisp.Values::Value19
    stloc UWP_V192916
    ldsfld object [LispBase]Lisp.Values::Value20
    stloc UWP_V202917
    ldsfld object [LispBase]Lisp.Values::Value21
    stloc UWP_V212918
    ldsfld object [LispBase]Lisp.Values::Value22
    stloc UWP_V222919
    ldsfld object [LispBase]Lisp.Values::Value23
    stloc UWP_V232920
    ldsfld object [LispBase]Lisp.Values::Value24
    stloc UWP_V242921
    ldsfld object [LispBase]Lisp.Values::Value25
    stloc UWP_V252922
    ldsfld object [LispBase]Lisp.Values::Value26
    stloc UWP_V262923
    ldsfld object [LispBase]Lisp.Values::Value27
    stloc UWP_V272924
    ldsfld object [LispBase]Lisp.Values::Value28
    stloc UWP_V282925
    ldsfld object [LispBase]Lisp.Values::Value29
    stloc UWP_V292926
    ldsfld object [LispBase]Lisp.Values::Value30
    stloc UWP_V302927
    ldsfld object [LispBase]Lisp.Values::Value31
    stloc UWP_V312928
    ldsfld object [LispBase]Lisp.Values::Value32
    stloc UWP_V322929
    ldsfld object [LispBase]Lisp.Values::Value33
    stloc UWP_V332930
    ldsfld object [LispBase]Lisp.Values::Value34
    stloc UWP_V342931
    ldsfld object [LispBase]Lisp.Values::Value35
    stloc UWP_V352932
    ldsfld object [LispBase]Lisp.Values::Value36
    stloc UWP_V362933
    ldsfld object [LispBase]Lisp.Values::Value37
    stloc UWP_V372934
    ldsfld object [LispBase]Lisp.Values::Value38
    stloc UWP_V382935
    ldsfld object [LispBase]Lisp.Values::Value39
    stloc UWP_V392936
    ldsfld object [LispBase]Lisp.Values::Value40
    stloc UWP_V402937
    ldsfld object [LispBase]Lisp.Values::Value41
    stloc UWP_V412938
    ldsfld object [LispBase]Lisp.Values::Value42
    stloc UWP_V422939
    ldsfld object [LispBase]Lisp.Values::Value43
    stloc UWP_V432940
    ldsfld object [LispBase]Lisp.Values::Value44
    stloc UWP_V442941
    ldsfld object [LispBase]Lisp.Values::Value45
    stloc UWP_V452942
    ldsfld object [LispBase]Lisp.Values::Value46
    stloc UWP_V462943
    ldsfld object [LispBase]Lisp.Values::Value47
    stloc UWP_V472944
    ldsfld object [LispBase]Lisp.Values::Value48
    stloc UWP_V482945
    ldsfld object [LispBase]Lisp.Values::Value49
    stloc UWP_V492946
    ldsfld object [LispBase]Lisp.Values::Value50
    stloc UWP_V502947
    ldsfld object [LispBase]Lisp.Values::Value51
    stloc UWP_V512948
    ldsfld object [LispBase]Lisp.Values::Value52
    stloc UWP_V522949
    ldsfld object [LispBase]Lisp.Values::Value53
    stloc UWP_V532950
    ldsfld object [LispBase]Lisp.Values::Value54
    stloc UWP_V542951
    ldsfld object [LispBase]Lisp.Values::Value55
    stloc UWP_V552952
    ldsfld object [LispBase]Lisp.Values::Value56
    stloc UWP_V562953
    ldsfld object [LispBase]Lisp.Values::Value57
    stloc UWP_V572954
    ldsfld object [LispBase]Lisp.Values::Value58
    stloc UWP_V582955
    ldsfld object [LispBase]Lisp.Values::Value59
    stloc UWP_V592956
    ldsfld object [LispBase]Lisp.Values::Value60
    stloc UWP_V602957
    ldsfld object [LispBase]Lisp.Values::Value61
    stloc UWP_V612958
    ldsfld object [LispBase]Lisp.Values::Value62
    stloc UWP_V622959
    ldsfld object [LispBase]Lisp.Values::Value63
    stloc UWP_V632960
    ldstr "Inside cleanup"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2744
    ldstr "cleaned"
    stloc TEMP2962
    castclass [LispBase]Lisp.ValueCell
    ldloc TEMP2962
    stfld object [LispBase]Lisp.ValueCell::Value
    ldloc TEMP2962
    pop
    ldloc UWP_COUNT2897
    stsfld int32 [LispBase]Lisp.Values::ReturnCount
    ldloc UWP_V12898
    stsfld object [LispBase]Lisp.Values::Value1
    ldloc UWP_V22899
    stsfld object [LispBase]Lisp.Values::Value2
    ldloc UWP_V32900
    stsfld object [LispBase]Lisp.Values::Value3
    ldloc UWP_V42901
    stsfld object [LispBase]Lisp.Values::Value4
    ldloc UWP_V52902
    stsfld object [LispBase]Lisp.Values::Value5
    ldloc UWP_V62903
    stsfld object [LispBase]Lisp.Values::Value6
    ldloc UWP_V72904
    stsfld object [LispBase]Lisp.Values::Value7
    ldloc UWP_V82905
    stsfld object [LispBase]Lisp.Values::Value8
    ldloc UWP_V92906
    stsfld object [LispBase]Lisp.Values::Value9
    ldloc UWP_V102907
    stsfld object [LispBase]Lisp.Values::Value10
    ldloc UWP_V112908
    stsfld object [LispBase]Lisp.Values::Value11
    ldloc UWP_V122909
    stsfld object [LispBase]Lisp.Values::Value12
    ldloc UWP_V132910
    stsfld object [LispBase]Lisp.Values::Value13
    ldloc UWP_V142911
    stsfld object [LispBase]Lisp.Values::Value14
    ldloc UWP_V152912
    stsfld object [LispBase]Lisp.Values::Value15
    ldloc UWP_V162913
    stsfld object [LispBase]Lisp.Values::Value16
    ldloc UWP_V172914
    stsfld object [LispBase]Lisp.Values::Value17
    ldloc UWP_V182915
    stsfld object [LispBase]Lisp.Values::Value18
    ldloc UWP_V192916
    stsfld object [LispBase]Lisp.Values::Value19
    ldloc UWP_V202917
    stsfld object [LispBase]Lisp.Values::Value20
    ldloc UWP_V212918
    stsfld object [LispBase]Lisp.Values::Value21
    ldloc UWP_V222919
    stsfld object [LispBase]Lisp.Values::Value22
    ldloc UWP_V232920
    stsfld object [LispBase]Lisp.Values::Value23
    ldloc UWP_V242921
    stsfld object [LispBase]Lisp.Values::Value24
    ldloc UWP_V252922
    stsfld object [LispBase]Lisp.Values::Value25
    ldloc UWP_V262923
    stsfld object [LispBase]Lisp.Values::Value26
    ldloc UWP_V272924
    stsfld object [LispBase]Lisp.Values::Value27
    ldloc UWP_V282925
    stsfld object [LispBase]Lisp.Values::Value28
    ldloc UWP_V292926
    stsfld object [LispBase]Lisp.Values::Value29
    ldloc UWP_V302927
    stsfld object [LispBase]Lisp.Values::Value30
    ldloc UWP_V312928
    stsfld object [LispBase]Lisp.Values::Value31
    ldloc UWP_V322929
    stsfld object [LispBase]Lisp.Values::Value32
    ldloc UWP_V332930
    stsfld object [LispBase]Lisp.Values::Value33
    ldloc UWP_V342931
    stsfld object [LispBase]Lisp.Values::Value34
    ldloc UWP_V352932
    stsfld object [LispBase]Lisp.Values::Value35
    ldloc UWP_V362933
    stsfld object [LispBase]Lisp.Values::Value36
    ldloc UWP_V372934
    stsfld object [LispBase]Lisp.Values::Value37
    ldloc UWP_V382935
    stsfld object [LispBase]Lisp.Values::Value38
    ldloc UWP_V392936
    stsfld object [LispBase]Lisp.Values::Value39
    ldloc UWP_V402937
    stsfld object [LispBase]Lisp.Values::Value40
    ldloc UWP_V412938
    stsfld object [LispBase]Lisp.Values::Value41
    ldloc UWP_V422939
    stsfld object [LispBase]Lisp.Values::Value42
    ldloc UWP_V432940
    stsfld object [LispBase]Lisp.Values::Value43
    ldloc UWP_V442941
    stsfld object [LispBase]Lisp.Values::Value44
    ldloc UWP_V452942
    stsfld object [LispBase]Lisp.Values::Value45
    ldloc UWP_V462943
    stsfld object [LispBase]Lisp.Values::Value46
    ldloc UWP_V472944
    stsfld object [LispBase]Lisp.Values::Value47
    ldloc UWP_V482945
    stsfld object [LispBase]Lisp.Values::Value48
    ldloc UWP_V492946
    stsfld object [LispBase]Lisp.Values::Value49
    ldloc UWP_V502947
    stsfld object [LispBase]Lisp.Values::Value50
    ldloc UWP_V512948
    stsfld object [LispBase]Lisp.Values::Value51
    ldloc UWP_V522949
    stsfld object [LispBase]Lisp.Values::Value52
    ldloc UWP_V532950
    stsfld object [LispBase]Lisp.Values::Value53
    ldloc UWP_V542951
    stsfld object [LispBase]Lisp.Values::Value54
    ldloc UWP_V552952
    stsfld object [LispBase]Lisp.Values::Value55
    ldloc UWP_V562953
    stsfld object [LispBase]Lisp.Values::Value56
    ldloc UWP_V572954
    stsfld object [LispBase]Lisp.Values::Value57
    ldloc UWP_V582955
    stsfld object [LispBase]Lisp.Values::Value58
    ldloc UWP_V592956
    stsfld object [LispBase]Lisp.Values::Value59
    ldloc UWP_V602957
    stsfld object [LispBase]Lisp.Values::Value60
    ldloc UWP_V612958
    stsfld object [LispBase]Lisp.Values::Value61
    ldloc UWP_V622959
    stsfld object [LispBase]Lisp.Values::Value62
    ldloc UWP_V632960
    stsfld object [LispBase]Lisp.Values::Value63
    endfinally
    }
DONE2963:
    ldloc UWP_RESULT2896
    stloc RES2745
    ldstr "Result of uwp (should be result):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc RES2745
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldstr "Value of x (should be cleaned):"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc X2744
    castclass [LispBase]Lisp.ValueCell
    ldfld object [LispBase]Lisp.ValueCell::Value
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_TEST_UWP_BASIC_2742:
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

