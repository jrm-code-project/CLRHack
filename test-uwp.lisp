(in-package "CLRHACK")

(defun test-uwp-basic ()
  (print "Testing unwind-protect basic...")
  (let ((x "initial"))
    (let ((res (unwind-protect
                 (progn (print "Inside protected") (setq x "mutated") "result")
                 (print "Inside cleanup") (setq x "cleaned"))))
      (print "Result of uwp (should be result):")
      (print res)
      (print "Value of x (should be cleaned):")
      (print x))))

(defun test-uwp-nested-go ()
  (print "Testing unwind-protect with GO...")
  (let ((cleanup-run nil))
    (tagbody
      (unwind-protect
        (progn (print "About to go") (go target))
        (print "Running cleanup from go")
        (setq cleanup-run t))
      target
      (print "Reached target")
      (if (eq cleanup-run t)
          (print "SUCCESS: Cleanup run!")
          (print "FAILURE: Cleanup NOT run!")))))

(defun main ()
  (test-uwp-basic)
  (test-uwp-nested-go))

(main)
