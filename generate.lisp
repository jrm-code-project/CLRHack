#+sbcl (declaim (sb-ext:muffle-conditions style-warning))
;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; ===========================================================================
;;; Step 2: Stitch together the basic blocks with conditional and control flow
;;; instructions and labels.
;;; ===========================================================================

;;; Step 2 Primitive Handlers

(defun standard-step2-handler (node tail-p)
  (let* ((operands (ast-application-operands node))
         (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) operands)))
         (bb (ast-basic-block node)))
    (when (and tail-p (not *in-try-block*) bb)
      (let ((last-inst (car (last bb))))
        (when (and (typep last-inst 'cil-call-instruction)
                   (member (get-opcode last-inst) '("call" "callvirt") :test #'string-equal))
          (setf (get-tail-p last-inst) t))))
    (let ((code (append operands-code bb)))
      (if (and tail-p (not *in-try-block*)) (append code (list (il:ret))) code))))

(register-primitive-step2 
 '("%WRITE-LINE" "%WRITE-OBJECT" "%WRITE-INT" "PRINT" "%SUB" "-" "%MUL" "*" "%DIV" "/" "%ADD" "+" "=" "1+" "1-"
   "%LESSP" "<" "%NOT" "NOT" "%CONS" "CONS" "LIST" "%CAR" "CAR" "%CDR" "CDR" "%EQ" "EQ" "%NULL" "NULL"
   "%CONSP" "CONSP" "%MAKE-CELL" "%CELL-VALUE" "%SET-CELL-VALUE!" "%GET-ACTIVE-RESTARTS" "%GET-ACTIVE-HANDLERS"
   "FIND-RESTART" "INVOKE-RESTART" "INVOKE-RESTART-INTERACTIVELY" "APPLY" "SIGNAL" "ERROR")
 #'standard-step2-handler)

(register-primitive-step2 "%INTERN"
  (lambda (node tail-p)
    (declare (ignore node))
    (let ((code (ast-basic-block node)))
      (if tail-p (append code (list (il:ret))) code))))

;;; Step 2 Methods

(defmethod generate-step2 ((node ast-literal) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-variable) &optional tail-p)
  (let* ((alpha (ast-variable-alpha-name node))
         (alpha-str (string alpha))
         (block
          (cond
            ((and *current-lambda-class* (member alpha *current-lambda-free-vars*))
             (list (il:ldarg.0)
                   (il:ldfld (format nil "object ~A::'~A'" *current-lambda-class* (sanitize-identifier alpha-str)))))
            (t (ast-basic-block node)))))
    (if tail-p (append block (list (il:ret))) block)))

(defmethod generate-step2 ((node ast-if) &optional tail-p)
  (let* ((test-code (generate-step2 (ast-if-test node) nil))
         (then-code (generate-step2 (ast-if-consequent node) tail-p))
         (else-code (generate-step2 (ast-if-alternate node) tail-p))
         (else-label (sanitize-identifier (string (gensym "ELSE")))))
    (if tail-p
        (append test-code
                (list (il:ldnull)
                      (il:ceq)
                      (il:brtrue else-label))
                then-code
                (list (il:nop :label else-label))
                else-code)
        (let ((end-label (sanitize-identifier (string (gensym "END")))))
          (append test-code
                  (list (il:ldnull)
                        (il:ceq)
                        (il:brtrue else-label))
                  then-code
                  (list (il:br end-label)
                        (il:nop :label else-label))
                  else-code
                  (list (il:nop :label end-label)))))))

(defmethod generate-step2 ((node ast-progn) &optional tail-p)
  (let ((forms (ast-progn-forms node)))
    (if (null forms)
        (if tail-p (list (il:ldnull) (il:ret)) (list (il:ldnull)))
        (let ((result nil))
          (loop for form in forms
                for i from 1
                for is-last = (= i (length forms))
                for code = (generate-step2 form (if is-last tail-p nil))
                do (setf result (append result code))
                if (or (typep form 'ast-throw) (typep form 'ast-return-from) (typep form 'ast-go))
                  do (return result)
                else if (and (not is-last) code)
                  do (setf result (append result (list (il:pop)))))
          result))))

(defmethod generate-step2 ((node ast-setq) &optional tail-p)
  (let* ((var (ast-setq-name node))
         (alpha (ast-variable-alpha-name var))
         (alpha-str (string alpha))
         (store-code
          (cond
            ((and *current-lambda-class* (member alpha *current-lambda-free-vars*))
             (let ((temp (register-local (gensym "TEMP"))))
               (list (il:stloc temp)
                     (il:ldarg.0)
                     (il:ldloc temp)
                     (il:stfld (format nil "object ~A::'~A'" *current-lambda-class* (sanitize-identifier alpha-str)))
                     (il:ldloc temp))))
            (t
             (cons (il:dup) (ast-basic-block node))))))
    (let ((code (append (generate-step2 (ast-setq-value node) nil)
                        store-code)))
      (if tail-p (append code (list (il:ret))) code))))

(defmethod generate-step2 ((node ast-let) &optional tail-p)
  (let ((bindings-code (reduce #'append
                               (mapcar (lambda (b)
                                         (append (generate-step2 (cadr b) nil)
                                                 (list (il:stloc (sanitize-identifier (string (car b)))))))      
                                       (ast-let-bindings node))))
        (forms (ast-let-body node)))
    (let ((body-code
           (if (null forms)
               (if tail-p (list (il:ldnull) (il:ret)) (list (il:ldnull)))
               (loop for form in forms
                     for i from 1
                     for is-last = (= i (length forms))
                     append (generate-step2 form (if is-last tail-p nil))
                     when (not is-last)
                       append (list (il:pop))))))
      (append bindings-code body-code))))

(defun generate-keyword-prologue (key-params rest-param allow-other-keys current-params is-closure)
  (let ((prologue nil)
        (loop-label (sanitize-identifier (string (gensym "KEY_LOOP"))))
        (done-label (sanitize-identifier (string (gensym "KEY_DONE"))))
        (rest-idx (position rest-param current-params :test #'eq)))
    ;; 1. Initialize keyword variables and supplied-p variables
    (dolist (key key-params)
      (destructuring-bind (kw alpha init-ast sup-alpha) key
        (setf prologue (append prologue (generate-step2 init-ast nil)))
        (setf prologue (append prologue (list (il:stloc (sanitize-identifier (string alpha))))))
        (when sup-alpha
          (setf prologue (append prologue (list (il:ldnull))))
          (setf prologue (append prologue (list (il:stloc (sanitize-identifier (string sup-alpha)))))))))

    ;; 2. Start loop over rest-param
    (let ((rest-local (register-local (gensym "REST_TEMP")))
          (key-local (register-local (gensym "KEY_TEMP")))
          (val-local (register-local (gensym "VAL_TEMP"))))
      (setf prologue (append prologue
        (list (il:ldarg (if is-closure (1+ rest-idx) rest-idx))
              (il:stloc rest-local)
              (il:nop :label loop-label)
              (il:ldloc rest-local)
              (il:ldnull)
              (il:ceq)
              (il:brtrue done-label))))

      ;; Inside loop: get key and value from ListCell
      (setf prologue (append prologue
        (list (il:ldloc rest-local)
              (il:castclass "[LispBase]Lisp.List/ListCell")
              (il:ldfld "object [LispBase]Lisp.List/ListCell::first") ;; the key
              (il:stloc key-local)
              (il:ldloc rest-local)
              (il:castclass "[LispBase]Lisp.List/ListCell")
              (il:ldfld "object [LispBase]Lisp.List/ListCell::rest")
              (il:castclass "[LispBase]Lisp.List/ListCell")
              (il:ldfld "object [LispBase]Lisp.List/ListCell::first") ;; the value
              (il:stloc val-local)
              ;; Advance rest-param: rest = rest.rest.rest
              (il:ldloc rest-local)
              (il:castclass "[LispBase]Lisp.List/ListCell")
              (il:ldfld "object [LispBase]Lisp.List/ListCell::rest")
              (il:castclass "[LispBase]Lisp.List/ListCell")
              (il:ldfld "object [LispBase]Lisp.List/ListCell::rest")
              (il:stloc rest-local))))

      ;; Match the key against each defined keyword
      (dolist (key key-params)
        (let ((next-kw (sanitize-identifier (string (gensym "NEXT_KW")))))
          (destructuring-bind (kw alpha init-ast sup-alpha) key
            (declare (ignore init-ast))
            (setf prologue (append prologue (list (il:ldloc key-local))))
            (setf prologue (append prologue (load-symbol-il kw)))
            (setf prologue (append prologue
              (list (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
                    (il:brfalse next-kw)
                    ;; MATCHED: store value
                    (il:ldloc val-local)
                    (il:stloc (sanitize-identifier (string alpha))))))
            (when sup-alpha
              (setf prologue (append prologue (load-symbol-il "T")))
              (setf prologue (append prologue (list (il:stloc (sanitize-identifier (string sup-alpha)))))))
            (setf prologue (append prologue
              (list (il:br loop-label)
                    (il:nop :label next-kw)))))))

      ;; Handle :allow-other-keys or end of loop
      (let ((allow-ok (sanitize-identifier (string (gensym "ALLOW_OK")))))
        (setf prologue (append prologue (list (il:ldloc key-local))))
        (setf prologue (append prologue (load-symbol-il :allow-other-keys)))
        (setf prologue (append prologue
          (list (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
                (il:brfalse allow-ok)
                ;; MATCHED :allow-other-keys.
                (il:br loop-label)
                (il:nop :label allow-ok)))))

      ;; If not matched and not &allow-other-keys, we should ideally signal an error.
      ;; For now, just continue.
      (setf prologue (append prologue
        (list (il:br loop-label)
              (il:nop :label done-label)))))
    prologue))

(defmethod generate-step2 ((node ast-lambda) &optional tail-p)
  (declare (ignore tail-p))
  (let* ((req-params (ast-lambda-params node))
         (optionals (ast-lambda-optional-params node))
         (rest-param (ast-lambda-rest-param node))
         (aux-params (ast-lambda-aux-params node))
         (opt-names (mapcar #'car optionals))
         (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
         (body-params (append req-params opt-names opt-supplied-names (when rest-param (list rest-param))))
         (*current-lambda-class* (sanitize-identifier (string (ast-lambda-lifted-name node))))
         (*current-lambda-free-vars* (ast-lambda-free-vars node))
         (*current-lambda-params* body-params)
         (forms (ast-lambda-body node))
         (key-params (ast-lambda-key-params node))
         (allow-other-keys (ast-lambda-allow-other-keys node))
         (prologue nil))

    ;; A. Handle Optionals & Supplied-P
    (loop for (name init-ast sup-name) in optionals
          for opt-idx = (position name *current-lambda-params* :test #'eq)
          do (let ((supplied-label (sanitize-identifier (string (gensym "SUP"))))
                   (done-label (sanitize-identifier (string (gensym "DONE"))))
                   (arg-idx (if *current-lambda-class* (1+ opt-idx) opt-idx)))
               (setf prologue (append prologue
                 (list (il:ldarg arg-idx)
                       (il:ldsfld "object [LispBase]Lisp.Undefined::Value")
                       (il:bne.un supplied-label))
                 ;; NOT SUPPLIED: Eval init-form and starg
                 (generate-step2 init-ast nil)
                 (list (il:starg arg-idx))))
               ;; Set sup-p to null
               (when sup-name
                 (let ((sup-idx (position sup-name *current-lambda-params* :test #'eq)))
                   (setf prologue (append prologue (list (il:ldnull))
                                          (list (il:starg (if *current-lambda-class* (1+ sup-idx) sup-idx)))))))
               (setf prologue (append prologue
                 (list (il:br done-label)
                       (il:nop :label supplied-label))))
               ;; SUPPLIED: Set sup-p to T
               (when sup-name
                 (let ((sup-idx (position sup-name *current-lambda-params* :test #'eq)))
                   (setf prologue (append prologue (load-symbol-il "T")
                                          (list (il:starg (if *current-lambda-class* (1+ sup-idx) sup-idx)))))))
               (setf prologue (append prologue (list (il:nop :label done-label))))))

    ;; B. Handle &aux (treated like a sequential let*)
    (loop for (name init-ast) in aux-params
          do (setf prologue (append prologue 
                                    (generate-step2 init-ast nil)
                                    (list (il:stloc (sanitize-identifier (string name)))))))

    ;; D. Handle Keywords
    (when key-params
      (setf prologue (append prologue (generate-keyword-prologue key-params rest-param allow-other-keys *current-lambda-params* t))))

    ;; C. Generate Body
    (let ((body-code (if (and (null forms) (null prologue))
                        (list (il:ldnull) (il:ret))
                        (let ((res prologue))
                          (loop for form in forms
                                for i from 1
                                for is-last = (= i (length forms))
                                do (setf res (append res (generate-step2 form is-last)))
                                when (not is-last)
                                  do (setf res (append res (list (il:pop)))))
                          (append res (list (il:ldnull) (il:ret)))))))
      (setf (ast-basic-block node) body-code)
      body-code)))

(defmethod generate-step2 ((node ast-class) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-method) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-clr-call) &optional tail-p)
  (let* ((operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-clr-call-arguments node))))
         (code (append operands-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-clr-call-virt) &optional tail-p)
  (let* ((instance-code (generate-step2 (ast-clr-call-virt-instance node) nil))
         (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-clr-call-virt-arguments node))))
         (code (append instance-code operands-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-clr-new) &optional tail-p)
  (let* ((operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-clr-new-arguments node))))
         (code (append operands-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-static-call) &optional tail-p)
  (let* ((operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-dotnet-static-call-arguments node))))
         (code (append operands-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-instance-call) &optional tail-p)
  (let* ((instance-code (generate-step2 (ast-dotnet-instance-call-instance node) nil))
         (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-dotnet-instance-call-arguments node))))
         (code (append instance-code operands-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-property) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-instance-property) &optional tail-p)
  (let* ((instance-code (generate-step2 (ast-dotnet-instance-property-instance node) nil))
         (code (append instance-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-clr-field) &optional tail-p)
  (let* ((instance-code (when (ast-clr-field-instance node) (generate-step2 (ast-clr-field-instance node) nil)))
         (code (append instance-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-field) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-dotnet-instance-field) &optional tail-p)
  (let* ((instance-code (generate-step2 (ast-dotnet-instance-field-instance node) nil))
         (code (append instance-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))


(defmethod generate-step2 ((node ast-tagbody) &optional tail-p)
  (let ((body-code (loop for form in (ast-tagbody-statements node)
                         append (if (typep form 'ast-label)
                                    (generate-step2 form)
                                    (append (generate-step2 form nil) (list (il:pop)))))))
    (let ((code (append body-code (list (il:ldnull)))))
      (if tail-p (append code (list (il:ret))) code))))

(defmethod generate-step2 ((node ast-go) &optional tail-p)
  (declare (ignore tail-p))
  (ast-basic-block node))

(defmethod generate-step2 ((node ast-label) &optional tail-p)
  (declare (ignore tail-p))
  (ast-basic-block node))

(defmethod generate-step2 ((node ast-unwind-protect) &optional tail-p)
  (let* ((done-label (sanitize-identifier (string (gensym "DONE"))))
         (result-temp (sanitize-identifier (ast-unwind-protect-result-temp node)))
         (count-temp (sanitize-identifier (ast-unwind-protect-count-temp node)))
         (extra-temps (mapcar (lambda (x) (sanitize-identifier (string x))) (ast-unwind-protect-extra-temps node)))
         (protected-code (append (let ((*in-try-block* t)) (generate-step2 (ast-unwind-protect-protected-form node) nil))
                                 (list (il:stloc result-temp)
                                       (il:leave done-label))))         (cleanup-code (append 
                        ;; Save side-channel at start of finally
                        (list (il:ldsfld "int32 [LispBase]Lisp.Values::ReturnCount")
                              (il:stloc count-temp))
                        (loop for i from 1 below 64
                              for temp in extra-temps
                              append (list (il:ldsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))
                                           (il:stloc temp)))
                        ;; Cleanup forms
                        (loop for f in (ast-unwind-protect-cleanup-forms node)
                              append (append (generate-step2 f nil) (list (il:pop))))
                        ;; Restore side-channel at end of finally
                        (list (il:ldloc count-temp)
                              (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount"))
                        (loop for i from 1 below 64
                              for temp in extra-temps
                              append (list (il:ldloc temp)
                                           (il:stsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))))
                        (list (il:endfinally))))
         (code (list (il:try protected-code)
                     (il:finally cleanup-code)
                     (il:ldloc result-temp :label done-label))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-block) &optional tail-p)
  (let* ((forms (ast-block-body node))
         (result-temp (ast-block-result-temp node))
         (needs-temp (block-needs-result-temp-p node))
         (temp (when needs-temp (register-local result-temp)))
         (body-code
          (if (null forms)
              (if needs-temp (list (il:ldnull) (il:stloc temp)) (list (il:ldnull)))
              (loop for form in forms
                    for i from 1
                    for is-last = (= i (length forms))
                    append (generate-step2 form (if (and is-last (not needs-temp)) tail-p nil))
                    if (and is-last needs-temp)
                      append (list (il:stloc temp))
                    else if (and (not is-last) (not (typep form 'ast-return-from)))
                      append (list (il:pop))))))
    (let ((code (append body-code
                        (list (il:nop :label (sanitize-identifier (ast-block-end-label node))))
                        (when needs-temp (list (il:ldloc temp))))))
      (if (and tail-p (or needs-temp (null forms)))
          (append code (list (il:ret)))
          code))))

(defmethod generate-step2 ((node ast-return-from) &optional tail-p)
  (declare (ignore tail-p))
  (let ((result-temp (ast-return-from-result-temp node)))
    (append (generate-step2 (ast-return-from-value node) nil)
            (list (il:stloc (sanitize-identifier result-temp))
                  (il:leave (sanitize-identifier (ast-return-from-target-label node)))))))

(defmethod generate-step2 ((node ast-catch) &optional tail-p)
  (let* ((done-label (sanitize-identifier (string (gensym "CATCH_DONE"))))
         (rethrow-label (sanitize-identifier (string (gensym "CATCH_RETHROW"))))
         (tag-temp (ast-catch-tag-temp node))
         (result-temp (ast-catch-result-temp node))
         (tag-code (append (generate-step2 (ast-catch-tag node) nil)
                           (list (il:stloc tag-temp))))
         (try-code (append (if (null (ast-catch-body node))
                               (list (il:ldnull))
                               (let ((*in-try-block* t))
                                 (loop for f in (ast-catch-body node)
                                       for i from 1
                                       for is-last = (= i (length (ast-catch-body node)))
                                       append (generate-step2 f nil)
                                       when (not is-last)
                                         append (list (il:pop)))))
                           (list (il:stloc result-temp)
                                 (il:leave done-label))))
         (catch-code (list (il:dup) ;; exception object
                           (il:callvirt :method "get_Tag" :class "[LispBase]Lisp.CatchThrowException" :return "object" :args nil)
                           (il:ldloc tag-temp)
                           (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
                           (il:brfalse rethrow-label)
                           (il:dup)
                           (il:callvirt :method "get_CapturedValues" :class "[LispBase]Lisp.CatchThrowException" :return "object[]" :args nil)
                           (il:call :method "RestoreValues" :class "[LispBase]Lisp.Values" :return "void" :args '("object[]"))
                           (il:callvirt :method "get_Value" :class "[LispBase]Lisp.CatchThrowException" :return "object" :args nil)
                           (il:stloc result-temp)
                           (il:leave done-label)
                           (il:pop :label rethrow-label)
                           (il:rethrow)))
         (code (append tag-code
                       (list (il:try try-code)
                             (il:catch "[LispBase]Lisp.CatchThrowException" catch-code)
                             (il:ldloc result-temp :label done-label)))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-throw) &optional tail-p)
  (declare (ignore tail-p))
  (append (generate-step2 (ast-throw-tag node) nil)
          (generate-step2 (ast-throw-value node) nil)
          (list (il:call :method "CaptureValues" :class "[LispBase]Lisp.Values" :return "object[]" :args nil)
                (il:newobj :method ".ctor" :class "[LispBase]Lisp.CatchThrowException" :return "instance void" :args '("object" "object" "object[]"))
                (il:throw))))

(defmethod generate-step2 ((node ast-values) &optional tail-p)
  (let* ((values (ast-values-values node))
         (n (length values))
         (code nil))
    (cond
      ((= n 0)
       (setf code (list (il:ldc.i4.0)
                        (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount")
                        (il:ldnull))))
      ((= n 1)
       (setf code (generate-step2 (first values) nil)))
      (t
       ;; Put primary value on stack, store others in Value1, Value2...
       (setf code (generate-step2 (first values) nil))
       (loop for i from 1 below (min n 64)
             for v in (rest values)
             do (setf code (append code (generate-step2 v nil)))
                (setf code (append code (list (il:stsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))))))
       (setf code (append code (list (il:ldc.i4 n)
                                     (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount"))))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-multiple-value-bind) &optional tail-p)
  (let* ((vars (ast-multiple-value-bind-vars node))
         (n-vars (length vars))
         (values-form (ast-multiple-value-bind-values-form node))
         (body (ast-multiple-value-bind-body node))
         (code nil))
    ;; 1. Preset ReturnCount = 1
    (setf code (list (il:ldc.i4.1)
                     (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount")))
    ;; 2. Evaluate producer
    (setf code (append code (generate-step2 values-form nil)))
    ;; 3. Store primary value
    (setf code (append code (list (il:stloc (sanitize-identifier (string (first vars)))))))
    ;; 4. Extract extra values
    (loop for i from 1 below n-vars
          for var in (rest vars)
          do (let ((skip-label (sanitize-identifier (string (gensym "SKIP_VAL"))))
                   (done-label (sanitize-identifier (string (gensym "DONE_VAL")))))
               (setf code (append code
                 (list (il:ldsfld "int32 [LispBase]Lisp.Values::ReturnCount")
                       (il:ldc.i4 i)
                       (il:ble skip-label)
                       (il:ldsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))
                       (il:stloc (sanitize-identifier (string var)))
                       (il:br done-label)
                       (il:nop :label skip-label)
                       (il:ldnull)
                       (il:stloc (sanitize-identifier (string var)))
                       (il:nop :label done-label))))))
    ;; 5. Evaluate body
    (let ((body-code
           (if (null body)
               (if tail-p (list (il:ldnull) (il:ret)) (list (il:ldnull)))
               (loop for form in body
                     for i from 1
                     for is-last = (= i (length body))
                     append (generate-step2 form (if is-last tail-p nil))
                     when (not is-last)
                       append (list (il:pop))))))
      (append code body-code))))

(defmethod generate-step2 ((node ast-multiple-value-prog1) &optional tail-p)
  (let* ((first-form (ast-multiple-value-prog1-first-form node))
         (other-forms (ast-multiple-value-prog1-other-forms node))
         (result-temp (sanitize-identifier (ast-multiple-value-prog1-result-temp node)))
         (count-temp (sanitize-identifier (ast-multiple-value-prog1-count-temp node)))
         (extra-temps (mapcar (lambda (x) (sanitize-identifier (string x))) (ast-multiple-value-prog1-extra-temps node)))
         (code nil))
    ;; 1. Preset ReturnCount = 1
    (setf code (list (il:ldc.i4.1)
                     (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount")))
    ;; 2. Evaluate first form
    (setf code (append code (generate-step2 first-form nil)))
    ;; 3. Save primary value and ReturnCount
    (setf code (append code (list (il:stloc result-temp)
                                  (il:ldsfld "int32 [LispBase]Lisp.Values::ReturnCount")
                                  (il:stloc count-temp))))
    ;; 4. Save extra values
    (loop for i from 1 below 64
          for temp in extra-temps
          do (setf code (append code (list (il:ldsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))
                                           (il:stloc temp)))))
    ;; 5. Evaluate other forms (ignore their return values)
    (dolist (form other-forms)
      (setf code (append code (generate-step2 form nil) (list (il:pop)))))
    ;; 6. Restore ReturnCount and extra values
    (setf code (append code (list (il:ldloc count-temp)
                                  (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount"))))
    (loop for i from 1 below 64
          for temp in extra-temps
          do (setf code (append code (list (il:ldloc temp)
                                           (il:stsfld (format nil "object [LispBase]Lisp.Values::Value~D" i))))))
    ;; 7. Put saved result back on stack
    (setf code (append code (list (il:ldloc result-temp))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-multiple-value-call) &optional tail-p)
  (let* ((fn-form (ast-multiple-value-call-function-form node))
         (arg-forms (ast-multiple-value-call-arguments-forms node))
         (fn-temp (sanitize-identifier (ast-multiple-value-call-fn-temp node)))
         (list-temp (sanitize-identifier (ast-multiple-value-call-list-temp node)))
         (code nil))
    ;; 1. Evaluate function and store in temp
    (setf code (append (generate-step2 fn-form nil)
                       (list (il:stloc fn-temp))))
    ;; 2. Create the argument list (returns object)
    (setf code (append code
                       (list (il:call :method "CreateGatheringList" :class "[LispBase]Lisp.Values" :return "object" :args nil)
                             (il:stloc list-temp))))
    ;; 3. For each form, accumulate its values
    (dolist (form arg-forms)
      (setf code (append code
                         (list (il:ldloc list-temp)
                               (il:ldc.i4.1)
                               (il:stsfld "int32 [LispBase]Lisp.Values::ReturnCount"))
                         (generate-step2 form nil)
                         (list (il:call :method "Accumulate" :class "[LispBase]Lisp.Values" :return "void" :args '("object" "object"))))))
    
    ;; 4. Call InvokeWithList(fn, list)
    (setf code (append code
                       (list (il:ldloc fn-temp)
                             (il:ldloc list-temp)
                             (il:call :method "InvokeWithList" :class "[LispBase]Lisp.Values" :return "object" :args '("object" "object")))))
    
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-restart-bind) &optional tail-p)
  (let* ((done-label (sanitize-identifier (string (gensym "DONE"))))
         (saved-restarts-temp (sanitize-identifier (ast-restart-bind-saved-restarts-temp node)))
         (bindings (ast-restart-bind-bindings node))
         (body (ast-restart-bind-body node))
         (restarts-list-temp (sanitize-identifier (ast-restart-bind-restarts-list-temp node)))
         (result-temp (sanitize-identifier (ast-restart-bind-result-temp node)))
         (code nil))
    ;; 1. Get current active restarts
    (setf code (append code 
                       (list (il:call :method "GetActiveRestarts" :class "[LispBase]Lisp.RestartControl" :return "object" :args nil)
                             (il:stloc saved-restarts-temp))))
    ;; 2. Construct new restarts list
    (setf code (append code (list (il:ldloc saved-restarts-temp) (il:stloc restarts-list-temp))))
    (dolist (b bindings)
      (destructuring-bind (name fn report-fn interactive-fn test-fn) b
        ;; Create Restart object
        (setf code (append code (load-symbol-il name)))
        (setf code (append code (generate-step2 fn nil)))
        (setf code (append code (generate-step2 report-fn nil)))
        (setf code (append code (generate-step2 interactive-fn nil)))
        (setf code (append code (generate-step2 test-fn nil)))
        (setf code (append code (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.Restart" :return "instance void" :args '("object" "object" "object" "object" "object")))))
        ;; Cons onto restarts-list-temp
        (setf code (append code (list (il:ldloc restarts-list-temp)
                                      (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object"))
                                      (il:stloc restarts-list-temp))))))
    
    ;; 3. Set new active restarts
    (setf code (append code (list (il:ldloc restarts-list-temp)
                                  (il:call :method "SetActiveRestarts" :class "[LispBase]Lisp.RestartControl" :return "void" :args '("object")))))
    
    ;; 4. Try/Finally to restore
    (let ((try-code (append (if (null body)
                                (list (il:ldnull))
                                (let ((*in-try-block* t))
                                  (loop for f in body
                                        for i from 1
                                        for is-last = (= i (length body))
                                        append (generate-step2 f nil)
                                        when (not is-last)
                                          append (list (il:pop)))))
                            (list (il:stloc result-temp)
                                  (il:leave done-label))))
          (finally-code (list (il:ldloc saved-restarts-temp)
                              (il:call :method "SetActiveRestarts" :class "[LispBase]Lisp.RestartControl" :return "void" :args '("object"))
                              (il:endfinally))))
      (setf code (append code (list (il:try try-code)
                                    (il:finally finally-code)
                                    (il:ldloc result-temp :label done-label)))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-handler-bind) &optional tail-p)
  (let* ((done-label (sanitize-identifier (string (gensym "DONE"))))
         (saved-handlers-temp (sanitize-identifier (ast-handler-bind-saved-handlers-temp node)))
         (bindings (ast-handler-bind-bindings node))
         (body (ast-handler-bind-body node))
         (handlers-list-temp (sanitize-identifier (ast-handler-bind-handlers-list-temp node)))
         (result-temp (sanitize-identifier (ast-handler-bind-result-temp node)))
         (code nil))
    ;; 1. Get current active handlers
    (setf code (append code 
                       (list (il:call :method "GetActiveHandlers" :class "[LispBase]Lisp.HandlerControl" :return "object" :args nil)
                             (il:stloc saved-handlers-temp))))
    ;; 2. Construct new handlers list
    (setf code (append code (list (il:ldloc saved-handlers-temp) (il:stloc handlers-list-temp))))
    (dolist (b bindings)
      (destructuring-bind (type fn) b
        ;; Create Handler object
        (setf code (append code (load-symbol-il type)))
        (setf code (append code (generate-step2 fn nil)))
        (setf code (append code (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.Handler" :return "instance void" :args '("object" "object")))))
        ;; Cons onto handlers-list-temp
        (setf code (append code (list (il:ldloc handlers-list-temp)
                                      (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object"))
                                      (il:stloc handlers-list-temp))))))
    
    ;; 3. Set new active handlers
    (setf code (append code (list (il:ldloc handlers-list-temp)
                                  (il:call :method "SetActiveHandlers" :class "[LispBase]Lisp.HandlerControl" :return "void" :args '("object")))))
    
    ;; 4. Try/Finally to restore
    (let ((try-code (append (if (null body)
                                (list (il:ldnull))
                                (let ((*in-try-block* t))
                                  (loop for f in body
                                        for i from 1
                                        for is-last = (= i (length body))
                                        append (generate-step2 f nil)
                                        when (not is-last)
                                          append (list (il:pop)))))
                            (list (il:stloc result-temp)
                                  (il:leave done-label))))
          (finally-code (list (il:ldloc saved-handlers-temp)
                              (il:call :method "SetActiveHandlers" :class "[LispBase]Lisp.HandlerControl" :return "void" :args '("object"))
                              (il:endfinally))))
      (setf code (append code (list (il:try try-code)
                                    (il:finally finally-code)
                                    (il:ldloc result-temp :label done-label)))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-reflection) &optional tail-p)
  (let* ((op (ast-reflection-operation node))
         (args (ast-reflection-arguments node))
         (n (length args))
         (code nil))
    (ecase op
      (:get-type
       (setf code (generate-step2 (first args) nil))
       (setf code (append code (list (il:call :method "GetType" :class "[LispBase]Lisp.Reflection" :return "class [mscorlib]System.Type" :args '("object"))))))
      
      (:new
       (setf code (generate-step2 (first args) nil)) ;; type
       (let ((args-array-temp (register-local (gensym "REFLECT_ARGS"))))
         (setf code (append code 
                            (list (il:ldc.i4 (1- n))
                                  (il:newarr "[mscorlib]System.Object")
                                  (il:stloc args-array-temp))))
         (loop for i from 0 below (1- n)
               for arg in (rest args)
               do (setf code (append code
                                     (list (il:ldloc args-array-temp)
                                           (il:ldc.i4 i))))
                  (setf code (append code (generate-step2 arg nil)))
                  (setf code (append code (list (il:stelem.ref)))))
         (setf code (append code (list (il:ldloc args-array-temp)
                                       (il:call :method "New" :class "[LispBase]Lisp.Reflection" :return "object" :args '("object" "object[]")))))))
      
      (:call-static
       (setf code (generate-step2 (first args) nil)) ;; type
       (setf code (append code (generate-step2 (second args) nil))) ;; method name
       (let ((args-array-temp (register-local (gensym "REFLECT_ARGS"))))
         (setf code (append code 
                            (list (il:ldc.i4 (- n 2))
                                  (il:newarr "[mscorlib]System.Object")
                                  (il:stloc args-array-temp))))
         (loop for i from 0 below (- n 2)
               for arg in (cddr args)
               do (setf code (append code
                                     (list (il:ldloc args-array-temp)
                                           (il:ldc.i4 i))))
                  (setf code (append code (generate-step2 arg nil)))
                  (setf code (append code (list (il:stelem.ref)))))
         (setf code (append code (list (il:ldloc args-array-temp)
                                       (il:call :method "InvokeStatic" :class "[LispBase]Lisp.Reflection" :return "object" :args '("object" "string" "object[]")))))))

      (:call-instance
       (setf code (generate-step2 (first args) nil)) ;; instance
       (setf code (append code (generate-step2 (second args) nil))) ;; method name
       (let ((args-array-temp (register-local (gensym "REFLECT_ARGS"))))
         (setf code (append code 
                            (list (il:ldc.i4 (- n 2))
                                  (il:newarr "[mscorlib]System.Object")
                                  (il:stloc args-array-temp))))
         (loop for i from 0 below (- n 2)
               for arg in (cddr args)
               do (setf code (append code
                                     (list (il:ldloc args-array-temp)
                                           (il:ldc.i4 i))))
                  (setf code (append code (generate-step2 arg nil)))
                  (setf code (append code (list (il:stelem.ref)))))
         (setf code (append code (list (il:ldloc args-array-temp)
                                       (il:call :method "InvokeInstance" :class "[LispBase]Lisp.Reflection" :return "object" :args '("object" "string" "object[]")))))))

      (:get-property
       (setf code (generate-step2 (first args) nil)) ;; instance
       (setf code (append code (generate-step2 (second args) nil))) ;; name
       (setf code (append code (list (il:call :method "GetProperty" :class "[LispBase]Lisp.Reflection" :return "object" :args '("object" "string"))))))
      
      (:set-property
       (setf code (generate-step2 (first args) nil)) ;; instance
       (setf code (append code (generate-step2 (second args) nil))) ;; name
       (setf code (append code (generate-step2 (third args) nil))) ;; value
       (setf code (append code (list (il:call :method "SetProperty" :class "[LispBase]Lisp.Reflection" :return "void" :args '("object" "string" "object"))
                                     (il:ldnull)))))

      (:get-static-property
       (setf code (generate-step2 (first args) nil)) ;; type
       (setf code (append code (generate-step2 (second args) nil))) ;; name
       (setf code (append code (list (il:call :method "GetStaticProperty" :class "[LispBase]Lisp.Reflection" :return "object" :args '("object" "string"))))))

      (:set-static-property
       (setf code (generate-step2 (first args) nil)) ;; type
       (setf code (append code (generate-step2 (second args) nil))) ;; name
       (setf code (append code (generate-step2 (third args) nil))) ;; value
       (setf code (append code (list (il:call :method "SetStaticProperty" :class "[LispBase]Lisp.Reflection" :return "void" :args '("object" "string" "object"))
                                     (il:ldnull))))))

    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-toplevel-defun) &optional tail-p)
  (declare (ignore tail-p))
  (let* ((req-params (ast-toplevel-defun-params node))
         (optionals (ast-toplevel-defun-optional-params node))
         (rest-param (ast-toplevel-defun-rest-param node))
         (key-params (ast-toplevel-defun-key-params node))
         (allow-other-keys (ast-toplevel-defun-allow-other-keys node))
         (aux-params (ast-toplevel-defun-aux-params node))
         (opt-names (mapcar #'car optionals))
         (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
         ;; Use already bound params if present (from pass1), otherwise construct them.
         (*current-lambda-params* (or *current-lambda-params*
                                     (append req-params opt-names opt-supplied-names (when rest-param (list rest-param)))))
         (forms (ast-toplevel-defun-body node))
         (prologue nil))

    ;; A. Handle Optionals & Supplied-P
    (loop for (name init-ast sup-name) in optionals
          for opt-idx = (position name *current-lambda-params* :test #'eq)
          do (let ((supplied-label (sanitize-identifier (string (gensym "SUP"))))
                   (done-label (sanitize-identifier (string (gensym "DONE"))))
                   (arg-idx (if *current-lambda-class* (1+ opt-idx) opt-idx)))
               (setf prologue (append prologue
                 (list (il:ldarg arg-idx)
                       (il:ldsfld "object [LispBase]Lisp.Undefined::Value")
                       (il:bne.un supplied-label))
                 ;; NOT SUPPLIED: Eval init-form and starg
                 (generate-step2 init-ast nil)
                 (list (il:starg arg-idx))))
               ;; Set sup-p to null
               (when sup-name
                 (let ((sup-idx (position sup-name *current-lambda-params* :test #'eq)))
                   (setf prologue (append prologue (list (il:ldnull))
                                          (list (il:starg (if *current-lambda-class* (1+ sup-idx) sup-idx)))))))
               (setf prologue (append prologue
                 (list (il:br done-label)
                       (il:nop :label supplied-label))))
               ;; SUPPLIED: Set sup-p to T
               (when sup-name
                 (let ((sup-idx (position sup-name *current-lambda-params* :test #'eq)))
                   (setf prologue (append prologue (load-symbol-il "T")
                                          (list (il:starg (if *current-lambda-class* (1+ sup-idx) sup-idx)))))))
               (setf prologue (append prologue (list (il:nop :label done-label))))))

    ;; B. Handle &aux (treated like a sequential let*)
    (loop for (name init-ast) in aux-params
          do (setf prologue (append prologue 
                                    (generate-step2 init-ast nil)
                                    (list (il:stloc (sanitize-identifier (string name)))))))

    ;; D. Handle Keywords
    (when key-params
      (setf prologue (append prologue (generate-keyword-prologue key-params rest-param allow-other-keys *current-lambda-params* nil))))

    ;; C. Generate Body
    (let ((body-code (if (and (null forms) (null prologue))
                        (list (il:ldnull) (il:ret))
                        (let ((res prologue))
                          (loop for form in forms
                                for i from 1
                                for is-last = (= i (length forms))
                                do (setf res (append res (generate-step2 form is-last)))
                                when (not is-last)
                                  do (setf res (append res (list (il:pop)))))
                          (append res (list (il:ldnull) (il:ret)))))))
      (setf (ast-basic-block node) body-code)
      body-code)))

(defmethod generate-step2 ((node ast-application) &optional tail-p)
  (let ((operator (ast-application-operator node))
        (operands (ast-application-operands node)))
    (if (and (typep operator 'ast-global-variable)
             (eq (ast-variable-name operator) '.ctor))
        (let* ((free-vars (cdr operands))
               (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) free-vars))))        
          (let ((code (append operands-code (ast-basic-block node))))
            (if tail-p (append code (list (il:ret))) code)))
        (let ((name (when (typep operator 'ast-global-variable)
                      (symbol-name (ast-variable-name operator)))))
          (let ((handler (when name (lookup-primitive-step2 name))))
            (if handler
                (funcall handler node tail-p)
                (if (and name (member (ast-variable-name operator) *toplevel-defuns* :test #'eq))
                    (standard-step2-handler node tail-p)
                    (let ((operator-code (generate-step2 operator nil))
                          (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) operands)))
                          (bb (ast-basic-block node)))
                      (when (and tail-p (not *in-try-block*) bb)
                        (let ((last-inst (car (last bb))))
                          (when (and (typep last-inst 'cil-call-instruction)
                                     (member (get-opcode last-inst) '("call" "callvirt") :test #'string-equal))
                            (setf (get-tail-p last-inst) t))))
                      (let ((code (append operator-code (list (il:castclass "[LispBase]Lisp.Closure")) operands-code bb)))
                        (if (and tail-p (not *in-try-block*)) (append code (list (il:ret))) code))))))))))

;;; ===========================================================================
;;; Main Entry Point
;;; ===========================================================================

(defun generate (ast)
  (let ((*current-locals* nil))
    (generate-step1 ast)
    (let ((entire-body-block (generate-step2 ast (or (typep ast 'ast-lambda) (typep ast 'ast-toplevel-defun)))))
      (setf (ast-basic-block ast) entire-body-block)
      (values entire-body-block *current-locals* *global-variables*))))

;;; ===========================================================================
;;; Assembly Generation
;;; ===========================================================================

(defun extract-classes (node)
  (let ((classes nil))
    (labels ((traverse (n)
               (typecase n
                 (ast-class (push n classes))
                 (ast-toplevel-defun (mapc #'traverse (ast-toplevel-defun-body n)))
                 (ast-if (traverse (ast-if-test n))
                         (traverse (ast-if-consequent n))
                         (traverse (ast-if-alternate n)))
                 (ast-progn (mapc #'traverse (ast-progn-forms n)))
                 (ast-let (mapc (lambda (b) (traverse (cadr b))) (ast-let-bindings n))
                          (mapc #'traverse (ast-let-body n)))
                 (ast-setq (traverse (ast-setq-value n)))
                 (ast-method (mapc #'traverse (ast-method-body n)))
                 (ast-application
                  (traverse (ast-application-operator n))
                  (mapc #'traverse (ast-application-operands n)))
                 (ast-clr-call
                  (mapc #'traverse (ast-clr-call-arguments n)))
                 (ast-clr-call-virt
                  (traverse (ast-clr-call-virt-instance n))
                  (mapc #'traverse (ast-clr-call-virt-arguments n)))
                 (ast-clr-new
                  (mapc #'traverse (ast-clr-new-arguments n)))
                 (ast-clr-field
                  (when (ast-clr-field-instance n) (traverse (ast-clr-field-instance n)))))))
      (traverse node)
      (nreverse classes))))

(defun parse-slot (slot-spec class-name)
  (let* ((name (if (consp slot-spec) (car slot-spec) slot-spec))
         (name-str (sanitize-identifier (string name)))
         (accessor (when (consp slot-spec) (getf (cdr slot-spec) :accessor)))
         (accessor-str (when accessor (sanitize-identifier (string accessor))))
         (field (il:field :name name-str :type "object" :visibility :private))
         (methods nil)
         (property nil))
    (when accessor-str
      (let* ((getter-name (format nil "get_~A" accessor-str))
             (setter-name (format nil "set_~A" accessor-str))
             (getter (il:method :name getter-name :return-type "object"
                                :instructions (list (il:ldarg.0)
                                                    (il:ldfld (format nil "object ~A::'~A'" class-name name-str))
                                                    (il:ret))))
             (setter (il:method :name setter-name :return-type "void" :arg-types '("object")
                                :instructions (list (il:ldarg.0)
                                                    (il:ldarg.1)
                                                    (il:stfld (format nil "object ~A::'~A'" class-name name-str))
                                                    (il:ret)))))
        (push getter methods)
        (push setter methods)
        (setf property (il:property :name accessor-str :type "object" :getter getter-name :setter setter-name))))
    (values field property methods)))

(defun emit-runtime-config (assembly-name)
  (with-open-file (stream (format nil "~A.runtimeconfig.json" assembly-name) 
                          :direction :output :if-exists :supersede)
    (format stream "{~%  \"runtimeOptions\": {~%    \"tfm\": \"net8.0\",~%    \"framework\": {~%      \"name\": \"Microsoft.NETCore.App\",~%      \"version\": \"8.0.0\"~%    }~%  }~%}")
    (format t "Generated ~A.runtimeconfig.json successfully.~%" assembly-name)))

(defun generate-user-classes (ast)
  (mapcar (lambda (defclass-node)
            (let* ((name (sanitize-identifier (string (ast-class-name defclass-node))))
                   (parent (if (ast-class-superclasses defclass-node)
                               (sanitize-identifier (string (car (ast-class-superclasses defclass-node))))
                               "[mscorlib]System.Object"))
                   (fields nil)
                   (properties nil)
                   (methods nil))
              (dolist (slot-spec (ast-class-slots defclass-node))
                (multiple-value-bind (f p m) (parse-slot slot-spec name)
                  (push f fields)
                  (when p (push p properties))
                  (setf methods (append methods m))))
              (let* ((ctor-insts (list (il:ldarg.0)
                                       (il:call :method ".ctor" :class parent :return "instance void" :args nil)
                                       (il:ret)))
                     (ctor (il:method :name ".ctor"
                                      :return-type "void"
                                      :arg-types nil
                                      :instructions ctor-insts)))
                (push ctor methods)
                (il:class :name name :parent parent :fields fields :properties properties :methods methods))))
          (extract-classes ast)))

(defun generate-closure-classes (lambdas)
  (mapcar (lambda (lifted)
            (let* ((name (sanitize-identifier (string (car lifted))))
                   (lambda-node (cdr lifted))
                   (req-params (ast-lambda-params lambda-node))
                   (optionals (ast-lambda-optional-params lambda-node))
                   (rest-param (ast-lambda-rest-param lambda-node))
                   (has-rest (not (null rest-param)))
                   
                   (opt-names (mapcar #'car optionals))
                   (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
                   (body-params (append req-params
                                        opt-names
                                        opt-supplied-names
                                        (when has-rest (list rest-param))))
                   (n-body-params (length body-params))

                   ;; 2. Fields and Constructor (Capturing Free Variables)
                   (free-vars (ast-lambda-free-vars lambda-node))
                   (fields (mapcar (lambda (v) (il:field :name (sanitize-identifier (string v)) :type "object")) free-vars))
                   (ctor-insts (append
                                (list (il:ldarg.0)
                                      (il:call :method ".ctor" :class "[LispBase]Lisp.Closure" :return "instance void" :args nil))
                                (loop for i from 0 below (length free-vars)
                                      for v in free-vars
                                      append (list (il:ldarg.0)
                                                   (il:ldarg (1+ i))
                                                   (il:stfld (format nil "object ~A::'~A'" name (sanitize-identifier (string v))))))
                                (list (il:ret))))
                   (ctor (il:method :name ".ctor"
                                    :return-type "void"
                                    :arg-types (make-list (length free-vars) :initial-element "object")
                                    :instructions ctor-insts))
                   
                   (methods (list ctor)))

              ;; 3. Generate InvokeBody
              (multiple-value-bind (body-block body-locals)
                  (let ((*current-lambda-params* body-params)
                        (*current-lambda-class* name)
                        (*current-locals* nil))
                    (generate-step1 lambda-node)
                    (values (generate-step2 lambda-node t) *current-locals*))
                (push (il:method :name "InvokeBody" :return-type "object"
                                 :arg-types (make-list n-body-params :initial-element "object")
                                 :locals (mapcar (lambda (loc) (format nil "object ~A" loc)) body-locals)
                                 :instructions body-block :visibility :private)
                      methods))

              ;; 4. Generate Overloads (0 to 8)
              (loop for m from 0 to 8 do
                (let* ((invoke-arg-types (make-list m :initial-element "object"))
                       (too-few (< m (length req-params)))
                       (has-keys (not (null (ast-lambda-key-params lambda-node))))
                       (too-many (and (not has-rest) (not has-keys) (> m (+ (length req-params) (length optionals)))))
                       (n-extra (- m (+ (length req-params) (length optionals))))
                       (insts (cond
                                ((or too-few too-many)
                                 (list (il:ldc.i4 (length req-params)) (il:ldc.i4 m)
                                       (il:newobj :method ".ctor" :class "[LispBase]Lisp.WrongNumberOfArgumentsException" :return "instance void" :args '("int32" "int32"))
                                       (il:throw)))
                                ((and has-keys (oddp n-extra))
                                 (list (il:ldstr "Odd number of keyword arguments")
                                       (il:newobj :method ".ctor" :class "[mscorlib]System.Exception" :return "instance void" :args '("string"))
                                       (il:throw)))
                                (t
                                 (let ((prep-code (list (il:ldarg.0)))) ;; 'this'
                                   ;; Pass Requireds
                                   (loop for i from 1 to (length req-params) do
                                     (push (il:ldarg i) prep-code))
                                   ;; Pass Optionals or Sentinel
                                   (loop for i from 0 below (length optionals)
                                         for arg-idx = (+ (length req-params) i 1)
                                         do (if (<= arg-idx m)
                                                (push (il:ldarg arg-idx) prep-code)
                                                (push (il:ldsfld "object [LispBase]Lisp.Undefined::Value") prep-code)))
                                   ;; Pass nulls for supplied-p (Body will overwrite)
                                   (loop repeat (length opt-supplied-names) do (push (il:ldnull) prep-code))
                                   ;; Handle &rest (and keywords)
                                   (when has-rest
                                     (loop for i from (+ (length req-params) (length optionals) 1) to m do
                                       (push (il:ldarg i) prep-code))
                                     (push (il:ldnull) prep-code)
                                     (loop repeat (max 0 n-extra) do
                                       (push (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object")) prep-code)))
                                   
                                   (append (reverse prep-code)
                                           (list (il:tail.) ;; $O(1) Soul
                                                 (il:callvirt :method "InvokeBody" :class name :return "object" :args (make-list n-body-params :initial-element "object"))
                                                 (il:ret))))))))
                  (push (il:method :name "Invoke" :return-type "object" :arg-types invoke-arg-types :virtual-p t :instructions insts) methods)))
              (il:class :name name :parent "[LispBase]Lisp.Closure" :fields fields :methods (reverse methods))))
          lambdas))

(defun generate-toplevel-methods (toplevel-defuns)
  (reduce #'append
    (mapcar (lambda (defun-node)
              (let* ((name (sanitize-identifier (string (ast-toplevel-defun-name defun-node))))
                     (body-name (format nil "~A_Body" name))
                     (req-params (ast-toplevel-defun-params defun-node))
                     (optionals (ast-toplevel-defun-optional-params defun-node))
                     (rest-param (ast-toplevel-defun-rest-param defun-node))
                     (has-rest (not (null rest-param)))
                     (opt-names (mapcar #'car optionals))
                     (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
                     (body-params (append req-params
                                          opt-names
                                          opt-supplied-names
                                          (when has-rest (list rest-param))))
                     (n-body-params (length body-params))
                     (methods nil))
                
                ;; 1. Generate Body
                (multiple-value-bind (block locals) 
                    (let ((*current-lambda-params* body-params)
                          (*current-locals* nil))
                      (generate-step1 defun-node)
                      (values (generate-step2 defun-node t) *current-locals*))
                  (let ((locals-decl (mapcar (lambda (loc) (format nil "object ~A" loc)) locals)))
                    (push (il:method :name body-name
                                     :return-type "object"
                                     :arg-types (make-list n-body-params :initial-element "object")
                                     :locals locals-decl
                                     :visibility :private
                                     :static-p t
                                     :instructions block)
                          methods)))

                ;; 2. Generate Overloads (0 to 8)
                (loop for m from 0 to 8 do
                  (let* ((invoke-arg-types (make-list m :initial-element "object"))
                         (too-few (< m (length req-params)))
                         (has-keys (not (null (ast-toplevel-defun-key-params defun-node))))
                         (too-many (and (not has-rest) (not has-keys) (> m (+ (length req-params) (length optionals)))))
                         (n-extra (- m (+ (length req-params) (length optionals))))
                         (insts (cond
                                  ((or too-few too-many)
                                   (list (il:ldc.i4 (length req-params)) (il:ldc.i4 m)
                                         (il:newobj :method ".ctor" :class "[LispBase]Lisp.WrongNumberOfArgumentsException" :return "instance void" :args '("int32" "int32"))
                                         (il:throw)))
                                  ((and has-keys (oddp n-extra))
                                   (list (il:ldstr "Odd number of keyword arguments")
                                         (il:newobj :method ".ctor" :class "[mscorlib]System.Exception" :return "instance void" :args '("string"))
                                         (il:throw)))
                                  (t
                                   (let ((prep-code nil))
                                     ;; Pass Requireds
                                     (loop for i from 0 below (length req-params) do
                                       (push (il:ldarg i) prep-code))
                                     ;; Pass Optionals or Sentinel
                                     (loop for i from 0 below (length optionals)
                                           for arg-idx = (+ (length req-params) i)
                                           do (if (< arg-idx m)
                                                  (push (il:ldarg arg-idx) prep-code)
                                                  (push (il:ldsfld "object [LispBase]Lisp.Undefined::Value") prep-code)))
                                     ;; Pass nulls for supplied-p (Body will overwrite)
                                     (loop repeat (length opt-supplied-names) do (push (il:ldnull) prep-code))
                                     ;; Handle &rest (and keywords)
                                     (when has-rest
                                       (loop for i from (+ (length req-params) (length optionals)) below m do
                                         (push (il:ldarg i) prep-code))
                                       (push (il:ldnull) prep-code)
                                       (loop repeat (max 0 n-extra) do
                                         (push (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object")) prep-code)))
                                     
                                     (append (reverse prep-code)
                                             (list (il:tail.)
                                                   (il:call :method body-name :class "Program" :return "object" :args (make-list n-body-params :initial-element "object"))
                                                   (il:ret))))))))
                    (push (il:method :name name :return-type "object" :arg-types invoke-arg-types :visibility :public :static-p t :instructions insts) methods)))
                (nreverse methods)))
            toplevel-defuns)))

(defun generate-program-class (ast toplevel-methods)
  (multiple-value-bind (main-insts locals) (generate ast)
    (let* ((main-insts-final (append main-insts (list (il:pop) (il:ret))))
           (main-method (il:method :name "Main"
                                   :static-p t
                                   :locals (mapcar (lambda (loc) (format nil "object ~A" loc)) locals)
                                   :entrypoint-p t
                                   :instructions main-insts-final))

           (prog-fields (append
                         (mapcar (lambda (g) (il:field :name g :type "object" :static-p t)) *global-variables*)
                         (mapcar (lambda (sym) (il:field :name (cdr sym) :type "class [LispBase]Lisp.Symbol" :static-p t)) *quoted-symbols*)))
           (cctor-insts (append
                         (loop for g in *global-variables*
                               append (list (il:ldnull)
                                            (il:stsfld (format nil "object Program::'~A'" g))))
                         (loop for (symbol-or-name . field-name) in *quoted-symbols*
                               append (list
                                       (if (and (symbolp symbol-or-name) (keywordp symbol-or-name))
                                           (il:ldsfld "class [LispBase]Lisp.Package [LispBase]Lisp.Package::Keyword")
                                           (il:call :method "get_Current" :class "[LispBase]Lisp.Package" :return "class [LispBase]Lisp.Package" :args nil))
                                       (il:ldstr (if (symbolp symbol-or-name) (symbol-name symbol-or-name) symbol-or-name))
                                       (il:callvirt :method "Intern" :class "[LispBase]Lisp.Package" :return "class [LispBase]Lisp.Symbol" :args '("string"))
                                       (il:stsfld (format nil "class [LispBase]Lisp.Symbol Program::'~A'" field-name))))))
           (cctor-method (when cctor-insts
                           (il:method :name ".cctor"
                                      :static-p t
                                      :specialname-p t
                                      :rtspecialname-p t
                                      :return-type "void"
                                      :arg-types nil
                                      :instructions (append cctor-insts (list (il:ret)))))))
      (il:class :name "Program" 
                :fields prog-fields 
                :methods (append (if cctor-method (list cctor-method) nil)
                                 (nreverse toplevel-methods)
                                 (list main-method))))))

(defun generate-assembly (ast lambdas assembly-name &key toplevel-defuns)
  (let ((*global-variables* nil)
        (*quoted-symbols* nil))
    (emit-runtime-config assembly-name)
    (let ((classes (append (generate-user-classes ast)
                           (generate-closure-classes lambdas)))
          (toplevel-methods (generate-toplevel-methods toplevel-defuns)))
      (format t "Generated ~D toplevel methods!~%" (length toplevel-methods))
      (push (generate-program-class ast toplevel-methods) classes)
      (il:assembly :name assembly-name :externs '("mscorlib" "LispBase") :classes classes))))

(defun read-forms-from-file (input-path)
  (with-open-file (stream input-path)
    (let ((*package* *package*))
      (loop for form = (clr-read stream nil :eof)
            until (eq form :eof)
            if (and (consp form) (string-equal (symbol-name (car form)) "IN-PACKAGE"))
              do (eval form)
            else
              collect form))))

(defun categorize-toplevel-forms (forms)
  (let ((toplevel-defun-forms nil)
        (other-forms nil))
    (labels ((extract (f)
               (cond ((and (consp f) (string-equal (symbol-name (car f)) "DEFUN"))
                      (push f toplevel-defun-forms))
                     ((and (consp f) (string-equal (symbol-name (car f)) "PROGN"))
                      (mapc #'extract (cdr f)))
                     (t (push f other-forms)))))
      (mapc #'extract forms))
    (values (nreverse toplevel-defun-forms) (nreverse other-forms))))

(defun analyze-and-convert (toplevel-defun-forms other-forms)
  (let* ((toplevel-defun-nodes (mapcar (lambda (f) (lisp->ast f)) toplevel-defun-forms))
         (main-ast (lisp->ast `(progn ,@other-forms)))
         (analyzed-main (analyze-environment main-ast nil))
         (analyzed-defuns (mapcar (lambda (n) (analyze-environment n nil)) toplevel-defun-nodes)))
    (dolist (n (cons analyzed-main analyzed-defuns))
      (compute-free-vars n))
    (let* ((converted-main (closure-convert analyzed-main))
           (converted-defuns (mapcar #'closure-convert analyzed-defuns)))
      (multiple-value-bind (lifted-main lambdas-main) (perform-lambda-lifting converted-main)
        (let ((all-lambdas lambdas-main)
              (final-defuns nil))
          (dolist (defun converted-defuns)
            (multiple-value-bind (lifted-defun lambdas-defun) (perform-lambda-lifting defun)
              (push lifted-defun final-defuns)
              (setf all-lambdas (append all-lambdas lambdas-defun))))
          (values lifted-main all-lambdas (nreverse final-defuns)))))))

(defun write-compilation-outputs (asm assembly-name)
  (with-open-file (stream (format nil "~A.il" assembly-name) :direction :output :if-exists :supersede)  
    (emit-assembly asm stream))
  (format t "; Generated ~A.il successfully.~%" assembly-name)
  (il:ilasm asm)
  (format t "Publishing ~A to standalone executable...~%" assembly-name)
  (with-open-file (stream (format nil "~A.ilproj" assembly-name) :direction :output :if-exists :supersede)
    (format stream "<Project Sdk=\"Microsoft.NET.Sdk.IL/8.0.0\">~%")
    (format stream "  <PropertyGroup>~%")
    (format stream "    <OutputType>Exe</OutputType>~%")
    (format stream "    <TargetFramework>net8.0</TargetFramework>~%")
    (format stream "  </PropertyGroup>~%")
    (format stream "  <ItemGroup>~%")
    (format stream "    <Compile Remove=\"**/*.il\" />~%")
    (format stream "    <Compile Include=\"~A.il\" />~%" assembly-name)
    (format stream "    <ProjectReference Include=\"LispBase\\LispBase.csproj\" />~%")
    (format stream "  </ItemGroup>~%")
    (format stream "</Project>~%"))
  (uiop:run-program (list "dotnet" "build" (format nil "~A.ilproj" assembly-name) "-c" "Release" "-p:UseAppHost=false" "-p:UseCommonOutputDirectory=true" "-nologo")
                    :output *standard-output*
                    :error-output *error-output*)
  (values (probe-file (format nil "bin/Release/net8.0/~A.dll" assembly-name)) nil nil))

(defun compile-file (input-file &key output-file &allow-other-keys)
  (let* ((input-path (pathname input-file))
         (assembly-name (or output-file (pathname-name input-path)))
         (forms (read-forms-from-file input-path)))
    (multiple-value-bind (toplevel-defun-forms other-forms) (categorize-toplevel-forms forms)
      (let ((*toplevel-defuns* (mapcar #'second toplevel-defun-forms)))
        (multiple-value-bind (lifted-main all-lambdas final-defuns) (analyze-and-convert toplevel-defun-forms other-forms)
          (generate lifted-main)
          (dolist (d final-defuns) (generate d))
          (dolist (l all-lambdas) (generate (cdr l)))
          (let ((asm (generate-assembly lifted-main all-lambdas assembly-name :toplevel-defuns final-defuns)))
            (write-compilation-outputs asm assembly-name)))))))
