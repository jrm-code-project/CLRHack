(in-package "CLRHACK")

(defparameter *toplevel-test*
  '(progn
     (defun say-hello (name)
       (%write-line "Hello from:")
       (%write-line name))

     (defun make-multiplier (factor)
       (lambda (x)
         (%write-line "Multiplying by captured factor (simulated)...")
         (%write-line factor)
         (%write-line x)))

     (defun main ()
       (say-hello "TopLevelTest")
       (let ((mul-by-10 (make-multiplier "10")))
         (mul-by-10 "5")))

     (main)))

(compile-and-run *toplevel-test* "TopLevelTest")
