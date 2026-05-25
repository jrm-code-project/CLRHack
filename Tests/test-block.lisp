(in-package "CLRHACK")

(defun test-block-basic ()
  (print "Testing block basic...")
  (let ((val (block foo
               (print "Inside block")
               (return-from foo "returned value")
               (print "Should NOT print this"))))
    (print "Result (should be returned value):")
    (print val)))

(defun test-block-nested ()
  (print "Testing nested blocks...")
  (block outer
    (print "Outer start")
    (block inner
      (print "Inner start")
      (return-from outer "exited from inner to outer")
      (print "Should NOT print this (inner)"))
    (print "Should NOT print this (outer)"))
  (print "Back from outer block"))

(defun test-block-uwp ()
  (print "Testing block with unwind-protect...")
  (block exit
    (unwind-protect
      (progn
        (print "Protected code")
        (return-from exit "value from return-from"))
      (print "Cleanup code run"))))

(defun implicit-block-test (x)
  (if (eq x 0)
      (return-from implicit-block-test "zero"))
  "non-zero")

(defun test-implicit-block ()
  (print "Testing implicit function block...")
  (print "Result for 0:")
  (print (implicit-block-test 0))
  (print "Result for 1:")
  (print (implicit-block-test 1)))

(defun test-block-non-local-closure ()
  (print "Testing non-local return-from through closure...")
  (let ((result
          (block escape
            (let ((k (lambda ()
                       (return-from escape "closure escaped"))))
              (funcall k)
              "Should NOT print this closure path"))))
    (print "Closure result (should be closure escaped):")
    (print result)))

(defun main ()
  (test-block-basic)
  (test-block-nested)
  (test-block-uwp)
  (test-implicit-block)
  (test-block-non-local-closure))

(main)
