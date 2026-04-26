;;; -*- Lisp -*-

(defpackage "CLRHACK"
  (:shadowing-import-from "FUNCTION" "COMPOSE")
  (:shadowing-import-from "NAMED-LET" "LET" "NAMED-LAMBDA")
  (:shadowing-import-from "SERIES" "DEFUN" "FUNCALL" "LET*" "MULTIPLE-VALUE-BIND" "ITERATE")
  (:use "ALEXANDRIA" "CL" "FOLD" "FUNCTION" "NAMED-LET" "SERIES")
  (:export
   "AST-NODE"
   "AST-LITERAL"
   "AST-LITERAL-VALUE"
   "AST-VARIABLE"
   "AST-VARIABLE-NAME"
   "AST-ARGUMENT-VARIABLE"
   "AST-LOCAL-VARIABLE"
   "AST-LEXICAL-VARIABLE"
   "AST-GLOBAL-VARIABLE"
   "ANALYZE-ENVIRONMENT"
   "AST-IF"
   "AST-IF-TEST"
   "AST-IF-CONSEQUENT"
   "AST-IF-ALTERNATE"
   "AST-PROGN"
   "AST-PROGN-FORMS"
   "AST-SETQ"
   "AST-SETQ-NAME"
   "AST-SETQ-VALUE"
   "AST-LET"
   "AST-LET-BINDINGS"
   "AST-LET-BODY"
   "AST-LAMBDA"
   "AST-LAMBDA-PARAMS"
   "AST-LAMBDA-BODY"
   "AST-APPLICATION"
   "AST-APPLICATION-OPERATOR"
   "AST-APPLICATION-OPERANDS"
   "LISP->AST"))

(defpackage "IL"
  (:shadow "AND" "OR" "XOR" "NOT" "POP")
  (:export
   "AND"
   "SUB"
   "MUL"
   "DIV"
   "REM"
   "AND"
   "OR"
   "XOR"
   "SHL"
   "SHR"
   "NEG"
   "NOT"
   "NOP"
   "POP"
   "DUP"
   "RET"
   "CEQ"
   "CGT"
   "CLT"))
