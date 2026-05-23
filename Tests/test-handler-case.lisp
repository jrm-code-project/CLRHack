(in-package "CLRHACK")

(defun test-handler-case-simple ()
  (print "--- test-handler-case-simple ---")
  (let ((result
         (handler-case
             (progn
               (print "About to error")
               (error 'my-error))
           (my-error (c)
             (print "Caught my-error:")
             (print c)
             'caught-it))))
    (print "Result:")
    (print result)))

(defun test-handler-case-no-catch ()
  (print "--- test-handler-case-no-catch ---")
  (let ((result
         (handler-case
             (progn
               (print "Returning normally")
               42)
           (my-error (c)
             'should-not-happen))))
    (print "Result:")
    (print result)))

(defun test-handler-case-nested ()
  (print "--- test-handler-case-nested ---")
  (handler-case
      (handler-case
          (error 'inner-error)
        (outer-error (c) (print "Caught outer in inner (wrong!)")))
    (inner-error (c) (print "Caught inner in outer (correct!)"))))

(test-handler-case-simple)
(test-handler-case-no-catch)
(test-handler-case-nested)
