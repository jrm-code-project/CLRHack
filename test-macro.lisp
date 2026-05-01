(in-package "CLRHACK")

(let ((x 10))
  (when (< x 20)
    (print "X is less than 20 (via built-in WHEN)!")))

(let ((y 30))
  (unless (< y 20)
    (print "Y is NOT less than 20 (via built-in UNLESS)!")))

(let* ((a 5)
       (b (+ a 10)))
  (print "A + 10 is (via LET*):")
  (print b))

(defparameter *test-param* "I am a parameter")
(print *test-param*)

(cond
  ((< 10 5) (print "Failure"))
  ((< 5 10) (print "Success (via COND)!"))
  (t (print "Fallthrough")))

(let ((f (lambda (x) (+ x 1))))
  (print "Funcall result (10 + 1):")
  (print (funcall f 10)))

