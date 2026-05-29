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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1199'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ACCESSOR1196'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1199'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ACCESSOR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1196'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP1291, object ARG_TMP1290, object ARG_TMP1289, object ARG_TMP1288, object FN_TMP1284, object ARG_TMP1283, object ARG_TMP1282, object ARG_TMP1281, object ARG_TMP1280, object FN_TMP1276, object ARG_TMP1275, object FN_TMP1271, object ARG_TMP1270, object ARG_TMP1269, object ARG_TMP1268, object ARG_TMP1267, object ARG_TMP1266, object FN_TMP1262, object ARG_TMP1261, object FN_TMP1257, object ARG_TMP1256, object ARG_TMP1255, object ARG_TMP1254, object ARG_TMP1253, object ARG_TMP1252, object FN_TMP1248, object ARG_TMP1247, object ARG_TMP1246, object FN_TMP1242, object ARG_TMP1241, object FN_TMP1237, object FN_TMP1233, object ARG_TMP1232, object ARG_TMP1231, object ARG_TMP1230, object FN_TMP1226, object ARG_TMP1225, object ARG_TMP1224, object FN_TMP1220, object ARG_TMP1219, object ARG_TMP1218, object ARG_TMP1217, object FN_TMP1213, object FN_TMP1209, object ARG_TMP1208, object ARG_TMP1207, object ARG_TMP1206, object FN_TMP1202)
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
    stloc FN_TMP1202
    ldloc FN_TMP1202
    brtrue FN_NULL1203
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1202
FN_NULL1203:
    nop
    ldloc FN_TMP1202
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1202
    ldloc FN_TMP1202
    brtrue FN_TYPE_OK1204
    ldstr "Attempted to call non-function object in CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1202
FN_TYPE_OK1204:
    nop
FN_AFTER1205:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1206
    ldnull
    stloc ARG_TMP1207
    ldsfld object Program::'NAME'
    stloc FN_TMP1213
    ldloc FN_TMP1213
    brtrue FN_NULL1214
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1213
FN_NULL1214:
    nop
    ldloc FN_TMP1213
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1213
    ldloc FN_TMP1213
    brtrue FN_TYPE_OK1215
    ldstr "Attempted to call non-function object in NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1213
FN_TYPE_OK1215:
    nop
FN_AFTER1216:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1196'
    stloc ARG_TMP1217
    ldsfld object Program::'PERSON_NAME'
    stloc ARG_TMP1218
    ldloc FN_TMP1213
    ldloc ARG_TMP1217
    ldloc ARG_TMP1218
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc FN_TMP1209
    ldloc FN_TMP1209
    brtrue FN_NULL1210
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1209
FN_NULL1210:
    nop
    ldloc FN_TMP1209
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1209
    ldloc FN_TMP1209
    brtrue FN_TYPE_OK1211
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1209
FN_TYPE_OK1211:
    nop
FN_AFTER1212:
    nop
    ldsfld object Program::'AGE'
    stloc FN_TMP1220
    ldloc FN_TMP1220
    brtrue FN_NULL1221
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1220
FN_NULL1221:
    nop
    ldloc FN_TMP1220
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1220
    ldloc FN_TMP1220
    brtrue FN_TYPE_OK1222
    ldstr "Attempted to call non-function object in AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1220
FN_TYPE_OK1222:
    nop
FN_AFTER1223:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1196'
    stloc ARG_TMP1224
    ldsfld object Program::'PERSON_AGE'
    stloc ARG_TMP1225
    ldloc FN_TMP1220
    ldloc ARG_TMP1224
    ldloc ARG_TMP1225
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc ARG_TMP1219
    ldloc FN_TMP1209
    ldloc ARG_TMP1219
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1208
    ldloc FN_TMP1202
    ldloc ARG_TMP1206
    ldloc ARG_TMP1207
    ldloc ARG_TMP1208
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_DEFMETHOD'
    stloc FN_TMP1226
    ldloc FN_TMP1226
    brtrue FN_NULL1227
    ldstr "Undefined function: CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1226
FN_NULL1227:
    nop
    ldloc FN_TMP1226
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1226
    ldloc FN_TMP1226
    brtrue FN_TYPE_OK1228
    ldstr "Attempted to call non-function object in CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1226
FN_TYPE_OK1228:
    nop
FN_AFTER1229:
    nop
    ldsfld object Program::'PERSON_INLINE_METHOD'
    stloc ARG_TMP1230
    ldsfld object Program::'SELF'
    stloc FN_TMP1237
    ldloc FN_TMP1237
    brtrue FN_NULL1238
    ldstr "Undefined function: SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1237
FN_NULL1238:
    nop
    ldloc FN_TMP1237
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1237
    ldloc FN_TMP1237
    brtrue FN_TYPE_OK1239
    ldstr "Attempted to call non-function object in SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1237
FN_TYPE_OK1239:
    nop
FN_AFTER1240:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1241
    ldloc FN_TMP1237
    ldloc ARG_TMP1241
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc FN_TMP1233
    ldloc FN_TMP1233
    brtrue FN_NULL1234
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1233
FN_NULL1234:
    nop
    ldloc FN_TMP1233
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1233
    ldloc FN_TMP1233
    brtrue FN_TYPE_OK1235
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1233
FN_TYPE_OK1235:
    nop
FN_AFTER1236:
    nop
    ldloc FN_TMP1233
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    stloc ARG_TMP1231
    ldstr "INLINE-METHOD-OK"
    stloc ARG_TMP1232
    ldloc FN_TMP1226
    ldloc ARG_TMP1230
    ldloc ARG_TMP1231
    ldloc ARG_TMP1232
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_NEW'
    stloc FN_TMP1242
    ldloc FN_TMP1242
    brtrue FN_NULL1243
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1242
FN_NULL1243:
    nop
    ldloc FN_TMP1242
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1242
    ldloc FN_TMP1242
    brtrue FN_TYPE_OK1244
    ldstr "Attempted to call non-function object in CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1242
FN_TYPE_OK1244:
    nop
FN_AFTER1245:
    nop
    ldstr "PERSON"
    stloc ARG_TMP1246
    ldnull
    stloc ARG_TMP1247
    ldloc FN_TMP1242
    ldloc ARG_TMP1246
    ldloc ARG_TMP1247
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    dup
    stsfld object Program::'P'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1248
    ldloc FN_TMP1248
    brtrue FN_NULL1249
    ldstr "Undefined function: CLR-CALL-VIRT"
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
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1248
FN_TYPE_OK1250:
    nop
FN_AFTER1251:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1252
    ldstr "PERSON"
    stloc ARG_TMP1253
    ldstr "set_person_name"
    stloc ARG_TMP1254
    ldstr "void"
    stloc FN_TMP1257
    ldloc FN_TMP1257
    brtrue FN_NULL1258
    ldstr "Undefined function: <computed function>"
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
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1257
FN_TYPE_OK1259:
    nop
FN_AFTER1260:
    nop
    ldstr "object"
    stloc ARG_TMP1261
    ldloc FN_TMP1257
    ldloc ARG_TMP1261
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1255
    ldstr "Ada"
    stloc ARG_TMP1256
    ldloc FN_TMP1248
    ldloc ARG_TMP1252
    ldloc ARG_TMP1253
    ldloc ARG_TMP1254
    ldloc ARG_TMP1255
    ldloc ARG_TMP1256
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1262
    ldloc FN_TMP1262
    brtrue FN_NULL1263
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1262
FN_NULL1263:
    nop
    ldloc FN_TMP1262
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1262
    ldloc FN_TMP1262
    brtrue FN_TYPE_OK1264
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1262
FN_TYPE_OK1264:
    nop
FN_AFTER1265:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1266
    ldstr "PERSON"
    stloc ARG_TMP1267
    ldstr "set_person_age"
    stloc ARG_TMP1268
    ldstr "void"
    stloc FN_TMP1271
    ldloc FN_TMP1271
    brtrue FN_NULL1272
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1271
FN_NULL1272:
    nop
    ldloc FN_TMP1271
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1271
    ldloc FN_TMP1271
    brtrue FN_TYPE_OK1273
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1271
FN_TYPE_OK1273:
    nop
FN_AFTER1274:
    nop
    ldstr "object"
    stloc ARG_TMP1275
    ldloc FN_TMP1271
    ldloc ARG_TMP1275
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1269
    ldc.i4 42
    box int32
    stloc ARG_TMP1270
    ldloc FN_TMP1262
    ldloc ARG_TMP1266
    ldloc ARG_TMP1267
    ldloc ARG_TMP1268
    ldloc ARG_TMP1269
    ldloc ARG_TMP1270
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1276
    ldloc FN_TMP1276
    brtrue FN_NULL1277
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1276
FN_NULL1277:
    nop
    ldloc FN_TMP1276
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1276
    ldloc FN_TMP1276
    brtrue FN_TYPE_OK1278
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1276
FN_TYPE_OK1278:
    nop
FN_AFTER1279:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1280
    ldstr "PERSON"
    stloc ARG_TMP1281
    ldstr "get_person_name"
    stloc ARG_TMP1282
    ldstr "object"
    stloc ARG_TMP1283
    ldloc FN_TMP1276
    ldloc ARG_TMP1280
    ldloc ARG_TMP1281
    ldloc ARG_TMP1282
    ldloc ARG_TMP1283
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'N'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1284
    ldloc FN_TMP1284
    brtrue FN_NULL1285
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1284
FN_NULL1285:
    nop
    ldloc FN_TMP1284
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1284
    ldloc FN_TMP1284
    brtrue FN_TYPE_OK1286
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    isinst [LispBase]Lisp.Closure
    stloc FN_TMP1284
FN_TYPE_OK1286:
    nop
FN_AFTER1287:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1288
    ldstr "PERSON"
    stloc ARG_TMP1289
    ldstr "get_person_age"
    stloc ARG_TMP1290
    ldstr "object"
    stloc ARG_TMP1291
    ldloc FN_TMP1284
    ldloc ARG_TMP1288
    ldloc ARG_TMP1289
    ldloc ARG_TMP1290
    ldloc ARG_TMP1291
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'A'
    pop
    ldsfld object Program::'N'
    ldstr "Ada"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1197
    ldnull
    br END1198
TRUE1197:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1199'
END1198:
    nop
    ldnull
    ceq
    brtrue ELSE1294
    ldsfld object Program::'A'
    ldc.i4 42
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1200
    ldnull
    br END1201
TRUE1200:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1199'
END1201:
    nop
    ldnull
    ceq
    brtrue ELSE1292
    ldstr "CLR-EXPLICIT-FORMS-OK"
    br END1293
ELSE1292:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-AGE"
END1293:
    nop
    br END1295
ELSE1294:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-NAME"
END1295:
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

