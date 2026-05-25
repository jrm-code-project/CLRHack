(in-package "CLRHACK")

(defun hbe-marker (text)
  (print text))

(defun hbe-fail (name)
  (print "HBE:FAIL"))

(defun hbe-check (name condition)
  (if condition
      (print name)
      (hbe-fail name)))

(defun hbe-handler-count ()
  (labels ((count-list (lst n)
             (if (null lst)
                 n
                 (count-list (cdr lst) (+ n 1)))))
    (count-list (%get-active-handlers) 0)))

(defun hbe-test-visibility-lifecycle ()
  (hbe-marker "HBE:BEGIN:VISIBILITY")
  (let ((before (hbe-handler-count)))
    (handler-bind ((my-cond (lambda (c) nil)))
      (hbe-check "VISIBILITY:INSIDE-COUNT"
                 (= (hbe-handler-count) (+ before 1)))
      (let* ((handlers (%get-active-handlers))
             (first-handler (car handlers))
             (ctype (system:call-instance-method "get_ConditionType" first-handler)))
        (hbe-check "VISIBILITY:CONDITION-TYPE"
                   (eq ctype 'my-cond))))
    (hbe-check "VISIBILITY:AFTER-COUNT"
               (= (hbe-handler-count) before)))
  (hbe-marker "HBE:END:VISIBILITY"))

(defun hbe-test-signal-order ()
  (hbe-marker "HBE:BEGIN:SIGNAL-ORDER")
  (let ((events nil))
    (handler-bind ((my-cond (lambda (c)
                              (setq events (cons :outer events)))))
      (handler-bind ((my-cond (lambda (c)
                                (setq events (cons :inner events)))))
        (signal 'my-cond)))
    (hbe-check "SIGNAL-ORDER:INNER-FIRST"
               (eq (car events) :outer))
    (hbe-check "SIGNAL-ORDER:OUTER-SECOND"
               (eq (car (cdr events)) :inner))
    (hbe-check "SIGNAL-ORDER:COUNT"
          (and (not (null events))
            (not (null (cdr events)))
            (null (cdr (cdr events))))))
  (hbe-marker "HBE:END:SIGNAL-ORDER"))

(defun hbe-test-nested-types-isolation ()
  (hbe-marker "HBE:BEGIN:NESTED-TYPES")
  (let ((a-count 0)
        (b-count 0))
    (handler-bind ((cond-a (lambda (c)
                             (setq a-count (+ a-count 1)))))
      (handler-bind ((cond-b (lambda (c)
                               (setq b-count (+ b-count 1)))))
        (signal 'cond-a)
        (signal 'cond-b)))
    (hbe-check "NESTED-TYPES:A-COUNT" (= a-count 1))
    (hbe-check "NESTED-TYPES:B-COUNT" (= b-count 1)))
  (hbe-marker "HBE:END:NESTED-TYPES"))

(defun hbe-test-unwind-protect-cleanup ()
  (hbe-marker "HBE:BEGIN:UNWIND-PROTECT")
  (let ((cleanup-ran nil)
        (before (hbe-handler-count)))
    (unwind-protect
      (handler-bind ((my-cond (lambda (c)
                                  nil)))
          (signal 'my-cond)
          (hbe-check "UNWIND-PROTECT:INSIDE-COUNT"
                     (= (hbe-handler-count) (+ before 1))))
      (setq cleanup-ran t))
    (hbe-check "UNWIND-PROTECT:CLEANUP-RAN" cleanup-ran)
    (hbe-check "UNWIND-PROTECT:AFTER-COUNT"
               (= (hbe-handler-count) before)))
  (hbe-marker "HBE:END:UNWIND-PROTECT"))

(defun hbe-test-lexical-non-local-exit-through-handler-bind ()
  (hbe-marker "HBE:BEGIN:LEXICAL-EXIT")
  (let ((cleanup-ran nil)
        (result nil))
    (setq result
          (block done
            (unwind-protect
                (handler-bind ((my-cond (lambda (c)
                                          (return-from done :escaped))))
                  (signal 'my-cond)
                  :should-not-reach)
              (setq cleanup-ran t)
              (print "LEXICAL-EXIT:CLEANUP"))))
    (hbe-check "LEXICAL-EXIT:RESULT" (eq result :escaped))
    (hbe-check "LEXICAL-EXIT:CLEANUP-RAN" cleanup-ran))
  (hbe-marker "HBE:END:LEXICAL-EXIT"))

(defun hbe-test-handler-bind-error-flow ()
  (hbe-marker "HBE:BEGIN:ERROR-FLOW")
  (let ((hb-called nil)
        (hc-caught nil))
    (handler-bind ((my-error (lambda (c)
                               (setq hb-called t))))
      (handler-case
          (error 'my-error)
        (my-error (c)
          (setq hc-caught t)
          :caught)))
    (hbe-check "ERROR-FLOW:HANDLER-BIND-NOT-CALLED" (null hb-called))
    (hbe-check "ERROR-FLOW:HANDLER-CASE-CAUGHT" hc-caught))
  (hbe-marker "HBE:END:ERROR-FLOW"))

(defun run-handler-bind-edge-cases ()
  (hbe-marker "HBE:BEGIN:SUITE")
  (hbe-test-visibility-lifecycle)
  (hbe-test-signal-order)
  (hbe-test-nested-types-isolation)
  (hbe-test-unwind-protect-cleanup)
  (hbe-test-lexical-non-local-exit-through-handler-bind)
  (hbe-test-handler-bind-error-flow)
  (hbe-marker "HBE:END:SUITE"))

(run-handler-bind-edge-cases)
