;;; -*- Lisp -*-

(defpackage "CLRHACK"
    (:shadowing-import-from "FUNCTION" "COMPOSE")
  (:shadowing-import-from "NAMED-LET" "LET" "NAMED-LAMBDA")
  (:shadowing-import-from "SERIES" "DEFUN" "FUNCALL" "LET*" "MULTIPLE-VALUE-BIND")
  (:use "ALEXANDRIA" "CL" "FOLD" "FUNCTION" "NAMED-LET" "PROMISE" "SERIES"))

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
