(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
(ql:quickload "alexandria")
(ql:quickload "series")
(ql:quickload "fold")
(ql:quickload "named-let")
(ql:quickload "function")
(ql:quickload "fiveam")

(require :asdf)
(push (truename ".") asdf:*central-registry*)
(asdf:load-system :clrhack)

(defun rebuild-project (project-file)
  (let ((project-file project-file))
    (format t "~%--- Building ~A ---~%" project-file)
    (uiop:run-program (list "dotnet" "build" project-file "-c" "Release" "-t:Rebuild")
                      :output t
                      :error-output t
                      :ignore-error-status nil)))

(let ((tests '(
               ("Tests/test-advanced.lisp" . "AdvancedTest")
               ;; ("test-aux.lisp" . "AuxTest")
               ("Tests/bank-test.lisp" . "BankTest")
               ("Tests/test-block.lisp" . "BlockTest")
               ("Tests/test-car-cdr-null.lisp" . "CarCdrNullTest")
               ("Tests/test-catch.lisp" . "CatchTest")
               ("Tests/test-callable-hardening.lisp" . "CallableHardeningTest")
               ("Tests/test-clr-explicit-forms.lisp" . "ClrExplicitFormsTest")
               ("Tests/test-church.lisp" . "ChurchTest")
               ("Tests/test-closure.lisp" . "ClosureTest")
               ("Tests/test-complex.lisp" . "ComplexScopingTest")
               ;; ("test-dderiv.lisp" . "DderivBenchmark")
               ;; ("test-deriv.lisp" . "DerivBenchmark")
               ("Tests/test-div2.lisp" . "Div2Benchmark")
               ;; ("test-ctak.lisp" . "CtakBenchmark")
               ("Tests/test-fib.lisp" . "FibBenchmark")
               ("test-flet.lisp" . "FletTest")
               ("Tests/test-hello.lisp" . "HelloWorld")
               ("test-interop.lisp" . "InteropTest")
               ;; ("test-javadot.lisp" . "JavadotTest")
               ;; ("test-key.lisp" . "KeyTest")
               ("Tests/test-labels.lisp" . "LabelsTest")
               ("Tests/test-lexical-exits.lisp" . "LexicalExitsTest")
               ("Tests/test-letrec.lisp" . "LetRecTest")
               ;; ("test-ltak.lisp" . "LtakBenchmark")
               ("test-macro.lisp" . "MacroTest")
               ("test-mutability.lisp" . "MutabilityTest")
               ("Tests/test-mv.lisp" . "MultipleValuesTest")
               ("Tests/test-mrv-corruption.lisp" . "ValuesCorruptionTest")
               ("Tests/test-nboyer.lisp" . "NBoyerBenchmark")
               ("Tests/test-restart.lisp" . "RestartTest")
               ("Tests/test-restart-bind-edge-cases.lisp" . "RestartBindEdgeCasesTest")
               ("Tests/test-restarts.lisp" . "RestartsTest")
               ("Tests/test-handler.lisp" . "HandlerTest")
               ("Tests/test-handler-bind-edge-cases.lisp" . "HandlerBindEdgeCasesTest")
               ("Tests/test-handler-case.lisp" . "HandlerCaseTest")
               ("Tests/test-conditions.lisp" . "ConditionsTest")
               ("Tests/test-signal-error-edge-cases.lisp" . "SignalErrorEdgeCasesTest")
               ("Tests/test-debugger.lisp" . "DebuggerTest")
               ("Tests/test-reflection.lisp" . "ReflectionTest")
               ("Tests/puzzle-test.lisp" . "PuzzleBenchmark")
               ("Tests/test-scoping.lisp" . "ScopingTests")
               ;; ("test-stak.lisp" . "StakBenchmark")
               ("Tests/test-tagbody.lisp" . "TagbodyTest")
               ("Tests/test-tak.lisp" . "TakBenchmark")
               ("Tests/test-toplevel.lisp" . "TopLevelTest")
               ("Tests/test-toplevel-args.lisp" . "ToplevelArgs")
               ("Tests/test-triang.lisp" . "TriangBenchmark")
               ("Tests/test-mop-combinations.lisp" . "MopCombinationsTest")
               ("Tests/mop-benchmark.lisp" . "MopBenchmark")
               ("Tests/test-uwp.lisp" . "UwpTest"))))

  (dolist (test tests)
    (let ((file (car test))
          (target (cdr test)))
      (format t "~%--- Compiling ~A to ~A ---~%" file target)
    (clrhack:compile-file file :output-file target)))

    (format t "~%--- Compiling separate module fixture A ---~%")
    (clrhack:compile-module "Tests/test-separate-module-a.lisp" :output-file "SeparateModuleA")

    (format t "~%--- Compiling duplicate provider fixture for module A ---~%")
    (clrhack:compile-module "Tests/test-separate-module-c.lisp" :output-file "SeparateModuleC")

    (format t "~%--- Compiling separate module fixture B with dependency on A ---~%")
    (clrhack:compile-module "Tests/test-separate-module-b.lisp"
            :output-file "SeparateModuleB"
            :dependency-manifests '("SeparateModuleA.clrhm"))

    (format t "~%--- Linking separate module fixture ---~%")
    (clrhack:link-program '("SeparateModuleA.clrhm" "SeparateModuleB.clrhm")
          :output-file "SeparateLinked"
                          :root-manifest "SeparateModuleB.clrhm")

    (format t "~%--- Verifying invalid root manifest is rejected ---~%")
    (handler-case
        (progn
          (clrhack:link-program '("SeparateModuleA.clrhm")
                                :output-file "ShouldNotLink"
                                :root-manifest "SeparateModuleB.clrhm")
          (error "Expected invalid root-manifest link to fail, but it succeeded."))
      (error (condition)
        (unless (search "Root manifest" (princ-to-string condition))
          (error "Expected root-manifest failure, got: ~A" condition))
        (format t "Observed expected linker failure: ~A~%" condition)))

    (format t "~%--- Verifying unresolved imported function is rejected ---~%")
    (handler-case
        (progn
          (clrhack:compile-module "Tests/test-separate-missing-import.lisp"
                                  :output-file "SeparateMissingImport"
                                  :dependency-manifests '("SeparateModuleA.clrhm"))
          (error "Expected unresolved imported function compile to fail, but it succeeded."))
      (error (condition)
        (unless (search "Unresolved imported function" (princ-to-string condition))
          (error "Expected unresolved import failure, got: ~A" condition))
        (format t "Observed expected compile failure: ~A~%" condition)))

    (format t "~%--- Verifying duplicate providers for an imported function are rejected ---~%")
    (handler-case
        (progn
          (clrhack:compile-module "Tests/test-separate-module-b.lisp"
                                  :output-file "SeparateAmbiguousImport"
                                  :dependency-manifests '("SeparateModuleA.clrhm" "SeparateModuleC.clrhm"))
          (error "Expected ambiguous imported function compile to fail, but it succeeded."))
      (error (condition)
        (unless (search "Ambiguous imported function" (princ-to-string condition))
          (error "Expected ambiguous import failure, got: ~A" condition))
        (format t "Observed expected compile failure: ~A~%" condition)))

    (format t "~%--- Verifying multiple import errors are reported together ---~%")
    (handler-case
        (progn
          (clrhack:compile-module "Tests/test-separate-multi-import-errors.lisp"
                                  :output-file "SeparateMultiImportErrors"
                                  :dependency-manifests '("SeparateModuleA.clrhm" "SeparateModuleC.clrhm"))
          (error "Expected multi-import resolution failure, but compile succeeded."))
      (error (condition)
        (let ((message (princ-to-string condition)))
          (unless (search "Import resolution failed" message)
            (error "Expected aggregate import failure header, got: ~A" condition))
          (unless (search "Ambiguous imported function ADD2" message)
            (error "Expected ambiguous import detail in aggregate failure, got: ~A" condition))
          (unless (search "Unresolved imported function DOES-NOT-EXIST" message)
            (error "Expected unresolved import detail in aggregate failure, got: ~A" condition)))
        (format t "Observed expected compile failure: ~A~%" condition)))

    (format t "~%--- Rebuilding standalone projects ---~%")
    (rebuild-project "LispBase/LispBase.csproj")
    (dolist (target (append (mapcar #'cdr tests)
                            '("SeparateModuleA"
                              "SeparateModuleC"
                              "SeparateModuleB"
                              "SeparateLinked")))
      (rebuild-project (format nil "~A.ilproj" target))))

(sb-ext:exit)
