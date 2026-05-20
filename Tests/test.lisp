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



