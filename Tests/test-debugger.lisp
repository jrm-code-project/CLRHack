(in-package "CLRHACK")

(defun test-debugger ()
  (print "--- test-debugger ---")
  (restart-case
      (progn
        (print "About to error (unhandled)")
        (error "Something went wrong!"))
    (continue () :report "Continue from the error" 'continued)
    (abort () :report "Abort the operation" 'aborted)))

(defun test-break ()
  (print "--- test-break ---")
  (print "Triggering (break)")
  (break "This is a break with a message: ~A" 42))

(test-break)
(print (test-debugger))
