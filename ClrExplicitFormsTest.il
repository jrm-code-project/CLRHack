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
    .field public static class [LispBase]Lisp.Symbol 'SYM_S1202'
    .field public static class [LispBase]Lisp.Symbol 'SYM_ACCESSOR1199'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_S1202'
    ldsfld class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword
    ldstr "ACCESSOR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1199'
    ret
}

.method public static hidebysig object 'InitializeModule'() cil managed
{
    .maxstack 8
    .locals init (object ARG_TMP1308, object ARG_TMP1307, object ARG_TMP1306, object ARG_TMP1305, object FN_TMP1300, object ARG_TMP1299, object ARG_TMP1298, object ARG_TMP1297, object ARG_TMP1296, object FN_TMP1291, object ARG_TMP1290, object FN_TMP1285, object ARG_TMP1284, object ARG_TMP1283, object ARG_TMP1282, object ARG_TMP1281, object ARG_TMP1280, object FN_TMP1275, object ARG_TMP1274, object FN_TMP1269, object ARG_TMP1268, object ARG_TMP1267, object ARG_TMP1266, object ARG_TMP1265, object ARG_TMP1264, object FN_TMP1259, object ARG_TMP1258, object ARG_TMP1257, object FN_TMP1252, object ARG_TMP1251, object FN_TMP1246, object FN_TMP1241, object ARG_TMP1240, object ARG_TMP1239, object ARG_TMP1238, object FN_TMP1233, object ARG_TMP1232, object ARG_TMP1231, object FN_TMP1226, object ARG_TMP1225, object ARG_TMP1224, object ARG_TMP1223, object FN_TMP1218, object FN_TMP1213, object ARG_TMP1212, object ARG_TMP1211, object ARG_TMP1210, object FN_TMP1205)
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
    stloc FN_TMP1205
    ldloc FN_TMP1205
    brtrue FN_NULL1206
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1205
FN_NULL1206:
    nop
    ldloc FN_TMP1205
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1208
    ldstr "Attempted to call non-function object in CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1205
FN_TYPE_OK1208:
    nop
    ldloc FN_TMP1205
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1207
    ldstr "Undefined function: CLR-DEFCLASS"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1205
FN_LAZY_OK1207:
    nop
FN_AFTER1209:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1210
    ldnull
    stloc ARG_TMP1211
    ldsfld object Program::'NAME'
    stloc FN_TMP1218
    ldloc FN_TMP1218
    brtrue FN_NULL1219
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1218
FN_NULL1219:
    nop
    ldloc FN_TMP1218
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1221
    ldstr "Attempted to call non-function object in NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1218
FN_TYPE_OK1221:
    nop
    ldloc FN_TMP1218
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1220
    ldstr "Undefined function: NAME"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1218
FN_LAZY_OK1220:
    nop
FN_AFTER1222:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1199'
    stloc ARG_TMP1223
    ldsfld object Program::'PERSON_NAME'
    stloc ARG_TMP1224
    ldloc FN_TMP1218
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1223
    ldloc ARG_TMP1224
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc FN_TMP1213
    ldloc FN_TMP1213
    brtrue FN_NULL1214
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1213
FN_NULL1214:
    nop
    ldloc FN_TMP1213
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1216
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1213
FN_TYPE_OK1216:
    nop
    ldloc FN_TMP1213
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1215
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1213
FN_LAZY_OK1215:
    nop
FN_AFTER1217:
    nop
    ldsfld object Program::'AGE'
    stloc FN_TMP1226
    ldloc FN_TMP1226
    brtrue FN_NULL1227
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1226
FN_NULL1227:
    nop
    ldloc FN_TMP1226
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1229
    ldstr "Attempted to call non-function object in AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1226
FN_TYPE_OK1229:
    nop
    ldloc FN_TMP1226
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1228
    ldstr "Undefined function: AGE"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1226
FN_LAZY_OK1228:
    nop
FN_AFTER1230:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_ACCESSOR1199'
    stloc ARG_TMP1231
    ldsfld object Program::'PERSON_AGE'
    stloc ARG_TMP1232
    ldloc FN_TMP1226
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1231
    ldloc ARG_TMP1232
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    stloc ARG_TMP1225
    ldloc FN_TMP1213
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1225
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1212
    ldloc FN_TMP1205
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1210
    ldloc ARG_TMP1211
    ldloc ARG_TMP1212
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_DEFMETHOD'
    stloc FN_TMP1233
    ldloc FN_TMP1233
    brtrue FN_NULL1234
    ldstr "Undefined function: CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1233
FN_NULL1234:
    nop
    ldloc FN_TMP1233
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1236
    ldstr "Attempted to call non-function object in CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1233
FN_TYPE_OK1236:
    nop
    ldloc FN_TMP1233
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1235
    ldstr "Undefined function: CLR-DEFMETHOD"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1233
FN_LAZY_OK1235:
    nop
FN_AFTER1237:
    nop
    ldsfld object Program::'PERSON_INLINE_METHOD'
    stloc ARG_TMP1238
    ldsfld object Program::'SELF'
    stloc FN_TMP1246
    ldloc FN_TMP1246
    brtrue FN_NULL1247
    ldstr "Undefined function: SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1246
FN_NULL1247:
    nop
    ldloc FN_TMP1246
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1249
    ldstr "Attempted to call non-function object in SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1246
FN_TYPE_OK1249:
    nop
    ldloc FN_TMP1246
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1248
    ldstr "Undefined function: SELF"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1246
FN_LAZY_OK1248:
    nop
FN_AFTER1250:
    nop
    ldsfld object Program::'PERSON'
    stloc ARG_TMP1251
    ldloc FN_TMP1246
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1251
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
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
    brtrue FN_TYPE_OK1244
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1241
FN_TYPE_OK1244:
    nop
    ldloc FN_TMP1241
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1243
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1241
FN_LAZY_OK1243:
    nop
FN_AFTER1245:
    nop
    ldloc FN_TMP1241
    castclass [LispBase]Lisp.Closure
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'()
    stloc ARG_TMP1239
    ldstr "INLINE-METHOD-OK"
    stloc ARG_TMP1240
    ldloc FN_TMP1233
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1238
    ldloc ARG_TMP1239
    ldloc ARG_TMP1240
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object)
    pop
    ldsfld object Program::'CLR_NEW'
    stloc FN_TMP1252
    ldloc FN_TMP1252
    brtrue FN_NULL1253
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1252
FN_NULL1253:
    nop
    ldloc FN_TMP1252
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1255
    ldstr "Attempted to call non-function object in CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1252
FN_TYPE_OK1255:
    nop
    ldloc FN_TMP1252
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1254
    ldstr "Undefined function: CLR-NEW"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1252
FN_LAZY_OK1254:
    nop
FN_AFTER1256:
    nop
    ldstr "PERSON"
    stloc ARG_TMP1257
    ldnull
    stloc ARG_TMP1258
    ldloc FN_TMP1252
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1257
    ldloc ARG_TMP1258
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object)
    dup
    stsfld object Program::'P'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1259
    ldloc FN_TMP1259
    brtrue FN_NULL1260
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1259
FN_NULL1260:
    nop
    ldloc FN_TMP1259
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1262
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1259
FN_TYPE_OK1262:
    nop
    ldloc FN_TMP1259
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1261
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1259
FN_LAZY_OK1261:
    nop
FN_AFTER1263:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1264
    ldstr "PERSON"
    stloc ARG_TMP1265
    ldstr "set_person_name"
    stloc ARG_TMP1266
    ldstr "void"
    stloc FN_TMP1269
    ldloc FN_TMP1269
    brtrue FN_NULL1270
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1269
FN_NULL1270:
    nop
    ldloc FN_TMP1269
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1272
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1269
FN_TYPE_OK1272:
    nop
    ldloc FN_TMP1269
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1271
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1269
FN_LAZY_OK1271:
    nop
FN_AFTER1273:
    nop
    ldstr "object"
    stloc ARG_TMP1274
    ldloc FN_TMP1269
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1274
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1267
    ldstr "Ada"
    stloc ARG_TMP1268
    ldloc FN_TMP1259
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1264
    ldloc ARG_TMP1265
    ldloc ARG_TMP1266
    ldloc ARG_TMP1267
    ldloc ARG_TMP1268
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object, object)
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1275
    ldloc FN_TMP1275
    brtrue FN_NULL1276
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1275
FN_NULL1276:
    nop
    ldloc FN_TMP1275
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1278
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1275
FN_TYPE_OK1278:
    nop
    ldloc FN_TMP1275
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1277
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1275
FN_LAZY_OK1277:
    nop
FN_AFTER1279:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1280
    ldstr "PERSON"
    stloc ARG_TMP1281
    ldstr "set_person_age"
    stloc ARG_TMP1282
    ldstr "void"
    stloc FN_TMP1285
    ldloc FN_TMP1285
    brtrue FN_NULL1286
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1285
FN_NULL1286:
    nop
    ldloc FN_TMP1285
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1288
    ldstr "Attempted to call non-function object in <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1285
FN_TYPE_OK1288:
    nop
    ldloc FN_TMP1285
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1287
    ldstr "Undefined function: <computed function>"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1285
FN_LAZY_OK1287:
    nop
FN_AFTER1289:
    nop
    ldstr "object"
    stloc ARG_TMP1290
    ldloc FN_TMP1285
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1290
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object)
    stloc ARG_TMP1283
    ldc.i4 42
    box int32
    stloc ARG_TMP1284
    ldloc FN_TMP1275
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1280
    ldloc ARG_TMP1281
    ldloc ARG_TMP1282
    ldloc ARG_TMP1283
    ldloc ARG_TMP1284
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
    brtrue FN_TYPE_OK1294
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1291
FN_TYPE_OK1294:
    nop
    ldloc FN_TMP1291
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1293
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1291
FN_LAZY_OK1293:
    nop
FN_AFTER1295:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1296
    ldstr "PERSON"
    stloc ARG_TMP1297
    ldstr "get_person_name"
    stloc ARG_TMP1298
    ldstr "object"
    stloc ARG_TMP1299
    ldloc FN_TMP1291
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1296
    ldloc ARG_TMP1297
    ldloc ARG_TMP1298
    ldloc ARG_TMP1299
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'N'
    pop
    ldsfld object Program::'CLR_CALL_VIRT'
    stloc FN_TMP1300
    ldloc FN_TMP1300
    brtrue FN_NULL1301
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1300
FN_NULL1301:
    nop
    ldloc FN_TMP1300
    isinst [LispBase]Lisp.Closure
    brtrue FN_TYPE_OK1303
    ldstr "Attempted to call non-function object in CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1300
FN_TYPE_OK1303:
    nop
    ldloc FN_TMP1300
    castclass [LispBase]Lisp.Closure
    callvirt instance bool [LispBase]Lisp.Closure::'get_IsLazyResolver'()
    brfalse FN_LAZY_OK1302
    ldstr "Undefined function: CLR-CALL-VIRT"
    newobj instance void [mscorlib]System.Exception::'.ctor'(string)
    call object [LispBase]Lisp.HandlerControl::'Error'(object)
    stloc FN_TMP1300
FN_LAZY_OK1302:
    nop
FN_AFTER1304:
    nop
    ldsfld object Program::'P'
    stloc ARG_TMP1305
    ldstr "PERSON"
    stloc ARG_TMP1306
    ldstr "get_person_age"
    stloc ARG_TMP1307
    ldstr "object"
    stloc ARG_TMP1308
    ldloc FN_TMP1300
    castclass [LispBase]Lisp.Closure
    ldloc ARG_TMP1305
    ldloc ARG_TMP1306
    ldloc ARG_TMP1307
    ldloc ARG_TMP1308
    callvirt instance object [LispBase]Lisp.Closure::'Invoke'(object, object, object, object)
    dup
    stsfld object Program::'A'
    pop
    ldsfld object Program::'N'
    ldstr "Ada"
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1200
    ldnull
    br END1201
TRUE1200:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1202'
END1201:
    nop
    ldnull
    ceq
    brtrue ELSE1311
    ldsfld object Program::'A'
    ldc.i4 42
    box int32
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1203
    ldnull
    br END1204
TRUE1203:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_S1202'
END1204:
    nop
    ldnull
    ceq
    brtrue ELSE1309
    ldstr "CLR-EXPLICIT-FORMS-OK"
    br END1310
ELSE1309:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-AGE"
END1310:
    nop
    br END1312
ELSE1311:
    nop
    ldstr "CLR-EXPLICIT-FORMS-BAD-NAME"
END1312:
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

