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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1214'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ACCESSOR1211'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1214'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ACCESSOR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1211'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP1306, object ARG_TMP1305, object ARG_TMP1304, object ARG_TMP1303, object FN_TMP1299, object ARG_TMP1298, object ARG_TMP1297, object ARG_TMP1296, object ARG_TMP1295, object FN_TMP1291, object ARG_TMP1290, object FN_TMP1286, object ARG_TMP1285, object ARG_TMP1284, object ARG_TMP1283, object ARG_TMP1282, object ARG_TMP1281, object FN_TMP1277, object ARG_TMP1276, object FN_TMP1272, object ARG_TMP1271, object ARG_TMP1270, object ARG_TMP1269, object ARG_TMP1268, object ARG_TMP1267, object FN_TMP1263, object ARG_TMP1262, object ARG_TMP1261, object FN_TMP1257, object ARG_TMP1256, object FN_TMP1252, object FN_TMP1248, object ARG_TMP1247, object ARG_TMP1246, object ARG_TMP1245, object FN_TMP1241, object ARG_TMP1240, object ARG_TMP1239, object FN_TMP1235, object ARG_TMP1234, object ARG_TMP1233, object ARG_TMP1232, object FN_TMP1228, object FN_TMP1224, object ARG_TMP1223, object ARG_TMP1222, object ARG_TMP1221, object FN_TMP1217)
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
    stloc FN_TMP1217
    ldloc FN_TMP1217
    brtrue FN_NULL1218
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1217
FN_NULL1218:
    nop
    ldloc FN_TMP1217
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1217
    ldloc FN_TMP1217
    brtrue FN_TYPE_OK1219
    ldstr "Attempted to call non-function object in CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1217
FN_TYPE_OK1219:
    nop
FN_AFTER1220:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1221
    ldnull
    stloc ARG_TMP1222
    ldsfld object Program::'NAME'
    stloc FN_TMP1228
    ldloc FN_TMP1228
    brtrue FN_NULL1229
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1228
FN_NULL1229:
    nop
    ldloc FN_TMP1228
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1228
    ldloc FN_TMP1228
    brtrue FN_TYPE_OK1230
    ldstr "Attempted to call non-function object in NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1228
FN_TYPE_OK1230:
    nop
FN_AFTER1231:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1211'
    stloc ARG_TMP1232
    ldsfld object Program::'PERSON_NAME'
    stloc ARG_TMP1233
    ldloc FN_TMP1228
    ldloc ARG_TMP1232
    ldloc ARG_TMP1233
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc FN_TMP1224
    ldloc FN_TMP1224
    brtrue FN_NULL1225
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1224
FN_NULL1225:
    nop
    ldloc FN_TMP1224
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1224
    ldloc FN_TMP1224
    brtrue FN_TYPE_OK1226
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1224
FN_TYPE_OK1226:
    nop
FN_AFTER1227:
    nop
    ldsfld object Program::'AGE'
    stloc FN_TMP1235
    ldloc FN_TMP1235
    brtrue FN_NULL1236
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1235
FN_NULL1236:
    nop
    ldloc FN_TMP1235
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1235
    ldloc FN_TMP1235
    brtrue FN_TYPE_OK1237
    ldstr "Attempted to call non-function object in AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1235
FN_TYPE_OK1237:
    nop
FN_AFTER1238:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1211'
    stloc ARG_TMP1239
    ldsfld object Program::'PERSON_AGE'
    stloc ARG_TMP1240
    ldloc FN_TMP1235
    ldloc ARG_TMP1239
    ldloc ARG_TMP1240
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc ARG_TMP1234
    ldloc FN_TMP1224
    ldloc ARG_TMP1234
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1223
    ldloc FN_TMP1217
    ldloc ARG_TMP1221
    ldloc ARG_TMP1222
    ldloc ARG_TMP1223
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_DEFMETHOD'
    stloc FN_TMP1241
    ldloc FN_TMP1241
    brtrue FN_NULL1242
    ldstr "Undefined function: CLR-DEFMETHOD"
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
    ldstr "Attempted to call non-function object in CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1241
FN_TYPE_OK1243:
    nop
FN_AFTER1244:
    nop
    ldsfld object Program::'PERSON_INLINE_METHOD'
    stloc ARG_TMP1245
    ldsfld object Program::'SELF'
    stloc FN_TMP1252
    ldloc FN_TMP1252
    brtrue FN_NULL1253
    ldstr "Undefined function: SELF"
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
    ldstr "Attempted to call non-function object in SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1252
FN_TYPE_OK1254:
    nop
FN_AFTER1255:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1256
    ldloc FN_TMP1252
    ldloc ARG_TMP1256
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc FN_TMP1248
    ldloc FN_TMP1248
    brtrue FN_NULL1249
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1248
FN_NULL1249:
    nop
    ldloc FN_TMP1248
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1248
    ldloc FN_TMP1248
    brtrue FN_TYPE_OK1250
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1248
FN_TYPE_OK1250:
    nop
FN_AFTER1251:
    nop
    ldloc FN_TMP1248
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    stloc ARG_TMP1246
    ldstr "INLINE-METHOD-OK"
    stloc ARG_TMP1247
    ldloc FN_TMP1241
    ldloc ARG_TMP1245
    ldloc ARG_TMP1246
    ldloc ARG_TMP1247
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_NEW'
    stloc FN_TMP1257
    ldloc FN_TMP1257
    brtrue FN_NULL1258
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1257
FN_NULL1258:
    nop
    ldloc FN_TMP1257
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1257
    ldloc FN_TMP1257
    brtrue FN_TYPE_OK1259
    ldstr "Attempted to call non-function object in CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1257
FN_TYPE_OK1259:
    nop
FN_AFTER1260:
    nop
    ldstr "PERSON"
    stloc ARG_TMP1261
    ldnull
    stloc ARG_TMP1262
    ldloc FN_TMP1257
    ldloc ARG_TMP1261
    ldloc ARG_TMP1262
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    dup
    stsfld object Program::'P'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1263
    ldloc FN_TMP1263
    brtrue FN_NULL1264
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1263
FN_NULL1264:
    nop
    ldloc FN_TMP1263
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1263
    ldloc FN_TMP1263
    brtrue FN_TYPE_OK1265
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1263
FN_TYPE_OK1265:
    nop
FN_AFTER1266:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1267
    ldstr "PERSON"
    stloc ARG_TMP1268
    ldstr "set_person_name"
    stloc ARG_TMP1269
    ldstr "void"
    stloc FN_TMP1272
    ldloc FN_TMP1272
    brtrue FN_NULL1273
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1272
FN_NULL1273:
    nop
    ldloc FN_TMP1272
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1272
    ldloc FN_TMP1272
    brtrue FN_TYPE_OK1274
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1272
FN_TYPE_OK1274:
    nop
FN_AFTER1275:
    nop
    ldstr "object"
    stloc ARG_TMP1276
    ldloc FN_TMP1272
    ldloc ARG_TMP1276
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1270
    ldstr "Ada"
    stloc ARG_TMP1271
    ldloc FN_TMP1263
    ldloc ARG_TMP1267
    ldloc ARG_TMP1268
    ldloc ARG_TMP1269
    ldloc ARG_TMP1270
    ldloc ARG_TMP1271
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1277
    ldloc FN_TMP1277
    brtrue FN_NULL1278
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1277
FN_NULL1278:
    nop
    ldloc FN_TMP1277
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1277
    ldloc FN_TMP1277
    brtrue FN_TYPE_OK1279
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1277
FN_TYPE_OK1279:
    nop
FN_AFTER1280:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1281
    ldstr "PERSON"
    stloc ARG_TMP1282
    ldstr "set_person_age"
    stloc ARG_TMP1283
    ldstr "void"
    stloc FN_TMP1286
    ldloc FN_TMP1286
    brtrue FN_NULL1287
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1286
FN_NULL1287:
    nop
    ldloc FN_TMP1286
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1286
    ldloc FN_TMP1286
    brtrue FN_TYPE_OK1288
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1286
FN_TYPE_OK1288:
    nop
FN_AFTER1289:
    nop
    ldstr "object"
    stloc ARG_TMP1290
    ldloc FN_TMP1286
    ldloc ARG_TMP1290
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1284
    ldc.i4 42
    box int32
    stloc ARG_TMP1285
    ldloc FN_TMP1277
    ldloc ARG_TMP1281
    ldloc ARG_TMP1282
    ldloc ARG_TMP1283
    ldloc ARG_TMP1284
    ldloc ARG_TMP1285
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1291
    ldloc FN_TMP1291
    brtrue FN_NULL1292
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1291
FN_NULL1292:
    nop
    ldloc FN_TMP1291
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1291
    ldloc FN_TMP1291
    brtrue FN_TYPE_OK1293
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1291
FN_TYPE_OK1293:
    nop
FN_AFTER1294:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1295
    ldstr "PERSON"
    stloc ARG_TMP1296
    ldstr "get_person_name"
    stloc ARG_TMP1297
    ldstr "object"
    stloc ARG_TMP1298
    ldloc FN_TMP1291
    ldloc ARG_TMP1295
    ldloc ARG_TMP1296
    ldloc ARG_TMP1297
    ldloc ARG_TMP1298
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'N'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1299
    ldloc FN_TMP1299
    brtrue FN_NULL1300
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1299
FN_NULL1300:
    nop
    ldloc FN_TMP1299
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1299
    ldloc FN_TMP1299
    brtrue FN_TYPE_OK1301
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1299
FN_TYPE_OK1301:
    nop
FN_AFTER1302:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1303
    ldstr "PERSON"
    stloc ARG_TMP1304
    ldstr "get_person_age"
    stloc ARG_TMP1305
    ldstr "object"
    stloc ARG_TMP1306
    ldloc FN_TMP1299
    ldloc ARG_TMP1303
    ldloc ARG_TMP1304
    ldloc ARG_TMP1305
    ldloc ARG_TMP1306
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'A'
    pop
    ldsfld object Program::'N'
    ldstr "Ada"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1212
    ldnull
    br END1213
TRUE1212:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1214'
END1213:
    nop
    ldnull
    ceq
    brtrue ELSE1309
    ldsfld object Program::'A'
    ldc.i4 42
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1215
    ldnull
    br END1216
TRUE1215:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1214'
END1216:
    nop
    ldnull
    ceq
    brtrue ELSE1307
    ldstr "CLR-EXPLICIT-FORMS-OK"
    br END1308
ELSE1307:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-AGE"
END1308:
    nop
    br END1310
ELSE1309:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-NAME"
END1310:
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

