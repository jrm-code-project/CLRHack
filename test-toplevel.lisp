(in-package "CLRHACK")

(progn
  (defun say-hello (name)
    (print "Hello from:")
    (print name))

  (defun make-multiplier (factor)
    (lambda (x)
      (print "Multiplying by captured factor (simulated)...")
      (print factor)
      (print x)))

  (defun main ()
    (say-hello "TopLevelTest")
    (let ((mul-by-10 (make-multiplier "10")))
      (mul-by-10 "5")))

  (main))
