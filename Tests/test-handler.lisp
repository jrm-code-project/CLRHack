(in-package "CLRHACK")

(defun test-handler-bind ()
  (let ((handlers (%get-active-handlers)))
    (print "Initial handlers:")
    (print handlers))
  
  (handler-bind ((error (lambda (c) (print "Error handler called!"))))
    (let ((handlers (%get-active-handlers)))
      (print "Inside handler-bind:")
      (print handlers)
      (let ((h (car handlers)))
        (print "Handler condition type:")
        (print (system:call-instance-method "get_ConditionType" h)))))
  
  (let ((handlers (%get-active-handlers)))
    (print "After handler-bind:")
    (print handlers)))

(test-handler-bind)
