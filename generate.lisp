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
    (when (and tail-p bb)
      (let ((last-inst (car (last bb))))
        (when (and (typep last-inst 'cil-call-instruction)
                   (member (get-opcode last-inst) '("call" "callvirt") :test #'string-equal))
          (setf (get-tail-p last-inst) t))))
    (let ((code (append operands-code bb)))
      (if tail-p (append code (list (il:ret))) code))))

(register-primitive-step2 
 '("%WRITE-LINE" "%WRITE-OBJECT" "%WRITE-INT" "PRINT" "%SUB" "-" "%MUL" "*" "%DIV" "/" "%ADD" "+" "1+" "1-"
   "%LESSP" "<" "%NOT" "NOT" "%CONS" "CONS" "%CAR" "CAR" "%CDR" "CDR" "%EQ" "EQ" "%NULL" "NULL"
   "%CONSP" "CONSP" "%MAKE-CELL" "%CELL-VALUE" "%SET-CELL-VALUE!")
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

(defmethod generate-step2 ((node ast-lambda) &optional tail-p)
  (declare (ignore tail-p))
  (let* ((*current-lambda-class* (sanitize-identifier (string (ast-lambda-lifted-name node))))
         (*current-lambda-free-vars* (ast-lambda-free-vars node))
         (*current-lambda-params* (ast-lambda-params node))
         (forms (ast-lambda-body node))
         (body-code (if (null forms)
                        (list (il:ldnull) (il:ret))
                        (let ((res nil))
                          (loop for form in forms
                                for i from 1
                                for is-last = (= i (length forms))
                                do (setf res (append res (generate-step2 form is-last)))
                                when (not is-last)
                                  do (setf res (append res (list (il:pop)))))
                          (append res (list (il:ldnull) (il:ret)))))))
    (setf (ast-basic-block node) body-code)
    body-code))

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
         (result-temp (ast-unwind-protect-result-temp node))
         (protected-code (append (generate-step2 (ast-unwind-protect-protected-form node) nil)
                                 (list (il:stloc result-temp)
                                       (il:leave done-label))))
         (cleanup-code (append (loop for f in (ast-unwind-protect-cleanup-forms node)
                                     append (append (generate-step2 f nil) (list (il:pop))))
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
                               (loop for f in (ast-catch-body node)
                                     for i from 1
                                     for is-last = (= i (length (ast-catch-body node)))
                                     append (generate-step2 f nil)
                                     when (not is-last)
                                       append (list (il:pop))))
                           (list (il:stloc result-temp)
                                 (il:leave done-label))))
         (catch-code (list (il:dup) ;; exception object
                           (il:callvirt :method "get_Tag" :class "[LispBase]Lisp.CatchThrowException" :return "object" :args nil)
                           (il:ldloc tag-temp)
                           (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
                           (il:brfalse rethrow-label)
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
          (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.CatchThrowException" :return "instance void" :args '("object" "object"))
                (il:throw))))

(defmethod generate-step2 ((node ast-toplevel-defun) &optional tail-p)
  (declare (ignore tail-p))
  (let* ((*current-lambda-params* (ast-toplevel-defun-params node))
         (forms (ast-toplevel-defun-body node))
         (body-code (if (null forms)
                        (list (il:ldnull) (il:ret))
                        (let ((res nil))
                          (loop for form in forms
                                for i from 1
                                for is-last = (= i (length forms))
                                do (setf res (append res (generate-step2 form is-last)))
                                when (not is-last)
                                  do (setf res (append res (list (il:pop)))))
                          (append res (list (il:ldnull) (il:ret)))))))
    (setf (ast-basic-block node) body-code)
    body-code))

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
                      (when (and tail-p bb)
                        (let ((last-inst (car (last bb))))
                          (when (and (typep last-inst 'cil-call-instruction)
                                     (member (get-opcode last-inst) '("call" "callvirt") :test #'string-equal))
                            (setf (get-tail-p last-inst) t))))
                      (let ((code (append operator-code (list (il:castclass "[LispBase]Lisp.Closure")) operands-code bb)))
                        (if tail-p (append code (list (il:ret))) code))))))))))

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
                   (n-params (length (ast-lambda-params lambda-node)))
                   (methods (list ctor)))
              (multiple-value-bind (block locals) (generate lambda-node)
                (let ((locals-decl (mapcar (lambda (loc) (format nil "object ~A" loc)) locals)))
                  (loop for m from 0 to 8 do
                    (let* ((invoke-arg-types (make-list m :initial-element "object"))
                           (is-match (= m n-params))
                           (insts (if is-match
                                      block
                                      (list (il:ldc.i4 n-params)
                                            (il:ldc.i4 m)
                                            (il:newobj :method ".ctor" :class "[LispBase]Lisp.WrongNumberOfArgumentsException" :return "instance void" :args '("int32" "int32"))
                                            (il:throw)))))
                      (push (il:method :name "Invoke"
                                       :return-type "object"
                                       :arg-types invoke-arg-types
                                       :locals (if is-match locals-decl nil)
                                       :virtual-p t
                                       :instructions insts)
                            methods))))
              (il:class :name name :parent "[LispBase]Lisp.Closure" :fields fields :methods (reverse methods)))))
          lambdas))

(defun generate-toplevel-methods (toplevel-defuns)
  (mapcar (lambda (defun-node)
            (let* ((name (sanitize-identifier (string (ast-toplevel-defun-name defun-node))))
                   (params (ast-toplevel-defun-params defun-node))
                   (n-params (length params)))
              (multiple-value-bind (block locals) (generate defun-node)
                (let ((locals-decl (mapcar (lambda (loc) (format nil "object ~A" loc)) locals)))
                  (il:method :name name
                             :return-type "object"
                             :arg-types (make-list n-params :initial-element "object")
                             :locals locals-decl
                             :visibility :public
                             :static-p t
                             :instructions block)))))
          toplevel-defuns))

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
                         (loop for (sym-name . field-name) in *quoted-symbols*
                               append (list
                                       (il:call :method "get_Current" :class "[LispBase]Lisp.Package" :return "class [LispBase]Lisp.Package" :args nil)
                                       (il:ldstr sym-name)
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
