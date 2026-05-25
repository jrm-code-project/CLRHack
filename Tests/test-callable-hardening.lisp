(in-package "CLRHACK")

(defun test-undefined-global-function ()
  (print "--- test-undefined-global-function ---")
  (let ((res (handler-case
                 (progn
                   (equal 1 1)
                   "SHOULD-NOT-REACH")
               ("System.Exception" (e)
                 (print "Caught .NET Exception:")
                 (print e)
                 "CAUGHT"))))
    (print "Result:")
    (print res)))

(defun test-non-function-object-call ()
  (print "--- test-non-function-object-call ---")
  (let ((res (handler-case
                 (let ((f 42))
                   (f 1)
                   "SHOULD-NOT-REACH")
               ("System.Exception" (e)
                 (print "Caught .NET Exception:")
                 (print e)
                 "CAUGHT"))))
    (print "Result:")
    (print res)))

(defun test-nested-computed-operator-undefined ()
  (print "--- test-nested-computed-operator-undefined ---")
  (let ((res (handler-case
                 (let ((chooser (lambda () equal)))
                   ((chooser) 1 1)
                   "SHOULD-NOT-REACH")
               ("System.Exception" (e)
                 (print "Caught .NET Exception:")
                 (print e)
                 "CAUGHT"))))
    (print "Result:")
    (print res)))

(test-undefined-global-function)
(test-non-function-object-call)
(test-nested-computed-operator-undefined)
