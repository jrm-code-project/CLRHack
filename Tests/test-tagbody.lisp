(in-package "CLRHACK")

(defun test-tagbody-loop ()
  (print "Testing tagbody loop...")
  (let ((i 0))
    (tagbody
     start
       (if (eq i 10) (go end))
       (print i)
       (setq i (+ i 1))
       (go start)
     end)
    (print "Loop finished.")
    (print "Final i (should be 10):")
    (print i)))

(defun test-tagbody-nesting ()
  (print "Testing nested tagbody...")
  (tagbody
   outer-start
     (print "Outer start")
     (tagbody
      inner-start
        (print "Inner start")
        (go inner-end)
        (print "Should NOT print this (inner)")
      inner-end
        (print "Inner end"))
     (print "Back in outer")
     (go outer-end)
     (print "Should NOT print this (outer)")
   outer-end
     (print "Outer end")))

(defun main ()
  (test-tagbody-loop)
  (test-tagbody-nesting))

(main)
