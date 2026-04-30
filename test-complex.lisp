(in-package "CLRHACK")

(defparameter *complex-test*
  '(progn
     (defun add (x y) (%sub x (%sub 0 y)))

     (defun make-accumulator (a)
       (let ((b 10))
         (lambda (c)
           (let ((d 100))
             (lambda (e)
               (setq a (add a 1))
               (setq b (add b 2))
               (setq c (add c 3))
               (setq d (add d 4))
               (let ((res (add a (add b (add c (add d e))))))
                 (%write-int res)
                 res))))))

     (defun main ()
       (let ((acc-builder (make-accumulator 1)))
         (let ((acc-instance1 (acc-builder 1000))
               (acc-instance2 (acc-builder 2000)))
           (%write-line "Instance 1 - Call 1:")
           (acc-instance1 5)
           (%write-line "Instance 1 - Call 2:")
           (acc-instance1 5)
           (%write-line "Instance 2 - Call 1:")
           (acc-instance2 5)
           (%write-line "Instance 1 - Call 3:")
           (acc-instance1 5))))
     (main)))

(compile-and-run *complex-test* "ComplexScopingTest")
