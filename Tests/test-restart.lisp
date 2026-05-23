(in-package "CLRHACK")

(defun test-restart-bind ()
  (let ((restarts (%get-active-restarts)))
    (print "Initial restarts:")
    (print restarts))
  
  (restart-bind ((my-restart (lambda () (print "Restart invoked!"))))
    (let ((restarts (%get-active-restarts)))
      (print "Inside restart-bind:")
      (print restarts)
      (let ((r (car restarts)))
        (print "Restart name:")
        (print (system:call-instance-method "get_Name" r))))
    
    (restart-bind ((inner-restart (lambda () (print "Inner invoked!"))))
      (let ((restarts (%get-active-restarts)))
        (print "Inside nested restart-bind:")
        (print restarts)
        (print "First restart name:")
        (print (system:call-instance-method "get_Name" (car restarts)))
        (print "Second restart name:")
        (print (system:call-instance-method "get_Name" (car (cdr restarts)))))))
  
  (let ((restarts (%get-active-restarts)))
    (print "After all restart-binds:")
    (print restarts)))

(test-restart-bind)
