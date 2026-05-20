;;; -*- Lisp -*-

(defpackage "CLRHACK"
  (:shadowing-import-from "FUNCTION" "COMPOSE")
  (:shadowing-import-from "NAMED-LET" "LET" "NAMED-LAMBDA")
  (:shadowing-import-from "SERIES" "DEFUN" "FUNCALL" "LET*" "MULTIPLE-VALUE-BIND" "ITERATE")
  (:shadow "COMPILE-FILE")
  (:use "ALEXANDRIA" "CL" "FIVEAM" "FOLD" "FUNCTION" "NAMED-LET" "SERIES")
  (:export
   "COMPILE-FILE"
   "LISP->AST"))

(defpackage "IL"
  (:export
   "ILASM"
   "METHOD"
   "CLASS"
   "FIELD"
   "PROPERTY"
   "ASSEMBLY"
   "NOP"
   "POP"
   "DUP"
   "BR"
   "BRFALSE"
   "BRTRUE"
   "CALL"
   "CALLVIRT"
   "RET"
   "LDC.I4"
   "LDSTR"
   "LDARG"
   "LDARG.0"
   "LDARG.1"
   "LDARG.2"
   "LDARG.3"
   "LDARGA"
   "STARG"
   "LDLOC"
   "LDLOCA"
   "STLOC"
   "NEWOBJ"
   "NEWARR"
   "LDELEM.REF"
   "STELEM.REF"
   "ADD"
   "SUB"
   "MUL"
   "DIV"
   "CEQ"
   "CGT.UN"
   "CLT"
   "LDNULL"
   "LDSFLD"
   "STSFLD"
   "LDFLD"
   "STFLD"
   "BOX"
   "UNBOX.ANY"
   "CASTCLASS"
   "ISINST"
   "LEAVE"
   "ENDFINALLY"
   "THROW"
   "RETHROW"
   "TRY"
   "CATCH"
   "FINALLY"))

(defpackage "SYSTEM"
  (:export
   "CALL-STATIC-METHOD"
   "CALL-INSTANCE-METHOD"
   "GET-STATIC-PROPERTY"
   "GET-INSTANCE-PROPERTY"
   "GET-STATIC-FIELD"
   "GET-INSTANCE-FIELD"))
