.assembly extern mscorlib {}
.assembly extern LispBase {}

.assembly 'NBoyerBenchmark' {}
.module 'NBoyerBenchmark.exe'

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
    .field public static object 'MAIN'
    .field public static object 'TEST_TERM'
    .field public static object 'SETUP'
    .field public static object 'UNIFY_LST'
    .field public static object '_CONS'
    .field public static object 'UNIFY'
    .field public static object 'LOOP_LEMMAS'
    .field public static object 'REWRITE'
    .field public static object 'REWRITE_ARGS'
    .field public static object 'REWRITE_WITH_LEMMAS'
    .field public static object 'TAUTOLOGYP'
    .field public static object 'FALSEP'
    .field public static object 'TRUEP'
    .field public static object 'APPLY_SUBST'
    .field public static object 'APPLY_SUBST_LST'
    .field public static object 'NOT'
    .field public static object 'ADD_LEMMAS'
    .field public static object 'ADD_LEMMA'
    .field public static object 'PRINT'
    .field public static object 'GETPROP'
    .field public static object 'CONS'
    .field public static object 'PUTPROP'
    .field public static object '_INTERN'
    .field public static object 'ASSOC'
    .field public static object 'MEMBER'
    .field public static object 'NULL'
    .field public static object 'CDR'
    .field public static object 'CAR'
    .field public static object 'EQUAL'
    .field public static object 'CONSP'
    .field public static object 'EQ'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1229'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1228'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1227'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1226'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1225'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1224'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1223'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1222'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1221'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1220'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1219'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1218'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1217'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1216'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1215'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1214'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1213'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1212'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1181'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1135'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1121'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1107'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1102'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1069'

.method public static hidebysig specialname rtspecialname void '.cctor'() cil managed
{
    .maxstack 8
    ldnull
    stsfld object Program::'MAIN'
    ldnull
    stsfld object Program::'TEST_TERM'
    ldnull
    stsfld object Program::'SETUP'
    ldnull
    stsfld object Program::'UNIFY_LST'
    ldnull
    stsfld object Program::'_CONS'
    ldnull
    stsfld object Program::'UNIFY'
    ldnull
    stsfld object Program::'LOOP_LEMMAS'
    ldnull
    stsfld object Program::'REWRITE'
    ldnull
    stsfld object Program::'REWRITE_ARGS'
    ldnull
    stsfld object Program::'REWRITE_WITH_LEMMAS'
    ldnull
    stsfld object Program::'TAUTOLOGYP'
    ldnull
    stsfld object Program::'FALSEP'
    ldnull
    stsfld object Program::'TRUEP'
    ldnull
    stsfld object Program::'APPLY_SUBST'
    ldnull
    stsfld object Program::'APPLY_SUBST_LST'
    ldnull
    stsfld object Program::'NOT'
    ldnull
    stsfld object Program::'ADD_LEMMAS'
    ldnull
    stsfld object Program::'ADD_LEMMA'
    ldnull
    stsfld object Program::'PRINT'
    ldnull
    stsfld object Program::'GETPROP'
    ldnull
    stsfld object Program::'CONS'
    ldnull
    stsfld object Program::'PUTPROP'
    ldnull
    stsfld object Program::'_INTERN'
    ldnull
    stsfld object Program::'ASSOC'
    ldnull
    stsfld object Program::'MEMBER'
    ldnull
    stsfld object Program::'NULL'
    ldnull
    stsfld object Program::'CDR'
    ldnull
    stsfld object Program::'CAR'
    ldnull
    stsfld object Program::'EQUAL'
    ldnull
    stsfld object Program::'CONSP'
    ldnull
    stsfld object Program::'EQ'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "R"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "S"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "U"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "V"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "D"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1223'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1222'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "W"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1221'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "PLUS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1219'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MEMBER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LENGTH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "REVERSE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "X"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "APPEND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WIN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1181'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "IF"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1135'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "QUOTE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1121'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LEMMAS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1107'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "EQUAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN902, object TERM901)
    call object Program::'SETUP'()
    pop
    ldstr "Lemmas loaded."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object Program::'TEST_TERM'()
    stloc TERM901
    ldstr "Rewriting term..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc TERM901
    call object Program::'REWRITE'(object)
    stloc REWRITTEN902
    ldstr "Tautology check..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc REWRITTEN902
    ldnull
    ldnull
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1230
    ldstr "SUCCESS: Term is a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1230:
    nop
    ldstr "FAILURE: Term is NOT a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_899:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_TERM'() cil managed
{
    .maxstack 14
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1135'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1221'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1221'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1222'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1223'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1222'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1223'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_TEST_TERM_895:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SETUP'() cil managed
{
    .maxstack 15
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1219'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1216'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1218'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1212'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1217'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1213'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1220'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1214'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1215'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'ADD_LEMMAS'(object)
    ret
BLOCK_END_SETUP_891:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object NEW_ALIST888)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1201
    ldnull
    br END1202
TRUE1201:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1202:
    nop
    ldnull
    ceq
    brtrue ELSE1211
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1203
    ldnull
    br END1204
TRUE1203:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1204:
    nop
    ldnull
    ceq
    brtrue ELSE1207
    ldarg 2
    ret
ELSE1207:
    nop
    ldnull
    ret
ELSE1211:
    nop
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1205
    ldnull
    br END1206
TRUE1205:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1206:
    nop
    ldnull
    ceq
    brtrue ELSE1210
    ldnull
    ret
ELSE1210:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1209
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'UNIFY'(object, object, object)
    stloc NEW_ALIST888
    ldloc NEW_ALIST888
    ldnull
    ceq
    brtrue ELSE1208
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldloc NEW_ALIST888
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1208:
    nop
    ldnull
    ret
ELSE1209:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_LST_886:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR880)
    ldarg 0
    ldarg 1
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1200
    ldarg 2
    ret
ELSE1200:
    nop
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1184
    ldnull
    br END1185
TRUE1184:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1185:
    nop
    ldnull
    ceq
    brtrue TRUE1186
    ldnull
    br END1187
TRUE1186:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1187:
    nop
    ldnull
    ceq
    brtrue ELSE1199
    ldarg 1
    ldarg 2
    call object Program::'ASSOC'(object, object)
    stloc PAIR880
    ldloc PAIR880
    ldnull
    ceq
    brtrue ELSE1195
    ldloc PAIR880
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 0
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1194
    ldarg 2
    ret
ELSE1194:
    nop
    ldnull
    ret
ELSE1195:
    nop
    ldarg 1
    ldarg 0
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1199:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1188
    ldnull
    br END1189
TRUE1188:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1189:
    nop
    ldnull
    ceq
    brtrue TRUE1190
    ldnull
    br END1191
TRUE1190:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1191:
    nop
    ldnull
    ceq
    brtrue ELSE1198
    ldnull
    ret
ELSE1198:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1192
    ldnull
    br END1193
TRUE1192:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1193:
    nop
    ldnull
    ceq
    brtrue ELSE1197
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1197:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1196
    ldnull
    ret
ELSE1196:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_878:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'LOOP_LEMMAS'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1179
    ldnull
    br END1180
TRUE1179:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1180:
    nop
    ldnull
    ceq
    brtrue ELSE1183
    ldarg 0
    ret
ELSE1183:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1181'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1181'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1182
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1181'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1181'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'APPLY_SUBST'(object, object)
    tail. call object Program::'REWRITE'(object)
    ret
ELSE1182:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_LOOP_LEMMAS_871:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE_WITH_LEMMAS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1174
    ldnull
    br END1175
TRUE1174:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1175:
    nop
    ldnull
    ceq
    brtrue TRUE1176
    ldnull
    br END1177
TRUE1176:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1177:
    nop
    ldnull
    ceq
    brtrue ELSE1178
    ldarg 0
    ret
ELSE1178:
    nop
    ldarg 0
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1107'
    call object Program::'GETPROP'(object, object)
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_REWRITE_WITH_LEMMAS_865:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE_ARGS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1171
    ldnull
    br END1172
TRUE1171:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1172:
    nop
    ldnull
    ceq
    brtrue ELSE1173
    ldnull
    ret
ELSE1173:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'REWRITE'(object)
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_REWRITE_ARGS_860:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE'(object) cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN856)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1153
    ldnull
    br END1154
TRUE1153:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1154:
    nop
    ldnull
    ceq
    brtrue TRUE1155
    ldnull
    br END1156
TRUE1155:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1156:
    nop
    ldnull
    ceq
    brtrue ELSE1170
    ldarg 0
    ret
ELSE1170:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1121'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1157
    ldnull
    br END1158
TRUE1157:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1158:
    nop
    ldnull
    ceq
    brtrue ELSE1169
    ldarg 0
    ret
ELSE1169:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1168
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'REWRITE_WITH_LEMMAS'(object)
    stloc REWRITTEN856
    ldloc REWRITTEN856
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1159
    ldnull
    br END1160
TRUE1159:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1160:
    nop
    ldnull
    ceq
    brtrue ELSE1165
    ldloc REWRITTEN856
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1161
    ldnull
    br END1162
TRUE1161:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1162:
    nop
    ldnull
    ceq
    brtrue ELSE1163
    ldloc REWRITTEN856
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc REWRITTEN856
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    br END1164
ELSE1163:
    nop
    ldnull
END1164:
    nop
    br END1166
ELSE1165:
    nop
    ldnull
END1166:
    nop
    ldnull
    ceq
    brtrue ELSE1167
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ret
ELSE1167:
    nop
    ldloc REWRITTEN856
    ret
ELSE1168:
    nop
    ldnull
    ret
BLOCK_END_REWRITE_854:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'FALSEP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G849850)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1150
    ldnull
    br END1151
TRUE1150:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1151:
    nop
    stloc G849850
    ldloc G849850
    ldnull
    ceq
    brtrue ELSE1152
    ldloc G849850
    ret
ELSE1152:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_FALSEP_847:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TRUEP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G841842)
    ldarg 0
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1147
    ldnull
    br END1148
TRUE1147:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1148:
    nop
    stloc G841842
    ldloc G841842
    ldnull
    ceq
    brtrue ELSE1149
    ldloc G841842
    ret
ELSE1149:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_TRUEP_839:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TAUTOLOGYP'(object, object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1146
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ret
ELSE1146:
    nop
    ldarg 0
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1145
    ldnull
    ret
ELSE1145:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1131
    ldnull
    br END1132
TRUE1131:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1132:
    nop
    ldnull
    ceq
    brtrue TRUE1133
    ldnull
    br END1134
TRUE1133:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1134:
    nop
    ldnull
    ceq
    brtrue ELSE1144
    ldnull
    ret
ELSE1144:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1135'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1136
    ldnull
    br END1137
TRUE1136:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1137:
    nop
    ldnull
    ceq
    brtrue ELSE1143
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1141
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 2
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1141:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1140
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 2
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1140:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1139
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1138
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'TAUTOLOGYP'(object, object, object)
    ret
ELSE1138:
    nop
    ldnull
    ret
ELSE1139:
    nop
    ldnull
    ret
ELSE1143:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1142
    ldnull
    ret
ELSE1142:
    nop
    ldnull
    ret
BLOCK_END_TAUTOLOGYP_833:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'APPLY_SUBST_LST'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1128
    ldnull
    br END1129
TRUE1128:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1129:
    nop
    ldnull
    ceq
    brtrue ELSE1130
    ldnull
    ret
ELSE1130:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'APPLY_SUBST'(object, object)
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'APPLY_SUBST_LST'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
BLOCK_END_APPLY_SUBST_LST_826:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'APPLY_SUBST'(object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR821)
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1117
    ldnull
    br END1118
TRUE1117:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1118:
    nop
    ldnull
    ceq
    brtrue TRUE1119
    ldnull
    br END1120
TRUE1119:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1120:
    nop
    ldnull
    ceq
    brtrue ELSE1127
    ldarg 1
    ldarg 0
    call object Program::'ASSOC'(object, object)
    stloc PAIR821
    ldloc PAIR821
    ldnull
    ceq
    brtrue ELSE1124
    ldloc PAIR821
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ret
ELSE1124:
    nop
    ldarg 1
    ret
ELSE1127:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1121'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1122
    ldnull
    br END1123
TRUE1122:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1123:
    nop
    ldnull
    ceq
    brtrue ELSE1126
    ldarg 1
    ret
ELSE1126:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1125
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'APPLY_SUBST_LST'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1125:
    nop
    ldnull
    ret
BLOCK_END_APPLY_SUBST_819:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD_LEMMAS'(object) cil managed
{
    .maxstack 8
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1114
    ldnull
    br END1115
TRUE1114:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1115:
    nop
    ldnull
    ceq
    brtrue ELSE1116
    ldnull
    ret
ELSE1116:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'ADD_LEMMA'(object)
    pop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ADD_LEMMAS'(object)
    ret
BLOCK_END_ADD_LEMMAS_813:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD_LEMMA'(object) cil managed
{
    .maxstack 8
    .locals init (object SYM809)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1100
    ldnull
    br END1101
TRUE1100:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1101:
    nop
    ldnull
    ceq
    brtrue ELSE1110
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1102'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1103
    ldnull
    br END1104
TRUE1103:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1104:
    nop
    ldnull
    ceq
    brtrue ELSE1108
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1105
    ldnull
    br END1106
TRUE1105:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1106:
    nop
    br END1109
ELSE1108:
    nop
    ldnull
END1109:
    nop
    br END1111
ELSE1110:
    nop
    ldnull
END1111:
    nop
    ldnull
    ceq
    brtrue ELSE1113
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc SYM809
    ldloc SYM809
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1107'
    ldarg 0
    ldloc SYM809
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1107'
    call object Program::'GETPROP'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'PUTPROP'(object, object, object)
    ret
ELSE1113:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1112
    ldstr "Invalid lemma:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1112:
    nop
    ldnull
    ret
BLOCK_END_ADD_LEMMA_807:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUTPROP'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1098, object CLR_VIRT_ARG1097, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1095
    ldnull
    br END1096
TRUE1095:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1096:
    nop
    ldnull
    ceq
    brtrue ELSE1099
    ldnull
    ret
ELSE1099:
    nop
    ldarg 0
    ldarg 1
    ldarg 2
    stloc CLR_VIRT_ARG1097
    stloc CLR_VIRT_ARG1098
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1097
    ldloc CLR_VIRT_ARG1098
    callvirt instance void [LispBase]Lisp.Symbol::'Put'(object, object)
    ldnull
    pop
    ldarg 2
    ret
BLOCK_END_PUTPROP_802:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'GETPROP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1093, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1091
    ldnull
    br END1092
TRUE1091:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1092:
    nop
    ldnull
    ceq
    brtrue ELSE1094
    ldnull
    ret
ELSE1094:
    nop
    ldarg 0
    ldarg 1
    stloc CLR_VIRT_ARG1093
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1093
    callvirt instance object [LispBase]Lisp.Symbol::'Get'(object)
    ret
BLOCK_END_GETPROP_795:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ASSOC'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1086
    ldnull
    br END1087
TRUE1086:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1087:
    nop
    ldnull
    ceq
    brtrue ELSE1090
    ldnull
    ret
ELSE1090:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1089
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
ELSE1089:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1088
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ASSOC'(object, object)
    ret
ELSE1088:
    nop
    ldnull
    ret
BLOCK_END_ASSOC_789:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'MEMBER'(object, object) cil managed
{
    .maxstack 8
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1081
    ldnull
    br END1082
TRUE1081:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1082:
    nop
    ldnull
    ceq
    brtrue ELSE1085
    ldnull
    ret
ELSE1085:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1084
    ldarg 1
    ret
ELSE1084:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1083
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'MEMBER'(object, object)
    ret
ELSE1083:
    nop
    ldnull
    ret
BLOCK_END_MEMBER_783:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'EQUAL'(object, object) cil managed
{
    .maxstack 8
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1067
    ldnull
    br END1068
TRUE1067:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1068:
    nop
    ldnull
    ceq
    brtrue ELSE1080
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ret
ELSE1080:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1070
    ldnull
    br END1071
TRUE1070:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1071:
    nop
    ldnull
    ceq
    brtrue ELSE1074
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1072
    ldnull
    br END1073
TRUE1072:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
END1073:
    nop
    br END1075
ELSE1074:
    nop
    ldnull
END1075:
    nop
    ldnull
    ceq
    brtrue ELSE1079
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1076
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'EQUAL'(object, object)
    ret
ELSE1076:
    nop
    ldnull
    ret
ELSE1079:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ldnull
    ceq
    brtrue ELSE1078
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    box [mscorlib]System.Boolean
    ldnull
    ceq
    brtrue ELSE1077
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1069'
    ret
ELSE1077:
    nop
    ldnull
    ret
ELSE1078:
    nop
    ldnull
    ret
BLOCK_END_EQUAL_777:
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

