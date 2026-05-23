(in-package "CLRHACK")

(defun test-signal-return ()
  (print "--- test-signal-return ---")
  (handler-bind ((my-condition (lambda (c) 
                                 (print "Handler 1 called")
                                 (print c))))
    (handler-bind ((my-condition (lambda (c)
                                   (print "Handler 2 called")
                                   (print c))))
      (print "Signaling my-condition")
      (signal 'my-condition)
      (print "Signal returned"))))

(defun test-signal-no-handler ()
  (print "--- test-signal-no-handler ---")
  (print "Signaling unhandled-condition")
  (let ((result (signal 'unhandled-condition)))
    (print "Result (should be NIL):")
    (print result)))

(defun test-error-handled ()
  (print "--- test-error-handled ---")
  (let ((res (handler-case
                 (progn
                   (print "Erroring my-error")
                   (error 'my-error))
               (my-error (c)
                 (print "Caught error:")
                 (print c)
                 'handled-successfully))))
    (print "Result:")
    (print res)))

(defun test-signal-order ()
  (print "--- test-signal-order ---")
  (handler-bind ((my-cond (lambda (c) (print "Outer handler"))))
    (handler-bind ((my-cond (lambda (c) (print "Inner handler"))))
      (signal 'my-cond))))

(defun test-error-nested-handlers ()
  (print "--- test-error-nested-handlers ---")
  ;; Signal will call the handler, which returns, then it continues.
  ;; If it's an error, it will keep going until someone performs a non-local exit.
  (handler-bind ((my-error (lambda (c) (print "Handler-bind called (returning)"))))
    (handler-case
        (progn
          (print "Signaling error")
          (error 'my-error))
      (my-error (c)
        (print "Handler-case caught it")))))

(defun test-dotnet-exception ()
  (print "--- test-dotnet-exception ---")
  (let ((res (handler-case
                 (progn
                   (print "Erroring with System.Exception")
                   (error (dotnet-new "System.Exception" "My .NET Exception")))
               ("System.Exception" (c)
                 (print "Caught .NET Exception:")
                 (dotnet-get c "Message")))))
    (print "Result:")
    (print res)))

(defun test-arity-error-caught ()
  (print "--- test-arity-error-caught ---")
  (let ((res (handler-case
                 (progn
                   (print "Calling main with too many args")
                   (main 1 2 3))
               ("Lisp.WrongNumberOfArgumentsException" (c)
                 (print "Caught WrongNumberOfArgumentsException:")
                 (dotnet-get c "Message")))))
    (print "Result:")
    (print res)))

(defun main ()
  (test-signal-return)
  (test-signal-no-handler)
  (test-error-handled)
  (test-signal-order)
  (test-error-nested-handlers)
  (test-dotnet-exception)
  (test-arity-error-caught))

(main)
