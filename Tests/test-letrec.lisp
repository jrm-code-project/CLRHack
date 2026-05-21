(in-package "CLRHACK")

(defun test-letrec ()
  (print "Testing letrec...")
  (letrec ((even? (lambda (n)
                    (if (eq n 0)
                        t
                        (odd? (- n 1)))))
           (odd? (lambda (n)
                   (if (eq n 0)
                       nil
                       (even? (- n 1))))))
    (if (even? 10)
        (print "even? 10 is T (Correct)")
        (print "even? 10 is NIL (Error)"))
    (if (odd? 11)
        (print "odd? 11 is T (Correct)")
        (print "odd? 11 is NIL (Error)"))))

(defun test-letrec* ()
  (print "Testing letrec*...")
  (letrec* ((a 10)
            (b (+ a 5))
            (c (lambda () (+ a b))))
    (print "a:") (print a)
    (print "b:") (print b)
    (print "c():") (print (c))))

(defun main ()
  (test-letrec)
  (test-letrec*))

(main)
