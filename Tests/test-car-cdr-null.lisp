(in-package :cl-user)

(defun assert-true (condition message)
  (unless condition
    (error message)))

(defun main ()
  (assert-true (null (car nil)) "Expected (car nil) to return NIL.")
  (assert-true (null (cdr nil)) "Expected (cdr nil) to return NIL.")
  0)