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
    (is (= 13 (loop for pos = (search "tick" output) then (search "tick" output :start2 (+ pos 4))
                    while pos
                    count t)))))

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
    (is (not (null (search "non-zero" output))))))

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



