(defpackage "SEPARATE-MODULE-A"
  (:use "CLRHACK")
  (:export "ADD2"))

(in-package "SEPARATE-MODULE-A")

(defun add2 (x)
  (+ x 2000))

(export 'add2)