(in-package "CLRHACK")

(progn
  (defun fib (n)
    (if (< n 2)
        n
        (+ (fib (- n 1))
           (fib (- n 2)))))
  (defun main ()
    (print "Fibonacci of 10:")
    (print (fib 10)))
  (main))
