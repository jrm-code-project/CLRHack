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
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1241'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1240'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1239'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1238'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1237'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1236'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1235'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1234'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1233'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1232'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1231'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1230'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1229'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1228'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1227'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1226'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1225'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1224'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1193'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1147'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1133'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1119'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1114'
    .field public static class [LispBase]Lisp.Symbol 'SYM_G1081'

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
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1241'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "S"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1240'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "U"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1239'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "V"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1238'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "D"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1237'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "C"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1236'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "B"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1235'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "A"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1234'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "W"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1233'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "PLUS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "OR"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1231'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "MEMBER"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LENGTH"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "REVERSE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Z"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "Y"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "X"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "APPEND"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "WIN"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1193'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "IF"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1147'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "QUOTE"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1133'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "LEMMAS"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1119'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "EQUAL"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    call class [LispBase]Lisp.Package [LispBase]Lisp.Package::'get_Current'()
    ldstr "T"
    callvirt instance class [LispBase]Lisp.Symbol [LispBase]Lisp.Package::'Intern'(string)
    stsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ret
}

.method public static hidebysig object 'MAIN'() cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN914, object TERM913)
    call object Program::'SETUP'()
    pop
    ldstr "Lemmas loaded."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    call object Program::'TEST_TERM'()
    stloc TERM913
    ldstr "Rewriting term..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc TERM913
    call object Program::'REWRITE'(object)
    stloc REWRITTEN914
    ldstr "Tautology check..."
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldloc REWRITTEN914
    ldnull
    ldnull
    call object Program::'TAUTOLOGYP'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1242
    ldstr "SUCCESS: Term is a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1242:
    nop
    ldstr "FAILURE: Term is NOT a tautology!"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
BLOCK_END_MAIN_911:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TEST_TERM'() cil managed
{
    .maxstack 14
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1147'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1233'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1233'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1234'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1235'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1236'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1237'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1234'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1235'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1236'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1237'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1238'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1239'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1240'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1241'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1241'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1240'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1239'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1238'
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
BLOCK_END_TEST_TERM_907:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'SETUP'() cil managed
{
    .maxstack 15
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1231'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1228'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1230'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1224'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1229'
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
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1225'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1232'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1226'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1227'
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
BLOCK_END_SETUP_903:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY_LST'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object NEW_ALIST900)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1213
    ldnull
    br END1214
TRUE1213:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1214:
    nop
    ldnull
    ceq
    brtrue ELSE1223
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1215
    ldnull
    br END1216
TRUE1215:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1216:
    nop
    ldnull
    ceq
    brtrue ELSE1219
    ldarg 2
    ret
ELSE1219:
    nop
    ldnull
    ret
ELSE1223:
    nop
    ldarg 1
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1217
    ldnull
    br END1218
TRUE1217:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1218:
    nop
    ldnull
    ceq
    brtrue ELSE1222
    ldnull
    ret
ELSE1222:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1221
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 2
    call object Program::'UNIFY'(object, object, object)
    stloc NEW_ALIST900
    ldloc NEW_ALIST900
    ldnull
    ceq
    brtrue ELSE1220
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldloc NEW_ALIST900
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1220:
    nop
    ldnull
    ret
ELSE1221:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_LST_898:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'UNIFY'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR892)
    ldarg 0
    ldarg 1
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1212
    ldarg 2
    ret
ELSE1212:
    nop
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1196
    ldnull
    br END1197
TRUE1196:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1197:
    nop
    ldnull
    ceq
    brtrue TRUE1198
    ldnull
    br END1199
TRUE1198:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1199:
    nop
    ldnull
    ceq
    brtrue ELSE1211
    ldarg 1
    ldarg 2
    call object Program::'ASSOC'(object, object)
    stloc PAIR892
    ldloc PAIR892
    ldnull
    ceq
    brtrue ELSE1207
    ldloc PAIR892
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 0
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1206
    ldarg 2
    ret
ELSE1206:
    nop
    ldnull
    ret
ELSE1207:
    nop
    ldarg 1
    ldarg 0
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldarg 2
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ret
ELSE1211:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1200
    ldnull
    br END1201
TRUE1200:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1201:
    nop
    ldnull
    ceq
    brtrue TRUE1202
    ldnull
    br END1203
TRUE1202:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1203:
    nop
    ldnull
    ceq
    brtrue ELSE1210
    ldnull
    ret
ELSE1210:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1204
    ldnull
    br END1205
TRUE1204:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1205:
    nop
    ldnull
    ceq
    brtrue ELSE1209
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 2
    tail. call object Program::'UNIFY_LST'(object, object, object)
    ret
ELSE1209:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1208
    ldnull
    ret
ELSE1208:
    nop
    ldnull
    ret
BLOCK_END_UNIFY_890:
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
    brtrue TRUE1191
    ldnull
    br END1192
TRUE1191:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1192:
    nop
    ldnull
    ceq
    brtrue ELSE1195
    ldarg 0
    ret
ELSE1195:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1193'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1193'
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    ldnull
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'UNIFY'(object, object, object)
    ldnull
    ceq
    brtrue ELSE1194
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1193'
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1193'
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
ELSE1194:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_LOOP_LEMMAS_883:
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
    brtrue TRUE1186
    ldnull
    br END1187
TRUE1186:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1187:
    nop
    ldnull
    ceq
    brtrue TRUE1188
    ldnull
    br END1189
TRUE1188:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1189:
    nop
    ldnull
    ceq
    brtrue ELSE1190
    ldarg 0
    ret
ELSE1190:
    nop
    ldarg 0
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1119'
    call object Program::'GETPROP'(object, object)
    tail. call object Program::'LOOP_LEMMAS'(object, object)
    ret
BLOCK_END_REWRITE_WITH_LEMMAS_877:
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
    brtrue TRUE1183
    ldnull
    br END1184
TRUE1183:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1184:
    nop
    ldnull
    ceq
    brtrue ELSE1185
    ldnull
    ret
ELSE1185:
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
BLOCK_END_REWRITE_ARGS_872:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'REWRITE'(object) cil managed
{
    .maxstack 8
    .locals init (object REWRITTEN868)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1165
    ldnull
    br END1166
TRUE1165:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1166:
    nop
    ldnull
    ceq
    brtrue TRUE1167
    ldnull
    br END1168
TRUE1167:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1168:
    nop
    ldnull
    ceq
    brtrue ELSE1182
    ldarg 0
    ret
ELSE1182:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1133'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1169
    ldnull
    br END1170
TRUE1169:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1170:
    nop
    ldnull
    ceq
    brtrue ELSE1181
    ldarg 0
    ret
ELSE1181:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1180
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    call object Program::'REWRITE_ARGS'(object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    call object Program::'REWRITE_WITH_LEMMAS'(object)
    stloc REWRITTEN868
    ldloc REWRITTEN868
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1171
    ldnull
    br END1172
TRUE1171:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1172:
    nop
    ldnull
    ceq
    brtrue ELSE1177
    ldloc REWRITTEN868
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1173
    ldnull
    br END1174
TRUE1173:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1174:
    nop
    ldnull
    ceq
    brtrue ELSE1175
    ldloc REWRITTEN868
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldloc REWRITTEN868
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    br END1176
ELSE1175:
    nop
    ldnull
END1176:
    nop
    br END1178
ELSE1177:
    nop
    ldnull
END1178:
    nop
    ldnull
    ceq
    brtrue ELSE1179
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ret
ELSE1179:
    nop
    ldloc REWRITTEN868
    ret
ELSE1180:
    nop
    ldnull
    ret
BLOCK_END_REWRITE_866:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'FALSEP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G861862)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1162
    ldnull
    br END1163
TRUE1162:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1163:
    nop
    stloc G861862
    ldloc G861862
    ldnull
    ceq
    brtrue ELSE1164
    ldloc G861862
    ret
ELSE1164:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_FALSEP_859:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'TRUEP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object G853854)
    ldarg 0
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1159
    ldnull
    br END1160
TRUE1159:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1160:
    nop
    stloc G853854
    ldloc G853854
    ldnull
    ceq
    brtrue ELSE1161
    ldloc G853854
    ret
ELSE1161:
    nop
    ldarg 0
    ldarg 1
    tail. call object Program::'MEMBER'(object, object)
    ret
BLOCK_END_TRUEP_851:
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
    brtrue ELSE1158
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ret
ELSE1158:
    nop
    ldarg 0
    ldarg 2
    call object Program::'FALSEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1157
    ldnull
    ret
ELSE1157:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1143
    ldnull
    br END1144
TRUE1143:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1144:
    nop
    ldnull
    ceq
    brtrue TRUE1145
    ldnull
    br END1146
TRUE1145:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1146:
    nop
    ldnull
    ceq
    brtrue ELSE1156
    ldnull
    ret
ELSE1156:
    nop
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1147'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1148
    ldnull
    br END1149
TRUE1148:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1149:
    nop
    ldnull
    ceq
    brtrue ELSE1155
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    call object Program::'TRUEP'(object, object)
    ldnull
    ceq
    brtrue ELSE1153
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
ELSE1153:
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
    brtrue ELSE1152
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
ELSE1152:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1151
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
    brtrue ELSE1150
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
ELSE1150:
    nop
    ldnull
    ret
ELSE1151:
    nop
    ldnull
    ret
ELSE1155:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1154
    ldnull
    ret
ELSE1154:
    nop
    ldnull
    ret
BLOCK_END_TAUTOLOGYP_845:
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
    brtrue TRUE1140
    ldnull
    br END1141
TRUE1140:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1141:
    nop
    ldnull
    ceq
    brtrue ELSE1142
    ldnull
    ret
ELSE1142:
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
BLOCK_END_APPLY_SUBST_LST_838:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'APPLY_SUBST'(object, object) cil managed
{
    .maxstack 8
    .locals init (object PAIR833)
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1129
    ldnull
    br END1130
TRUE1129:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1130:
    nop
    ldnull
    ceq
    brtrue TRUE1131
    ldnull
    br END1132
TRUE1131:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1132:
    nop
    ldnull
    ceq
    brtrue ELSE1139
    ldarg 1
    ldarg 0
    call object Program::'ASSOC'(object, object)
    stloc PAIR833
    ldloc PAIR833
    ldnull
    ceq
    brtrue ELSE1136
    ldloc PAIR833
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ret
ELSE1136:
    nop
    ldarg 1
    ret
ELSE1139:
    nop
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1133'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1134
    ldnull
    br END1135
TRUE1134:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1135:
    nop
    ldnull
    ceq
    brtrue ELSE1138
    ldarg 1
    ret
ELSE1138:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1137
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
ELSE1137:
    nop
    ldnull
    ret
BLOCK_END_APPLY_SUBST_831:
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
    brtrue TRUE1126
    ldnull
    br END1127
TRUE1126:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1127:
    nop
    ldnull
    ceq
    brtrue ELSE1128
    ldnull
    ret
ELSE1128:
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
BLOCK_END_ADD_LEMMAS_825:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'ADD_LEMMA'(object) cil managed
{
    .maxstack 8
    .locals init (object SYM821)
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1112
    ldnull
    br END1113
TRUE1112:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1113:
    nop
    ldnull
    ceq
    brtrue ELSE1122
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1114'
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1115
    ldnull
    br END1116
TRUE1115:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1116:
    nop
    ldnull
    ceq
    brtrue ELSE1120
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1117
    ldnull
    br END1118
TRUE1117:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1118:
    nop
    br END1121
ELSE1120:
    nop
    ldnull
END1121:
    nop
    br END1123
ELSE1122:
    nop
    ldnull
END1123:
    nop
    ldnull
    ceq
    brtrue ELSE1125
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    stloc SYM821
    ldloc SYM821
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1119'
    ldarg 0
    ldloc SYM821
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1119'
    call object Program::'GETPROP'(object, object)
    newobj instance void [LispBase]Lisp.List/ListCell::'.ctor'(object, object)
    tail. call object Program::'PUTPROP'(object, object, object)
    ret
ELSE1125:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1124
    ldstr "Invalid lemma:"
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    pop
    ldarg 0
    call void [mscorlib]System.Console::'WriteLine'(object)
    ldnull
    ret
ELSE1124:
    nop
    ldnull
    ret
BLOCK_END_ADD_LEMMA_819:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'PUTPROP'(object, object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1110, object CLR_VIRT_ARG1109, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1107
    ldnull
    br END1108
TRUE1107:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1108:
    nop
    ldnull
    ceq
    brtrue ELSE1111
    ldnull
    ret
ELSE1111:
    nop
    ldarg 0
    ldarg 1
    ldarg 2
    stloc CLR_VIRT_ARG1109
    stloc CLR_VIRT_ARG1110
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1109
    ldloc CLR_VIRT_ARG1110
    callvirt instance void [LispBase]Lisp.Symbol::'Put'(object, object)
    ldnull
    pop
    ldarg 2
    ret
BLOCK_END_PUTPROP_814:
    nop
    ldnull
    ret
}

.method public static hidebysig object 'GETPROP'(object, object) cil managed
{
    .maxstack 8
    .locals init (object CLR_VIRT_ARG1105, object CLR_VIRT_INST_TEMP)
    ldarg 0
    ldnull
    call bool [mscorlib]System.Object::'Equals'(object, object)
    brtrue TRUE1103
    ldnull
    br END1104
TRUE1103:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1104:
    nop
    ldnull
    ceq
    brtrue ELSE1106
    ldnull
    ret
ELSE1106:
    nop
    ldarg 0
    ldarg 1
    stloc CLR_VIRT_ARG1105
    castclass [LispBase]Lisp.Symbol
    ldloc CLR_VIRT_ARG1105
    callvirt instance object [LispBase]Lisp.Symbol::'Get'(object)
    ret
BLOCK_END_GETPROP_807:
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
    brtrue TRUE1098
    ldnull
    br END1099
TRUE1098:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1099:
    nop
    ldnull
    ceq
    brtrue ELSE1102
    ldnull
    ret
ELSE1102:
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
    brtrue ELSE1101
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ret
ELSE1101:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1100
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'ASSOC'(object, object)
    ret
ELSE1100:
    nop
    ldnull
    ret
BLOCK_END_ASSOC_801:
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
    brtrue TRUE1093
    ldnull
    br END1094
TRUE1093:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1094:
    nop
    ldnull
    ceq
    brtrue ELSE1097
    ldnull
    ret
ELSE1097:
    nop
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1096
    ldarg 1
    ret
ELSE1096:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1095
    ldarg 0
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'MEMBER'(object, object)
    ret
ELSE1095:
    nop
    ldnull
    ret
BLOCK_END_MEMBER_795:
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
    brtrue TRUE1079
    ldnull
    br END1080
TRUE1079:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1080:
    nop
    ldnull
    ceq
    brtrue ELSE1092
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ret
ELSE1092:
    nop
    ldarg 0
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1082
    ldnull
    br END1083
TRUE1082:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1083:
    nop
    ldnull
    ceq
    brtrue ELSE1086
    ldarg 1
    isinst [LispBase]Lisp.List/ListCell
    ldnull
    cgt.un
    brtrue TRUE1084
    ldnull
    br END1085
TRUE1084:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
END1085:
    nop
    br END1087
ELSE1086:
    nop
    ldnull
END1087:
    nop
    ldnull
    ceq
    brtrue ELSE1091
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::first
    call object Program::'EQUAL'(object, object)
    ldnull
    ceq
    brtrue ELSE1088
    ldarg 0
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    ldarg 1
    castclass [LispBase]Lisp.List/ListCell
    ldfld object [LispBase]Lisp.List/ListCell::rest
    tail. call object Program::'EQUAL'(object, object)
    ret
ELSE1088:
    nop
    ldnull
    ret
ELSE1091:
    nop
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ldnull
    ceq
    brtrue ELSE1090
    ldarg 0
    ldarg 1
    call bool [mscorlib]System.Object::'Equals'(object, object)
    box [mscorlib]System.Boolean
    ldnull
    ceq
    brtrue ELSE1089
    ldsfld class [LispBase]Lisp.Symbol Program::'SYM_G1081'
    ret
ELSE1089:
    nop
    ldnull
    ret
ELSE1090:
    nop
    ldnull
    ret
BLOCK_END_EQUAL_789:
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

