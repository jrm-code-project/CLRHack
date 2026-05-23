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

(defun test-restart-invocation ()
  (print "--- test-restart-invocation ---")
  (restart-bind ((my-restart (lambda (x) (print "Restart called with:") (print x) (* x 2))))
    (print "Result of invoke-restart:")
    (print (invoke-restart 'my-restart 21))))

(defun test-restart-interactive ()
  (print "--- test-restart-interactive ---")
  (restart-bind ((my-interactive-restart 
                  (lambda (x y) (print "Interactive restart called with:") (print x) (print y) (+ x y))
                  :interactive-function (lambda () (list 10 20))))
    (print "Result of invoke-restart-interactively:")
    (print (invoke-restart-interactively 'my-interactive-restart))))

(test-restart-bind)
(test-restart-invocation)
(test-restart-interactive)


