(in-package "CLRHACK")

(defparameter *tak-test*
  '(progn
     (defun tak (x y z)
       (if (%not (%lessp y x))
           z
           (tak (tak (%sub x 1) y z)
                (tak (%sub y 1) z x)
                (tak (%sub z 1) x y))))
     (defun main ()
       (%write-int (tak 18 12 6)))
     (main)))

(compile-and-run *tak-test* "TakBenchmark")
