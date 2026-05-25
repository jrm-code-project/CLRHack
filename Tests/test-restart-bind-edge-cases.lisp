(in-package "CLRHACK")

(defun rbe-marker (text)
  (print text))

(defun rbe-pass (name)
  (print name))

(defun rbe-fail (name)
  (declare (ignore name))
  (print "RBE:FAIL"))

(defun rbe-check (name condition)
  (if condition
      (rbe-pass name)
      (rbe-fail name)))

(defun rbe-restart-count ()
  (labels ((count-list (lst n)
             (if (null lst)
                 n
                 (count-list (cdr lst) (+ n 1)))))
    (count-list (%get-active-restarts) 0)))

(defun rbe-test-visibility-cleanup ()
  (rbe-marker "RBE:BEGIN:VISIBILITY")
  (let ((before (rbe-restart-count)))
    (restart-bind ((rbe-visible (lambda () :visible-ok)))
      (rbe-check "VISIBILITY:INSIDE-COUNT"
                 (= (rbe-restart-count) (+ before 1)))
      (rbe-check "VISIBILITY:FIND-INSIDE"
                 (not (null (find-restart 'rbe-visible))))
      (rbe-check "VISIBILITY:INVOKE"
                 (eq (invoke-restart 'rbe-visible) :visible-ok)))
    (rbe-check "VISIBILITY:AFTER-COUNT"
               (= (rbe-restart-count) before))
    (rbe-check "VISIBILITY:FIND-AFTER"
               (null (find-restart 'rbe-visible))))
  (rbe-marker "RBE:END:VISIBILITY"))

(defun rbe-test-shadowing ()
  (rbe-marker "RBE:BEGIN:SHADOWING")
  (restart-bind ((shadow (lambda () :outer-ok)))
    (rbe-check "SHADOWING:OUTER-RESTORED"
               (eq (invoke-restart 'shadow) :outer-ok)))
  (restart-bind ((shadow (lambda () :inner-ok)))
    (rbe-check "SHADOWING:INNER-WINS"
               (eq (invoke-restart 'shadow) :inner-ok)))
  (rbe-marker "RBE:END:SHADOWING"))

(defun rbe-run-case (name thunk)
  (handler-case
      (funcall thunk)
    (error (e)
      (declare (ignore e))
      (print "RBE:FAIL")
      (print name))))

(defun rbe-test-arity ()
  (rbe-marker "RBE:BEGIN:ARITY")
  (restart-bind ((rbe-arity-0 (lambda () 99))
                 (rbe-arity-1 (lambda (x) (+ x 1)))
                 (rbe-arity-2 (lambda (x y) (+ x y)))
                 (rbe-arity-3 (lambda (x y z) (+ x y z))))
    (rbe-check "ARITY:ZERO"
               (= (invoke-restart 'rbe-arity-0) 99))
    (rbe-check "ARITY:ONE"
               (= (invoke-restart 'rbe-arity-1 41) 42))
    (rbe-check "ARITY:TWO"
               (= (invoke-restart 'rbe-arity-2 10 32) 42))
    (rbe-check "ARITY:THREE"
               (= (invoke-restart 'rbe-arity-3 10 20 12) 42)))
  (rbe-marker "RBE:END:ARITY"))

(defun rbe-test-interactive ()
  (rbe-marker "RBE:BEGIN:INTERACTIVE")
  (restart-bind ((rbe-int-list
                  (lambda (a b c) (list a b c))
                  :interactive-function (lambda () (list 1 2 3)))
                 (rbe-int-scalar
                  (lambda (x) (* x 2))
                  :interactive-function (lambda () 21)))
    (let ((res (invoke-restart-interactively 'rbe-int-list)))
      (rbe-check "INTERACTIVE:LIST"
                 (and (= (car res) 1)
                      (= (car (cdr res)) 2)
                      (= (car (cdr (cdr res))) 3)
                      (null (cdr (cdr (cdr res)))))))
    (rbe-check "INTERACTIVE:SCALAR"
               (= (invoke-restart-interactively 'rbe-int-scalar) 42)))
  (rbe-marker "RBE:END:INTERACTIVE"))

(defun rbe-test-anonymous ()
  (rbe-marker "RBE:BEGIN:ANONYMOUS")
  (restart-bind ((nil (lambda () :anonymous-ok)))
    (let ((anon (find-restart nil)))
      (rbe-check "ANONYMOUS:FIND" (not (null anon)))
      (rbe-check "ANONYMOUS:INVOKE-BY-OBJECT"
                 (eq (invoke-restart anon) :anonymous-ok))))
  (rbe-marker "RBE:END:ANONYMOUS"))

(defun rbe-test-stack-order ()
  (rbe-marker "RBE:BEGIN:STACK-ORDER")
  (restart-bind ((rbe-first (lambda () "FIRST")))
    (restart-bind ((rbe-second (lambda () "SECOND")))
      (let* ((restarts (%get-active-restarts))
             (name-1 (system:call-instance-method "get_Name" (car restarts)))
             (name-2 (system:call-instance-method "get_Name" (car (cdr restarts)))))
        (rbe-check "STACK-ORDER:INNER-FIRST"
                   (eq name-1 'rbe-second))
        (rbe-check "STACK-ORDER:INNER-SECOND"
                   (eq name-2 'rbe-first))))
    (let* ((restarts (%get-active-restarts))
           (name-1 (system:call-instance-method "get_Name" (car restarts))))
      (rbe-check "STACK-ORDER:RESTORED"
                 (eq name-1 'rbe-first))))
  (rbe-marker "RBE:END:STACK-ORDER"))

(defun rbe-test-unwind-protect-cleanup ()
  (rbe-marker "RBE:BEGIN:UNWIND-PROTECT")
  (let ((cleanup-ran nil)
        (before (rbe-restart-count)))
    (unwind-protect
        (restart-bind ((rbe-uwp (lambda () :uwp-ok)))
          (rbe-check "UNWIND-PROTECT:INVOKE"
                     (eq (invoke-restart 'rbe-uwp) :uwp-ok)))
      (setq cleanup-ran t))
    (rbe-check "UNWIND-PROTECT:CLEANUP-RAN" cleanup-ran)
    (rbe-check "UNWIND-PROTECT:COUNT-RESTORED"
               (= (rbe-restart-count) before))
    (rbe-check "UNWIND-PROTECT:NOT-VISIBLE-AFTER"
               (null (find-restart 'rbe-uwp))))
  (rbe-marker "RBE:END:UNWIND-PROTECT"))

(defun run-restart-bind-edge-cases ()
  (rbe-marker "RBE:BEGIN:SUITE")
    (handler-case (rbe-test-visibility-cleanup)
      (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "VISIBILITY")))
  (handler-case (rbe-test-shadowing)
    (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "SHADOWING")))
    (handler-case (rbe-test-arity)
      (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "ARITY")))
  (handler-case (rbe-test-interactive)
    (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "INTERACTIVE")))
    (handler-case (rbe-test-anonymous)
      (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "ANONYMOUS")))
    (handler-case (rbe-test-stack-order)
      (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "STACK-ORDER")))
  (handler-case (rbe-test-unwind-protect-cleanup)
    (error (e) (declare (ignore e)) (print "RBE:FAIL") (print "UNWIND-PROTECT")))
  (rbe-marker "RBE:END:SUITE"))

(run-restart-bind-edge-cases)
