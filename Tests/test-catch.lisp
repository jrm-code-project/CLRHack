(in-package "CLRHACK")

(defun test-catch-basic ()
  (print "Testing catch basic...")
  (let ((val (catch 'foo
               (print "Inside catch")
               (throw 'foo "thrown value")
               (print "Should NOT print this"))))
    (print "Result (should be thrown value):")
    (print val)))

(defun test-catch-nested ()
  (print "Testing nested catch...")
  (catch 'outer
    (print "Outer start")
    (catch 'inner
      (print "Inner start")
      (throw 'outer "thrown to outer")
      (print "Should NOT print this (inner)"))
    (print "Should NOT print this (outer)"))
  (print "Back from outer catch"))

(defun test-catch-mismatch ()
  (print "Testing catch mismatch...")
  (catch 'bar
    (catch 'foo
      (print "Throwing to bar from inner foo")
      (throw 'bar "reached bar")
      (print "Should NOT print this"))))

(defun non-local-throw-helper (tag val)
  (print "Inside helper, about to throw...")
  (throw tag val))

(defun test-catch-non-local ()
  (print "Testing truly non-local throw...")
  (let ((res (catch 'my-tag
               (non-local-throw-helper 'my-tag "final result"))))
    (print "Result of non-local throw:")
    (print res)))

(defun main ()
  (test-catch-basic)
  (test-catch-nested)
  (test-catch-mismatch)
  (test-catch-non-local))

(main)
