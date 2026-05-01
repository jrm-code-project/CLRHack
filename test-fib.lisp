(in-package "CLRHACK")

(progn
  (defun add (a b)
    (%sub a (%sub 0 b)))
  (defun fib (n)
    (if (%lessp n 2)
        n
        (add (fib (%sub n 1))
             (fib (%sub n 2)))))
  (defun main ()
    (%write-line "Fibonacci of 10:")
    (%write-int (fib 10)))
  (main))
