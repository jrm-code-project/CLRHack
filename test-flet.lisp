(in-package "CLRHACK")

(defun outer-helper (x) 
  (+ x 1))

(defun test-flet ()
  (print "Testing flet...")
  (flet ((double (x) (+ x x))
         (add-10 (x) (+ x 10)))
    (print "double 5:") (print (double 5))
    (print "add-10 4:") (print (add-10 4))
    (flet ((double (x) (+ x 100))) ; should shadow outer double
      (print "shadowed double 5:") (print (double 5)))))

(defun test-flet-non-recursive ()
  (print "Testing flet non-recursivity...")
  ;; helper refers to the TOP-LEVEL helper, not itself.
  (flet ((outer-helper (x) (outer-helper (+ x 10))))
    (print "outer-helper 5 (should be 16):") (print (outer-helper 5))))

(defun main ()
  (test-flet)
  (test-flet-non-recursive))

(main)
