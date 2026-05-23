(in-package "CLRHACK")

(defun test-debugger ()
  (print "--- test-debugger ---")
  (restart-case
      (progn
        (print "About to error (unhandled)")
        (error "Something went wrong!"))
    (continue () :report "Continue from the error" 'continued)
    (abort () :report "Abort the operation" 'aborted)))

(print (test-debugger))
