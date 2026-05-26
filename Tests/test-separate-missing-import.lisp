(defpackage "SEPARATE-MISSING-IMPORT"
  (:use "CLRHACK"))

(in-package "SEPARATE-MISSING-IMPORT")

(import 'SEPARATE-MODULE-A:DOES-NOT-EXIST)

(print (does-not-exist 1))