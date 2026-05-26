(defpackage "SEPARATE-MODULE-B"
  (:use "CLRHACK"))

(in-package "SEPARATE-MODULE-B")

(import 'SEPARATE-MODULE-A:ADD2)

(print (add2 40))