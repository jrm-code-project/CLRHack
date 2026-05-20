(in-package "CLRHACK")

(progn
  (defun tak (x y z)
    (if (not (< y x))
        z
        (tak (tak (- x 1) y z)
             (tak (- y 1) z x)
             (tak (- z 1) x y))))
  (defun main ()
    (print (tak 18 12 6)))
  (main))
