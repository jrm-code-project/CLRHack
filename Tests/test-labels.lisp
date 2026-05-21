(in-package "CLRHACK")

(defun test-labels ()
  (print "Testing labels...")
  (labels ((even? (n)
             (if (eq n 0)
                 t
                 (odd? (- n 1))))
           (odd? (n)
             (if (eq n 0)
                 nil
                 (even? (- n 1)))))
    (if (even? 10)
        (print "even? 10 is T (Correct)")
        (print "even? 10 is NIL (Error)"))
    (if (odd? 11)
        (print "odd? 11 is T (Correct)")
        (print "odd? 11 is NIL (Error)"))))

(defun main ()
  (test-labels))

(main)
