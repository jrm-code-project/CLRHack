(in-package "CLRHACK")

(defun see-marker (text)
  (print text))

(defun see-fail (name)
  (print "SEE:FAIL")
  (print name))

(defun see-check (name condition)
  (if condition
      (print name)
      (see-fail name)))

(defun see-test-signal-no-handler ()
  (see-marker "SEE:BEGIN:SIGNAL-NO-HANDLER")
  (let ((res (signal 'see-unhandled)))
    (see-check "SIGNAL-NO-HANDLER:RETURNS-NIL" (null res)))
  (see-marker "SEE:END:SIGNAL-NO-HANDLER"))

(defun see-test-signal-order-and-resume ()
  (see-marker "SEE:BEGIN:SIGNAL-ORDER")
  (let ((events nil)
        (after nil))
    (handler-bind ((see-cond (lambda (c)
                               (setq events (cons :outer events)))))
      (handler-bind ((see-cond (lambda (c)
                                 (setq events (cons :inner events)))))
        (signal 'see-cond)
        (setq after t)))
    (see-check "SIGNAL-ORDER:INNER-THEN-OUTER"
               (and (eq (car events) :outer)
                    (eq (car (cdr events)) :inner)
                    (null (cdr (cdr events)))))
    (see-check "SIGNAL-ORDER:RESUMES" after))
  (see-marker "SEE:END:SIGNAL-ORDER"))

(defun see-test-signal-lexical-exit-with-unwind-protect ()
  (see-marker "SEE:BEGIN:SIGNAL-LEXICAL-UWP")
  (let ((cleanup-ran nil)
        (result nil))
    (setq result
          (block done
            (unwind-protect
                (handler-bind ((see-signal (lambda (c)
                                             (return-from done :escaped-signal))))
                  (signal 'see-signal)
                  :signal-should-not-reach)
              (setq cleanup-ran t)
              (print "SIGNAL-LEXICAL-UWP:CLEANUP"))))
    (see-check "SIGNAL-LEXICAL-UWP:RESULT" (eq result :escaped-signal))
    (see-check "SIGNAL-LEXICAL-UWP:CLEANUP-RAN" cleanup-ran))
  (see-marker "SEE:END:SIGNAL-LEXICAL-UWP"))

(defun see-test-error-caught-and-no-fallthrough ()
  (see-marker "SEE:BEGIN:ERROR-HANDLER-CASE")
  (let ((res (handler-case
                 (progn
                   (error 'see-error)
                   :error-should-not-reach)
               (see-error (c)
                 :caught-see-error))))
    (see-check "ERROR-HANDLER-CASE:CAUGHT" (eq res :caught-see-error)))
  (see-marker "SEE:END:ERROR-HANDLER-CASE"))

(defun see-test-error-handler-bind-vs-handler-case ()
  (see-marker "SEE:BEGIN:ERROR-HB-HC")
  (let ((hb-called nil)
        (hc-caught nil))
    (handler-bind ((see-error (lambda (c)
                                (setq hb-called t))))
      (handler-case
          (error 'see-error)
        (see-error (c)
          (setq hc-caught t)
          :caught)))
    ;; Current runtime behavior: handler-case catches directly.
    (see-check "ERROR-HB-HC:HANDLER-BIND-NOT-CALLED" (null hb-called))
    (see-check "ERROR-HB-HC:HANDLER-CASE-CAUGHT" hc-caught))
  (see-marker "SEE:END:ERROR-HB-HC"))

(defun see-test-error-dotnet-exception-catch ()
  (see-marker "SEE:BEGIN:ERROR-DOTNET")
  (let ((msg (handler-case
                 (error (dotnet-new "System.Exception" "SEE .NET"))
               ("System.Exception" (c)
                 (dotnet-get c "Message")))))
    (see-check "ERROR-DOTNET:MESSAGE" (eq msg "SEE .NET")))
  (see-marker "SEE:END:ERROR-DOTNET"))

(defun see-test-signal-handler-escalates-to-error ()
  (see-marker "SEE:BEGIN:SIGNAL-ESCALATE")
  (let ((res (handler-case
                 (handler-bind ((see-warn (lambda (c)
                                            (error 'see-escalated-error))))
                   (signal 'see-warn)
                   :signal-should-not-reach)
               (see-escalated-error (c)
                 :caught-escalated))))
    (see-check "SIGNAL-ESCALATE:CAUGHT-ERROR" (eq res :caught-escalated)))
  (see-marker "SEE:END:SIGNAL-ESCALATE"))

(defun see-test-error-lexical-exit-with-unwind-protect ()
  (see-marker "SEE:BEGIN:ERROR-LEXICAL-UWP")
  (let ((cleanup-ran nil)
        (result nil))
    (setq result
          (block done
            (unwind-protect
                (handler-bind ((see-err (lambda (c)
                                          (return-from done :escaped-error))))
                  (error 'see-err)
                  :error-should-not-reach)
              (setq cleanup-ran t)
              (print "ERROR-LEXICAL-UWP:CLEANUP"))))
    (see-check "ERROR-LEXICAL-UWP:RESULT" (eq result :escaped-error))
    (see-check "ERROR-LEXICAL-UWP:CLEANUP-RAN" cleanup-ran))
  (see-marker "SEE:END:ERROR-LEXICAL-UWP"))

(defun run-signal-error-edge-cases ()
  (see-marker "SEE:BEGIN:SUITE")
  (see-test-signal-no-handler)
  (see-test-signal-order-and-resume)
  (see-test-signal-lexical-exit-with-unwind-protect)
  (see-test-error-caught-and-no-fallthrough)
  (see-test-error-handler-bind-vs-handler-case)
  (see-test-error-dotnet-exception-catch)
  (see-test-signal-handler-escalates-to-error)
  (see-test-error-lexical-exit-with-unwind-protect)
  (see-marker "SEE:END:SUITE"))

(run-signal-error-edge-cases)
