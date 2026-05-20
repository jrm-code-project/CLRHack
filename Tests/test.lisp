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



