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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1231'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ACCESSOR1228'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1231'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ACCESSOR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1228'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP1323, object ARG_TMP1322, object ARG_TMP1321, object ARG_TMP1320, object FN_TMP1316, object ARG_TMP1315, object ARG_TMP1314, object ARG_TMP1313, object ARG_TMP1312, object FN_TMP1308, object ARG_TMP1307, object FN_TMP1303, object ARG_TMP1302, object ARG_TMP1301, object ARG_TMP1300, object ARG_TMP1299, object ARG_TMP1298, object FN_TMP1294, object ARG_TMP1293, object FN_TMP1289, object ARG_TMP1288, object ARG_TMP1287, object ARG_TMP1286, object ARG_TMP1285, object ARG_TMP1284, object FN_TMP1280, object ARG_TMP1279, object ARG_TMP1278, object FN_TMP1274, object ARG_TMP1273, object FN_TMP1269, object FN_TMP1265, object ARG_TMP1264, object ARG_TMP1263, object ARG_TMP1262, object FN_TMP1258, object ARG_TMP1257, object ARG_TMP1256, object FN_TMP1252, object ARG_TMP1251, object ARG_TMP1250, object ARG_TMP1249, object FN_TMP1245, object FN_TMP1241, object ARG_TMP1240, object ARG_TMP1239, object ARG_TMP1238, object FN_TMP1234)
    ldstr "COMMON-LISP-USER"
    ldstr "CLR-CALL-VIRT"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'CLR_CALL_VIRT'
    ldstr "COMMON-LISP-USER"
    ldstr "CLR-NEW"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'CLR_NEW'
    ldstr "COMMON-LISP-USER"
    ldstr "SELF"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'SELF'
    ldstr "COMMON-LISP-USER"
    ldstr "CLR-DEFMETHOD"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'CLR_DEFMETHOD'
    ldstr "COMMON-LISP-USER"
    ldstr "AGE"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'AGE'
    ldstr "COMMON-LISP-USER"
    ldstr "NAME"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'NAME'
    ldstr "COMMON-LISP-USER"
    ldstr "CLR-DEFCLASS"
    call object [LispBase]Lisp.Closure::'ResolveFunction'(string, string)
    stsfld object Program::'CLR_DEFCLASS'
    ldsfld object Program::'CLR_DEFCLASS'
    stloc FN_TMP1234
    ldloc FN_TMP1234
    brtrue FN_NULL1235
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1234
FN_NULL1235:
    nop
    ldloc FN_TMP1234
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1234
    ldloc FN_TMP1234
    brtrue FN_TYPE_OK1236
    ldstr "Attempted to call non-function object in CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1234
FN_TYPE_OK1236:
    nop
FN_AFTER1237:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1238
    ldnull
    stloc ARG_TMP1239
    ldsfld object Program::'NAME'
    stloc FN_TMP1245
    ldloc FN_TMP1245
    brtrue FN_NULL1246
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1245
FN_NULL1246:
    nop
    ldloc FN_TMP1245
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1245
    ldloc FN_TMP1245
    brtrue FN_TYPE_OK1247
    ldstr "Attempted to call non-function object in NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1245
FN_TYPE_OK1247:
    nop
FN_AFTER1248:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1228'
    stloc ARG_TMP1249
    ldsfld object Program::'PERSON_NAME'
    stloc ARG_TMP1250
    ldloc FN_TMP1245
    ldloc ARG_TMP1249
    ldloc ARG_TMP1250
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc FN_TMP1241
    ldloc FN_TMP1241
    brtrue FN_NULL1242
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1241
FN_NULL1242:
    nop
    ldloc FN_TMP1241
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1241
    ldloc FN_TMP1241
    brtrue FN_TYPE_OK1243
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1241
FN_TYPE_OK1243:
    nop
FN_AFTER1244:
    nop
    ldsfld object Program::'AGE'
    stloc FN_TMP1252
    ldloc FN_TMP1252
    brtrue FN_NULL1253
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1252
FN_NULL1253:
    nop
    ldloc FN_TMP1252
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1252
    ldloc FN_TMP1252
    brtrue FN_TYPE_OK1254
    ldstr "Attempted to call non-function object in AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1252
FN_TYPE_OK1254:
    nop
FN_AFTER1255:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1228'
    stloc ARG_TMP1256
    ldsfld object Program::'PERSON_AGE'
    stloc ARG_TMP1257
    ldloc FN_TMP1252
    ldloc ARG_TMP1256
    ldloc ARG_TMP1257
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc ARG_TMP1251
    ldloc FN_TMP1241
    ldloc ARG_TMP1251
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1240
    ldloc FN_TMP1234
    ldloc ARG_TMP1238
    ldloc ARG_TMP1239
    ldloc ARG_TMP1240
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_DEFMETHOD'
    stloc FN_TMP1258
    ldloc FN_TMP1258
    brtrue FN_NULL1259
    ldstr "Undefined function: CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1258
FN_NULL1259:
    nop
    ldloc FN_TMP1258
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1258
    ldloc FN_TMP1258
    brtrue FN_TYPE_OK1260
    ldstr "Attempted to call non-function object in CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1258
FN_TYPE_OK1260:
    nop
FN_AFTER1261:
    nop
    ldsfld object Program::'PERSON_INLINE_METHOD'
    stloc ARG_TMP1262
    ldsfld object Program::'SELF'
    stloc FN_TMP1269
    ldloc FN_TMP1269
    brtrue FN_NULL1270
    ldstr "Undefined function: SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1269
FN_NULL1270:
    nop
    ldloc FN_TMP1269
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1269
    ldloc FN_TMP1269
    brtrue FN_TYPE_OK1271
    ldstr "Attempted to call non-function object in SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1269
FN_TYPE_OK1271:
    nop
FN_AFTER1272:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1273
    ldloc FN_TMP1269
    ldloc ARG_TMP1273
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc FN_TMP1265
    ldloc FN_TMP1265
    brtrue FN_NULL1266
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1265
FN_NULL1266:
    nop
    ldloc FN_TMP1265
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1265
    ldloc FN_TMP1265
    brtrue FN_TYPE_OK1267
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1265
FN_TYPE_OK1267:
    nop
FN_AFTER1268:
    nop
    ldloc FN_TMP1265
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    stloc ARG_TMP1263
    ldstr "INLINE-METHOD-OK"
    stloc ARG_TMP1264
    ldloc FN_TMP1258
    ldloc ARG_TMP1262
    ldloc ARG_TMP1263
    ldloc ARG_TMP1264
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_NEW'
    stloc FN_TMP1274
    ldloc FN_TMP1274
    brtrue FN_NULL1275
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1274
FN_NULL1275:
    nop
    ldloc FN_TMP1274
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1274
    ldloc FN_TMP1274
    brtrue FN_TYPE_OK1276
    ldstr "Attempted to call non-function object in CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1274
FN_TYPE_OK1276:
    nop
FN_AFTER1277:
    nop
    ldstr "PERSON"
    stloc ARG_TMP1278
    ldnull
    stloc ARG_TMP1279
    ldloc FN_TMP1274
    ldloc ARG_TMP1278
    ldloc ARG_TMP1279
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    dup
    stsfld object Program::'P'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1280
    ldloc FN_TMP1280
    brtrue FN_NULL1281
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1280
FN_NULL1281:
    nop
    ldloc FN_TMP1280
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1280
    ldloc FN_TMP1280
    brtrue FN_TYPE_OK1282
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1280
FN_TYPE_OK1282:
    nop
FN_AFTER1283:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1284
    ldstr "PERSON"
    stloc ARG_TMP1285
    ldstr "set_person_name"
    stloc ARG_TMP1286
    ldstr "void"
    stloc FN_TMP1289
    ldloc FN_TMP1289
    brtrue FN_NULL1290
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1289
FN_NULL1290:
    nop
    ldloc FN_TMP1289
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1289
    ldloc FN_TMP1289
    brtrue FN_TYPE_OK1291
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1289
FN_TYPE_OK1291:
    nop
FN_AFTER1292:
    nop
    ldstr "object"
    stloc ARG_TMP1293
    ldloc FN_TMP1289
    ldloc ARG_TMP1293
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1287
    ldstr "Ada"
    stloc ARG_TMP1288
    ldloc FN_TMP1280
    ldloc ARG_TMP1284
    ldloc ARG_TMP1285
    ldloc ARG_TMP1286
    ldloc ARG_TMP1287
    ldloc ARG_TMP1288
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1294
    ldloc FN_TMP1294
    brtrue FN_NULL1295
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1294
FN_NULL1295:
    nop
    ldloc FN_TMP1294
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1294
    ldloc FN_TMP1294
    brtrue FN_TYPE_OK1296
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1294
FN_TYPE_OK1296:
    nop
FN_AFTER1297:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1298
    ldstr "PERSON"
    stloc ARG_TMP1299
    ldstr "set_person_age"
    stloc ARG_TMP1300
    ldstr "void"
    stloc FN_TMP1303
    ldloc FN_TMP1303
    brtrue FN_NULL1304
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1303
FN_NULL1304:
    nop
    ldloc FN_TMP1303
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1303
    ldloc FN_TMP1303
    brtrue FN_TYPE_OK1305
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1303
FN_TYPE_OK1305:
    nop
FN_AFTER1306:
    nop
    ldstr "object"
    stloc ARG_TMP1307
    ldloc FN_TMP1303
    ldloc ARG_TMP1307
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1301
    ldc.i4 42
    box int32
    stloc ARG_TMP1302
    ldloc FN_TMP1294
    ldloc ARG_TMP1298
    ldloc ARG_TMP1299
    ldloc ARG_TMP1300
    ldloc ARG_TMP1301
    ldloc ARG_TMP1302
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1308
    ldloc FN_TMP1308
    brtrue FN_NULL1309
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1308
FN_NULL1309:
    nop
    ldloc FN_TMP1308
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1308
    ldloc FN_TMP1308
    brtrue FN_TYPE_OK1310
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1308
FN_TYPE_OK1310:
    nop
FN_AFTER1311:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1312
    ldstr "PERSON"
    stloc ARG_TMP1313
    ldstr "get_person_name"
    stloc ARG_TMP1314
    ldstr "object"
    stloc ARG_TMP1315
    ldloc FN_TMP1308
    ldloc ARG_TMP1312
    ldloc ARG_TMP1313
    ldloc ARG_TMP1314
    ldloc ARG_TMP1315
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'N'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1316
    ldloc FN_TMP1316
    brtrue FN_NULL1317
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1316
FN_NULL1317:
    nop
    ldloc FN_TMP1316
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1316
    ldloc FN_TMP1316
    brtrue FN_TYPE_OK1318
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1316
FN_TYPE_OK1318:
    nop
FN_AFTER1319:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1320
    ldstr "PERSON"
    stloc ARG_TMP1321
    ldstr "get_person_age"
    stloc ARG_TMP1322
    ldstr "object"
    stloc ARG_TMP1323
    ldloc FN_TMP1316
    ldloc ARG_TMP1320
    ldloc ARG_TMP1321
    ldloc ARG_TMP1322
    ldloc ARG_TMP1323
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'A'
    pop
    ldsfld object Program::'N'
    ldstr "Ada"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1229
    ldnull
    br END1230
TRUE1229:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1231'
END1230:
    nop
    ldnull
    ceq
    brtrue ELSE1326
    ldsfld object Program::'A'
    ldc.i4 42
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1232
    ldnull
    br END1233
TRUE1232:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1231'
END1233:
    nop
    ldnull
    ceq
    brtrue ELSE1324
    ldstr "CLR-EXPLICIT-FORMS-OK"
    br END1325
ELSE1324:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-AGE"
END1325:
    nop
    br END1327
ELSE1326:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-NAME"
END1327:
    nop
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

