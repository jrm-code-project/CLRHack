(in-package :clrhack)

(def-suite clrhack-suite
  :description "Main test suite for CLRHACK.")

(defun run-test-file (filename)
  "Compiles and runs a Lisp file through CLRHack, returning its output."
  (let ((assembly-name (pathname-name (pathname filename))))
    (compile-file filename)
    (multiple-value-bind (output error-output exit-code)
        (uiop:run-program (list "dotnet" "run" "--project" (format nil "~A.ilproj" assembly-name))
                          :output :string
                          :error-output :string
                          :ignore-error-status t)
      (unless (zerop exit-code)
        (error "Test file ~A failed with exit code ~D~%Error output: ~A" 
               filename exit-code error-output))
      output)))

(defun test-clrhack ()
  "Run the main test suite for the clrhack project."
  (run! 'clrhack-suite))

(in-suite clrhack-suite)

(test basic-sanity
  "A basic sanity check to ensure the test harness is working."
  (is (eq t t)))

(test hello-world
  "Test the compilation and execution of a simple hello world program."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-hello.lisp"))))
    (is (not (null (search "Hello world from CLR-CALL" output))))
    (is (not (null (search "Hello from PRINT" output))))))

(test advanced-test
  "Test a more complex program with closures and mutability."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-advanced.lisp"))))
    (is (not (null (search "Counting down..." output))))
    (is (not (null (search "Mutated in flight!" output))))
    (is (not (null (search "Done!" output))))))

(test church-test
  "Test church numerals and heavily nested closures."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-church.lisp"))))
    (is (not (null (search "Computing 2 + 3 ticks:" output))))
    (is (not (null (search "Computing 2 * 3 ticks:" output))))
    (is (= 13 (let ((count 0))
                (do ((pos (search "tick" output) (search "tick" output :start2 (+ pos 4))))
                    ((null pos) count)
                  (incf count)))))))

(test closure-test
  "Test simple closures and captured variables."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-closure.lisp"))))
    (is (not (null (search "Hello" output))))
    (is (not (null (search "Alice" output))))
    (is (not (null (search "Bonjour" output))))
    (is (not (null (search "Bob" output))))))

(test labels-test
  "Test labels macro."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-labels.lisp"))))
    (is (not (null (search "Testing labels..." output))))
    (is (not (null (search "even? 10 is T (Correct)" output))))
    (is (not (null (search "odd? 11 is T (Correct)" output))))))

(test letrec-test
  "Test letrec and letrec* macros."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-letrec.lisp"))))
    (is (not (null (search "Testing letrec..." output))))
    (is (not (null (search "even? 10 is T (Correct)" output))))
    (is (not (null (search "odd? 11 is T (Correct)" output))))
    (is (not (null (search "Testing letrec*..." output))))
    (is (not (null (search "a:" output))))
    (is (not (null (search "10" output))))
    (is (not (null (search "b:" output))))
    (is (not (null (search "15" output))))
    (is (not (null (search "c():" output))))
    (is (not (null (search "25" output))))))

(test complex-test
  "Test complex closures, state mutation, and shared bindings."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-complex.lisp"))))
    (is (not (null (search "Instance 1 - Call 1:" output))))
    (is (not (null (search "1126" output))))
    (is (not (null (search "Instance 1 - Call 2:" output))))
    (is (not (null (search "1136" output))))
    (is (not (null (search "Instance 2 - Call 1:" output))))
    (is (not (null (search "2132" output))))
    (is (not (null (search "Instance 1 - Call 3:" output))))
    (is (not (null (search "1149" output))))))

(test fib-test
  "Test recursive function calls with Fibonacci calculation."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-fib.lisp"))))
    (is (not (null (search "Fibonacci of 10:" output))))
    (is (not (null (search "55" output))))))

(test tail-test
  "Test tail call optimization with a deep recursive countdown."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/tail-test.lisp"))))
    (is (not (null (search "Starting countdown from 1,000,000..." output))))
    (is (not (null (search "Done" output))))))

(test bank-test
  "Test closures and shared state mutation with a bank account simulation."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/bank-test.lisp"))))
    (is (not (null (search "Initial Reserve:" output))))
    (is (not (null (search "1700" output))))
    (is (not (null (search "Alice deposits 100:" output))))
    (is (not (null (search "600" output))))
    (is (not (null (search "Bob withdraws 50:" output))))
    (is (not (null (search "150" output))))
    (is (not (null (search "Total accounts:" output))))
    (is (not (null (search "2" output))))
    (is (not (null (search "Final Reserve:" output))))
    (is (not (null (search "1750" output))))))

(test block-test
  "Test block, return-from, nested blocks, implicit blocks, and unwind-protect."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-block.lisp"))))
    (is (not (null (search "Testing block basic..." output))))
    (is (not (null (search "Inside block" output))))
    (is (not (null (search "returned value" output))))
    (is (null (search "Should NOT print this" output)))
    
    (is (not (null (search "Testing nested blocks..." output))))
    (is (not (null (search "Outer start" output))))
    (is (not (null (search "Inner start" output))))
    (is (not (null (search "Back from outer block" output))))
    
    (is (not (null (search "Testing block with unwind-protect..." output))))
    (is (not (null (search "Protected code" output))))
    (is (not (null (search "Cleanup code run" output))))
    
    (is (not (null (search "Testing implicit function block..." output))))
    (is (not (null (search "zero" output))))
    (is (not (null (search "non-zero" output))))

    (is (not (null (search "Testing non-local return-from through closure..." output))))
    (is (not (null (search "closure escaped" output))))
    (is (null (search "Should NOT print this closure path" output)))))

(test lexical-exits-test
  "Test lexical non-local return-from via closures, nested closures, unwind-protect, and multiple values."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-lexical-exits.lisp"))))
    (is (not (null (search "Lexical return simple closure..." output))))
    (is (not (null (search "Simple result:" output))))
    (is (not (null (search "escaped-simple" output))))

    (is (not (null (search "Lexical return nested closures..." output))))
    (is (not (null (search "Nested result:" output))))
    (is (not (null (search "escaped-nested" output))))

    (is (not (null (search "Lexical return with unwind-protect..." output))))
    (is (not (null (search "Cleanup from lexical unwind-protect" output))))
    (is (not (null (search "UWP result:" output))))
    (is (not (null (search "escaped-uwp" output))))
    (is (not (null (search "Cleanup flag:" output))))
    (is (not (null (search "T" output))))

    (is (not (null (search "Lexical return with multiple values..." output))))
    (is (not (null (search "MV primary:" output))))
    (is (not (null (search "mv-primary" output))))
    (is (not (null (search "MV second:" output))))
    (is (not (null (search "22" output))))
    (is (not (null (search "MV third:" output))))
    (is (not (null (search "33" output))))

    (is (null (search "Should NOT print simple path" output)))
    (is (null (search "Should NOT print nested inner" output)))
    (is (null (search "Should NOT print nested outer" output)))
    (is (null (search "Should NOT print uwp path" output)))
    (is (null (search "Should NOT print mv path" output)))))

(test callable-hardening-test
  "Test that calling undefined/non-function values raises descriptive errors instead of runtime null/cast failures."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-callable-hardening.lisp"))))
    (is (not (null (search "--- test-undefined-global-function ---" output))))
    (is (not (null (search "Undefined function: EQUAL" output))))
    (is (not (null (search "Result:" output))))
    (is (not (null (search "CAUGHT" output))))

    (is (not (null (search "--- test-non-function-object-call ---" output))))
    (is (not (null (search "Attempted to call non-function object" output))))

    (is (not (null (search "--- test-nested-computed-operator-undefined ---" output))))
    (is (not (null (search "Undefined function: <computed function>" output))))
    (is (null (search "SHOULD-NOT-REACH" output)))))

(test restart-bind-edge-cases-test
  "Test restart-bind edge cases including visibility, shadowing, arity, interactive invocation, anonymous restarts, stack order, and unwind-protect cleanup."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-restart-bind-edge-cases.lisp"))))
    (is (not (null (search "RBE:BEGIN:SUITE" output))))
    (is (not (null (search "RBE:END:SUITE" output))))

    (is (not (null (search "VISIBILITY:INSIDE-COUNT" output))))
    (is (not (null (search "VISIBILITY:FIND-INSIDE" output))))
    (is (not (null (search "VISIBILITY:INVOKE" output))))
    (is (not (null (search "VISIBILITY:AFTER-COUNT" output))))
    (is (not (null (search "VISIBILITY:FIND-AFTER" output))))

    (is (not (null (search "SHADOWING:OUTER-RESTORED" output))))
    (is (not (null (search "SHADOWING:INNER-WINS" output))))

    (is (not (null (search "ARITY:ZERO" output))))
    (is (not (null (search "ARITY:ONE" output))))
    (is (not (null (search "ARITY:TWO" output))))
    (is (not (null (search "ARITY:THREE" output))))

    (is (not (null (search "INTERACTIVE:LIST" output))))
    (is (not (null (search "INTERACTIVE:SCALAR" output))))

    (is (not (null (search "ANONYMOUS:FIND" output))))
    (is (not (null (search "ANONYMOUS:INVOKE-BY-OBJECT" output))))

    (is (not (null (search "STACK-ORDER:INNER-FIRST" output))))
    (is (not (null (search "STACK-ORDER:INNER-SECOND" output))))
    (is (not (null (search "STACK-ORDER:RESTORED" output))))

    (is (not (null (search "UNWIND-PROTECT:INVOKE" output))))
    (is (not (null (search "UNWIND-PROTECT:CLEANUP-RAN" output))))
    (is (not (null (search "UNWIND-PROTECT:COUNT-RESTORED" output))))
    (is (not (null (search "UNWIND-PROTECT:NOT-VISIBLE-AFTER" output))))

    (is (null (search "RBE:FAIL" output)))))

(test handler-bind-edge-cases-test
  "Test handler-bind edge cases including visibility, ordering, unwind-protect cleanup, and lexical non-local exits."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-handler-bind-edge-cases.lisp"))))
    (is (not (null (search "HBE:BEGIN:SUITE" output))))
    (is (not (null (search "HBE:END:SUITE" output))))

    (is (not (null (search "VISIBILITY:INSIDE-COUNT" output))))
    (is (not (null (search "VISIBILITY:CONDITION-TYPE" output))))
    (is (not (null (search "VISIBILITY:AFTER-COUNT" output))))

    (is (not (null (search "SIGNAL-ORDER:INNER-FIRST" output))))
    (is (not (null (search "SIGNAL-ORDER:OUTER-SECOND" output))))
    (is (not (null (search "SIGNAL-ORDER:COUNT" output))))

    (is (not (null (search "NESTED-TYPES:A-COUNT" output))))
    (is (not (null (search "NESTED-TYPES:B-COUNT" output))))

    (is (not (null (search "UNWIND-PROTECT:INSIDE-COUNT" output))))
    (is (not (null (search "UNWIND-PROTECT:CLEANUP-RAN" output))))
    (is (not (null (search "UNWIND-PROTECT:AFTER-COUNT" output))))

    (is (not (null (search "LEXICAL-EXIT:CLEANUP" output))))
    (is (not (null (search "LEXICAL-EXIT:RESULT" output))))
    (is (not (null (search "LEXICAL-EXIT:CLEANUP-RAN" output))))

    (is (not (null (search "ERROR-FLOW:HANDLER-BIND-NOT-CALLED" output))))
    (is (not (null (search "ERROR-FLOW:HANDLER-CASE-CAUGHT" output))))

    (is (null (search "HBE:FAIL" output)))
    (is (null (search ":should-not-reach" output)))))

(test signal-error-edge-cases-test
  "Test signal/error edge cases including handler order, escalation, unwind-protect, and lexical non-local exits."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-signal-error-edge-cases.lisp"))))
    (is (not (null (search "SEE:BEGIN:SUITE" output))))
    (is (not (null (search "SEE:END:SUITE" output))))

    (is (not (null (search "SIGNAL-NO-HANDLER:RETURNS-NIL" output))))

    (is (not (null (search "SIGNAL-ORDER:INNER-THEN-OUTER" output))))
    (is (not (null (search "SIGNAL-ORDER:RESUMES" output))))

    (is (not (null (search "SIGNAL-LEXICAL-UWP:CLEANUP" output))))
    (is (not (null (search "SIGNAL-LEXICAL-UWP:RESULT" output))))
    (is (not (null (search "SIGNAL-LEXICAL-UWP:CLEANUP-RAN" output))))

    (is (not (null (search "ERROR-HANDLER-CASE:CAUGHT" output))))

    (is (not (null (search "ERROR-HB-HC:HANDLER-BIND-NOT-CALLED" output))))
    (is (not (null (search "ERROR-HB-HC:HANDLER-CASE-CAUGHT" output))))

    (is (not (null (search "ERROR-DOTNET:MESSAGE" output))))

    (is (not (null (search "SIGNAL-ESCALATE:CAUGHT-ERROR" output))))

    (is (not (null (search "ERROR-LEXICAL-UWP:CLEANUP" output))))
    (is (not (null (search "ERROR-LEXICAL-UWP:RESULT" output))))
    (is (not (null (search "ERROR-LEXICAL-UWP:CLEANUP-RAN" output))))

    (is (null (search "SEE:FAIL" output)))
    (is (null (search ":signal-should-not-reach" output)))
    (is (null (search ":error-should-not-reach" output)))))

(test nboyer-test
  "Test the classic Gabriel nboyer theorem prover benchmark."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-nboyer.lisp"))))
    (is (not (null (search "Lemmas loaded." output))))
    (is (not (null (search "Rewriting term..." output))))
    (is (not (null (search "Tautology check..." output))))
    (is (not (null (search "SUCCESS: Term is a tautology!" output))))))

(test puzzle-test
  "Test Gabriel puzzle benchmark."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/puzzle-test.lisp"))))
    (is (not (null (search "Kount:" output))))
    (is (not (null (search "2004" output))))))

(test div2-test
  "Test Gabriel div2 benchmark."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-div2.lisp"))))
    (is (not (null (search "Testing iterative-div2..." output))))
    (is (not (null (search "Testing recursive-div2..." output))))
    (is (not (null (search "Length of div2 result should be 100:" output))))
    (is (not (null (search "100" output))))
    (is (not (null (search "Done" output))))))

(test triang-test
  "Test Gabriel triang benchmark."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-triang.lisp"))))
    (is (not (null (search "Running triang benchmark..." output))))
    (is (not (null (search "Result:" output))))
    (is (not (null (search "22" output))))
    (is (not (null (search "32" output))))))

(test deriv-test
  "Test the Gabriel benchmark for symbolic differentiation."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-deriv.lisp"))))
    (is (not (null (search "Differentiating:" output))))
    (is (not (null (search "Running benchmark 100 times..." output))))
    (is (not (null (search "Done" output))))))

(test uwp-test
  "Test unwind-protect execution flow and value return."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-uwp.lisp"))))
    (is (not (null (search "Testing unwind-protect basic..." output))))
    (is (not (null (search "Inside protected" output))))
    (is (not (null (search "Inside cleanup" output))))
    (is (not (null (search "Result of uwp (should be result):" output))))
    (is (not (null (search "result" output))))
    (is (not (null (search "Value of x (should be cleaned):" output))))
    (is (not (null (search "cleaned" output))))
    (is (not (null (search "Testing unwind-protect with GO..." output))))
    (is (not (null (search "About to go" output))))
    (is (not (null (search "Running cleanup from go" output))))
    (is (not (null (search "Reached target" output))))
    (is (not (null (search "SUCCESS: Cleanup run!" output))))))

(test catch-test
  "Test dynamic catch/throw non-local exits."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-catch.lisp"))))
    (is (not (null (search "Testing catch basic..." output))))
    (is (not (null (search "Inside catch" output))))
    (is (not (null (search "Result (should be thrown value):" output))))
    (is (not (null (search "thrown value" output))))
    (is (null (search "Should NOT print this" output)))
    
    (is (not (null (search "Testing nested catch..." output))))
    (is (not (null (search "Outer start" output))))
    (is (not (null (search "Inner start" output))))
    (is (not (null (search "Back from outer catch" output))))
    
    (is (not (null (search "Testing catch mismatch..." output))))
    (is (not (null (search "Throwing to bar from inner foo" output))))
    
    (is (not (null (search "Testing truly non-local throw..." output))))
    (is (not (null (search "Inside helper, about to throw..." output))))
    (is (not (null (search "Result of non-local throw:" output))))
    (is (not (null (search "final result" output))))))

(test tak-test
  "Test the Takeuchi function benchmark."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-tak.lisp"))))
    (is (not (null (search "7" output))))))

(test tagbody-test
  "Test tagbody loop semantics and nested scope go branching."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-tagbody.lisp"))))
    (is (not (null (search "Testing tagbody loop..." output))))
    (is (not (null (search "Loop finished." output))))
    (is (not (null (search "Final i (should be 10):" output))))
    (is (not (null (search "10" output))))
    
    (is (not (null (search "Testing nested tagbody..." output))))
    (is (not (null (search "Outer start" output))))
    (is (not (null (search "Inner start" output))))
    (is (null (search "Should NOT print this (inner)" output)))
    (is (not (null (search "Inner end" output))))
    (is (not (null (search "Back in outer" output))))
    (is (null (search "Should NOT print this (outer)" output)))
    (is (not (null (search "Outer end" output))))))

(test toplevel-test
  "Test top-level form evaluation and global function definitions."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-toplevel.lisp"))))
    (is (not (null (search "Hello from:" output))))
    (is (not (null (search "TopLevelTest" output))))
    (is (not (null (search "Multiplying by captured factor (simulated)..." output))))
    (is (not (null (search "10" output))))
    (is (not (null (search "5" output))))))

(test scoping-test
  "Test lexical scoping, shadowing, and complex closure captures including Y-Combinator."
  (let ((output (run-test-file (asdf:system-relative-pathname "clrhack" "Tests/test-scoping.lisp"))))
    (is (not (null (search "--- Test 1: Baseline Bindings ---" output))))
    (is (not (null (search "Straight-line let binding successful." output))))
    (is (not (null (search "--- Test 2: Basic Closure ---" output))))
    (is (not (null (search "Basic closure captured successfully." output))))
    (is (not (null (search "--- Test 3: Lexical Shadowing ---" output))))
    (is (not (null (search "INNER SCOPE - SUCCESS" output))))
    (is (null (search "OUTER SCOPE - FAILURE" output)))
    (is (not (null (search "--- Test 4: Multi-level Captures ---" output))))
    (is (not (null (search "Prefix Bound." output))))
    (is (not (null (search "Suffix Bound." output))))
    (is (not (null (search "--- Test 5: Y-Combinator Compilation ---" output))))
    (is (not (null (search "Y-Combinator successfully compiled to verifiable IL closures!" output))))))



