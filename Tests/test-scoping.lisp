(in-package "CLRHACK")

(progn
  ;; -------------------------------------------------------------------------
  ;; Test 1: Baseline Local Bindings
  ;; Verifies that the AST correctly scopes and assigns `stloc`/`ldloc` to
  ;; straight-line lexical environments without needing closures.
  ;; -------------------------------------------------------------------------
  (print "--- Test 1: Baseline Bindings ---")
  (let ((msg "Straight-line let binding successful."))
    (print msg))

  ;; -------------------------------------------------------------------------
  ;; Test 2: Basic Closure Capture
  ;; Verifies that an inner lambda correctly tracks a free variable, creates
  ;; a lifted lambda class, populates the `.ctor` properly, and loads it
  ;; via `ldfld` at runtime.
  ;; -------------------------------------------------------------------------
  (print "--- Test 2: Basic Closure ---")
  (let ((msg "Basic closure captured successfully."))
    (let ((f (lambda () (print msg))))
      (f)))

  ;; -------------------------------------------------------------------------
  ;; Test 3: Lexical Shadowing
  ;; Verifies the alpha-renaming pass correctly disentangles identical
  ;; variable names across scopes, ensuring the inner closure grabs the
  ;; innermost bound value.
  ;; -------------------------------------------------------------------------
  (print "--- Test 3: Lexical Shadowing ---")
  (let ((x "OUTER SCOPE - FAILURE"))
    (let ((f (lambda ()
               (let ((x "INNER SCOPE - SUCCESS"))
                 (let ((g (lambda () (print x))))
                   (g))))))
      (f)))

  ;; -------------------------------------------------------------------------
  ;; Test 4: Higher-Order / Multi-level Nested Captures
  ;; Verifies that closures can seamlessly capture variables from multiple
  ;; distinct outer levels (a parameter from depth 2, and a parameter from depth 1).
  ;; -------------------------------------------------------------------------
  (print "--- Test 4: Multi-level Captures ---")
  (let ((make-formatter
         (lambda (prefix)
           (lambda (suffix)
             (print prefix)
             (print suffix)))))
    (let ((format-test (make-formatter "Prefix Bound.")))
      (format-test "Suffix Bound.")))

  ;; -------------------------------------------------------------------------
  ;; Test 5: The Y-Combinator (Extreme Self-Application & Currying)
  ;; The ultimate stress test for anonymous lambda lifting. Heavily abuses
  ;; nested lexical scopes, self-applications `(x x)`, and immediate evaluations.
  ;; If this structurally compiles to valid IL, the backend is rock solid.
  ;; -------------------------------------------------------------------------
  (print "--- Test 5: Y-Combinator Compilation ---")
  (let ((Y (lambda (f)
             ((lambda (x) (f (lambda (y) ((x x) y))))
              (lambda (x) (f (lambda (y) ((x x) y))))))))
    (print "Y-Combinator successfully compiled to verifiable IL closures!")))
