(in-package "CLRHACK")

(defparameter *tail-test*
  '(progn
     (defun sub (x y) (%sub x y))

     (defun count-down (n)
       (if (%eq n 0)
           "Done"
           (count-down (sub n 1))))

     (defun main ()
       (%write-line "Starting countdown from 1,000,000...")
       (%write-line (count-down 1000000)))

     (main)))

(compile-and-run *tail-test* "TailTest")