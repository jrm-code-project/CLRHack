.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'ClrExplicitFormsTest' {}
.module 'ClrExplicitFormsTest.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'A'
    .field public static object 'N'
    .field public static object 'CLR_CALL_VIRT'
    .field public static object 'P'
    .field public static object 'CLR_NEW'
    .field public static object 'SELF'
    .field public static object 'PERSON_INLINE_METHOD'
    .field public static object 'CLR_DEFMETHOD'
    .field public static object 'PERSON_AGE'
    .field public static object 'AGE'
    .field public static object 'PERSON_NAME'
    .field public static object 'NAME'
    .field public static object 'PERSON'
    .field public static object 'CLR_DEFCLASS'
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1215'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ACCESSOR1212'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'A'
    ldnull
    stsfld object Program::'N'
    ldnull
    stsfld object Program::'CLR_CALL_VIRT'
    ldnull
    stsfld object Program::'P'
    ldnull
    stsfld object Program::'CLR_NEW'
    ldnull
    stsfld object Program::'SELF'
    ldnull
    stsfld object Program::'PERSON_INLINE_METHOD'
    ldnull
    stsfld object Program::'CLR_DEFMETHOD'
    ldnull
    stsfld object Program::'PERSON_AGE'
    ldnull
    stsfld object Program::'AGE'
    ldnull
    stsfld object Program::'PERSON_NAME'
    ldnull
    stsfld object Program::'NAME'
    ldnull
    stsfld object Program::'PERSON'
    ldnull
    stsfld object Program::'CLR_DEFCLASS'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1215'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ACCESSOR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1212'
    ret
}

.method public static hidebysig void 'Main'() cil managed
{
    .entrypoint
    .maxstack 8
    .locals init (object FN_TMP1270, object FN_TMP1266, object FN_TMP1262, object FN_TMP1258, object FN_TMP1254, object FN_TMP1250, object FN_TMP1246, object FN_TMP1242, object FN_TMP1238, object FN_TMP1234, object FN_TMP1230, object FN_TMP1226, object FN_TMP1222, object FN_TMP1218)
    call void [LispBase]Lisp.MopRuntime::'Initialize'()
    ldsfld object Program::'CLR_DEFCLASS'
    stloc FN_TMP1218
    ldloc FN_TMP1218
    brtrue FN_NULL1219
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1218
FN_NULL1219:
    nop
    ldloc FN_TMP1218
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1220
    pop
    ldstr "Attempted to call non-function object in CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1220:
    nop
FN_AFTER1221:
    nop
    ldsfld object Program::'PERSON'
    ldnull
    ldsfld object Program::'NAME'
    stloc FN_TMP1226
    ldloc FN_TMP1226
    brtrue FN_NULL1227
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1226
FN_NULL1227:
    nop
    ldloc FN_TMP1226
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1228
    pop
    ldstr "Attempted to call non-function object in NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1228:
    nop
FN_AFTER1229:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1212'
    ldsfld object Program::'PERSON_NAME'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc FN_TMP1222
    ldloc FN_TMP1222
    brtrue FN_NULL1223
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1222
FN_NULL1223:
    nop
    ldloc FN_TMP1222
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1224
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1224:
    nop
FN_AFTER1225:
    nop
    ldsfld object Program::'AGE'
    stloc FN_TMP1230
    ldloc FN_TMP1230
    brtrue FN_NULL1231
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1230
FN_NULL1231:
    nop
    ldloc FN_TMP1230
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1232
    pop
    ldstr "Attempted to call non-function object in AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1232:
    nop
FN_AFTER1233:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1212'
    ldsfld object Program::'PERSON_AGE'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_DEFMETHOD'
    stloc FN_TMP1234
    ldloc FN_TMP1234
    brtrue FN_NULL1235
    ldstr "Undefined function: CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1234
FN_NULL1235:
    nop
    ldloc FN_TMP1234
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1236
    pop
    ldstr "Attempted to call non-function object in CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1236:
    nop
FN_AFTER1237:
    nop
    ldsfld object Program::'PERSON_INLINE_METHOD'
    ldsfld object Program::'SELF'
    stloc FN_TMP1242
    ldloc FN_TMP1242
    brtrue FN_NULL1243
    ldstr "Undefined function: SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1242
FN_NULL1243:
    nop
    ldloc FN_TMP1242
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1244
    pop
    ldstr "Attempted to call non-function object in SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1244:
    nop
FN_AFTER1245:
    nop
    ldsfld object Program::'PERSON'
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc FN_TMP1238
    ldloc FN_TMP1238
    brtrue FN_NULL1239
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1238
FN_NULL1239:
    nop
    ldloc FN_TMP1238
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1240
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1240:
    nop
FN_AFTER1241:
    nop
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    ldstr "INLINE-METHOD-OK"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_NEW'
    stloc FN_TMP1246
    ldloc FN_TMP1246
    brtrue FN_NULL1247
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1246
FN_NULL1247:
    nop
    ldloc FN_TMP1246
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1248
    pop
    ldstr "Attempted to call non-function object in CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1248:
    nop
FN_AFTER1249:
    nop
    ldstr "PERSON"
    ldnull
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    dup
    stsfld object Program::'P'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1250
    ldloc FN_TMP1250
    brtrue FN_NULL1251
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1250
FN_NULL1251:
    nop
    ldloc FN_TMP1250
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1252
    pop
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1252:
    nop
FN_AFTER1253:
    nop
    ldsfld object Program::'P'
    ldstr "PERSON"
    ldstr "set_person_name"
    ldstr "void"
    stloc FN_TMP1254
    ldloc FN_TMP1254
    brtrue FN_NULL1255
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1254
FN_NULL1255:
    nop
    ldloc FN_TMP1254
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1256
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1256:
    nop
FN_AFTER1257:
    nop
    ldstr "object"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldstr "Ada"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1258
    ldloc FN_TMP1258
    brtrue FN_NULL1259
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1258
FN_NULL1259:
    nop
    ldloc FN_TMP1258
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1260
    pop
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1260:
    nop
FN_AFTER1261:
    nop
    ldsfld object Program::'P'
    ldstr "PERSON"
    ldstr "set_person_age"
    ldstr "void"
    stloc FN_TMP1262
    ldloc FN_TMP1262
    brtrue FN_NULL1263
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1262
FN_NULL1263:
    nop
    ldloc FN_TMP1262
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1264
    pop
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1264:
    nop
FN_AFTER1265:
    nop
    ldstr "object"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    ldc.i4 42
    box int32
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1266
    ldloc FN_TMP1266
    brtrue FN_NULL1267
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1266
FN_NULL1267:
    nop
    ldloc FN_TMP1266
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1268
    pop
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1268:
    nop
FN_AFTER1269:
    nop
    ldsfld object Program::'P'
    ldstr "PERSON"
    ldstr "get_person_name"
    ldstr "object"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'N'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1270
    ldloc FN_TMP1270
    brtrue FN_NULL1271
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1270
FN_NULL1271:
    nop
    ldloc FN_TMP1270
    isinst [LispBase]Lisp.Closure
    dup
    brtrue FN_TYPE_OK1272
    pop
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
FN_TYPE_OK1272:
    nop
FN_AFTER1273:
    nop
    ldsfld object Program::'P'
    ldstr "PERSON"
    ldstr "get_person_age"
    ldstr "object"
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'A'
    pop
    ldsfld object Program::'N'
    ldstr "Ada"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1213
    ldnull
    br END1214
TRUE1213:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1215'
END1214:
    nop
    ldnull
    ceq
    brtrue ELSE1276
    ldsfld object Program::'A'
    ldc.i4 42
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1216
    ldnull
    br END1217
TRUE1216:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1215'
END1217:
    nop
    ldnull
    ceq
    brtrue ELSE1274
    ldstr "CLR-EXPLICIT-FORMS-OK"
    br END1275
ELSE1274:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-AGE"
END1275:
    nop
    br END1277
ELSE1276:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-NAME"
END1277:
    nop
    pop
    ret
}

} // end of class Program

