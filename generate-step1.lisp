#+sbcl (declaim (sb-ext:muffle-conditions style-warning))
;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; ===========================================================================
;;; Shared Infrastructure and Step 1 (AST to Basic Blocks)
;;; ===========================================================================

(defvar *current-lambda-class* nil)
(defvar *current-locals* nil)
(defvar *current-lambda-params* nil)
(defvar *current-lambda-free-vars* nil)
(defvar *global-variables* nil)
(defvar *quoted-symbols* nil)
(defvar *toplevel-defuns* nil)
(defvar *in-try-block* nil)

(defvar *primitive-handlers-step1* (make-hash-table :test #'equalp))

(defun register-primitive-step1 (names handler)
  (dolist (name (if (listp names) names (list names)))
    (setf (gethash (string name) *primitive-handlers-step1*) handler)))

(defun lookup-primitive-step1 (name)
  (gethash (string name) *primitive-handlers-step1*))

(defvar *primitive-handlers-step2* (make-hash-table :test #'equalp))

(defun register-primitive-step2 (names handler)
  (dolist (name (if (listp names) names (list names)))
    (setf (gethash (string name) *primitive-handlers-step2*) handler)))

(defun lookup-primitive-step2 (name)
  (gethash (string name) *primitive-handlers-step2*))

(defun register-local (name)
  (let ((sanitized (sanitize-identifier (string name))))
    (pushnew sanitized *current-locals* :test #'string=)
    sanitized))

(defun register-global (name)
  (let ((sanitized (sanitize-identifier (string name))))
    (pushnew sanitized *global-variables* :test #'string=)
    sanitized))

(defun load-symbol-il (symbol)
  (let* ((field-name (cdr (assoc symbol *quoted-symbols*))))
    (unless field-name
      (setf field-name (sanitize-identifier (format nil "SYM_~A" (gensym (if (symbolp symbol) (symbol-name symbol) "S")))))
      (push (cons symbol field-name) *quoted-symbols*))
    (list (il:ldsfld (format nil "class [LispBase]Lisp.Symbol Program::'~A'" field-name)))))

(defgeneric generate-step1 (node)
  (:documentation "Generates straight-line instructions for the given AST node and assigns it to the node's basic-block."))

(defgeneric generate-step2 (node &optional tail-p)
  (:documentation "Stitches basic blocks with control flow instructions and returns the combined list of instructions."))

;;; Step 1 Primitive Handlers

(register-primitive-step1 '("%WRITE-LINE" "%WRITE-OBJECT" "%WRITE-INT" "PRINT")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "WriteLine" :class "[mscorlib]System.Console" :return "void" :args '("object"))
          (il:ldnull))))

(register-primitive-step1 '("%SUB" "-")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B")))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:sub)
            (il:box "int32")))))

(register-primitive-step1 '("%MUL" "*")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B")))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:mul)
            (il:box "int32")))))

(register-primitive-step1 '("%DIV" "/")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B")))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:div)
            (il:box "int32")))))

(register-primitive-step1 '("%ADD" "+")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B")))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:add)
            (il:box "int32")))))

(register-primitive-step1 '("1+" "1-")
  (lambda (node operands)
    (let ((op-name (symbol-name (ast-variable-name (ast-application-operator node)))))
      (mapc #'generate-step1 operands)
      (list (il:unbox.any "int32")
            (il:ldc.i4 1)
            (if (string-equal op-name "1+") (il:add) (il:sub))
            (il:box "int32")))))

(register-primitive-step1 '("%LESSP" "<")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B"))
          (true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:clt)
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 "="
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-global "TEMP_B"))
          (true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:stsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; a
            (il:ldsfld (format nil "object Program::'~A'" temp))
            (il:unbox.any "int32") ; b
            (il:ceq)
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 '("%NOT" "NOT")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:ldnull)
            (il:ceq)
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 "%MAKE-CELL"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.ValueCell" :return "instance void" :args '("object")))))

(register-primitive-step1 '("%CONS" "CONS")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object")))))

(register-primitive-step1 "LIST"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((n (length operands)))
      (append
       (list (il:ldnull))
       (loop repeat n
             append (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object"))))))))

(register-primitive-step1 '("%CAR" "CAR")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:castclass "[LispBase]Lisp.List/ListCell")
          (il:ldfld "object [LispBase]Lisp.List/ListCell::first"))))

(register-primitive-step1 '("%CDR" "CDR")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:castclass "[LispBase]Lisp.List/ListCell")
          (il:ldfld "object [LispBase]Lisp.List/ListCell::rest"))))

(register-primitive-step1 '("%EQ" "EQ")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 '("%NULL" "NULL")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:ldnull)
            (il:call :method "Equals" :class "[mscorlib]System.Object" :return "bool" :args '("object" "object"))
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 '("%CONSP" "CONSP")
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((true-label (sanitize-identifier (string (gensym "TRUE"))))
          (end-label (sanitize-identifier (string (gensym "END")))))
      (list (il:isinst "[LispBase]Lisp.List/ListCell")
            (il:ldnull)
            (il:cgt.un)
            (il:brtrue true-label)
            (il:ldnull)
            (il:br end-label)
            (il:nop :label true-label)
            (car (load-symbol-il "T"))
            (il:nop :label end-label)))))

(register-primitive-step1 "%CELL-VALUE"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:castclass "[LispBase]Lisp.ValueCell")
          (il:ldfld "object [LispBase]Lisp.ValueCell::Value"))))

(register-primitive-step1 "%INTERN"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let* ((sym-name-node (car operands))
           (sym-name (ast-literal-value sym-name-node)))
      (load-symbol-il sym-name))))

(register-primitive-step1 "%GET-ACTIVE-RESTARTS"
  (lambda (node operands)
    (declare (ignore node operands))
    (list (il:call :method "GetActiveRestarts" :class "[LispBase]Lisp.RestartControl" :return "object" :args nil))))

(register-primitive-step1 "%GET-ACTIVE-HANDLERS"
  (lambda (node operands)
    (declare (ignore node operands))
    (list (il:call :method "GetActiveHandlers" :class "[LispBase]Lisp.HandlerControl" :return "object" :args nil))))

(register-primitive-step1 "FIND-RESTART"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "FindRestart" :class "[LispBase]Lisp.RestartControl" :return "class [LispBase]Lisp.Restart" :args '("object")))))

(register-primitive-step1 "INVOKE-RESTART"
  (lambda (node operands)
    (declare (ignore node))
    (let ((n (length operands)))
      (mapc #'generate-step1 operands)
      (let ((args-array-temp (register-local "RESTART_ARGS_TEMP"))
            (arg-temp (register-local "RESTART_ARG_TEMP")))
        (append
         (list (il:ldc.i4 (1- n)) ;; exclude restart name
               (il:newarr "[mscorlib]System.Object")
               (il:stloc args-array-temp))
         (loop for i from (- n 2) downto 0
               append (list (il:stloc arg-temp)
                            (il:ldloc args-array-temp)
                            (il:ldc.i4 i)
                            (il:ldloc arg-temp)
                            (il:stelem.ref)))
         (list (il:ldloc args-array-temp)
               (il:call :method "InvokeRestart" :class "[LispBase]Lisp.RestartControl" :return "object" :args '("object" "object[]"))))))))

(register-primitive-step1 "INVOKE-RESTART-INTERACTIVELY"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "InvokeRestartInteractively" :class "[LispBase]Lisp.RestartControl" :return "object" :args '("object")))))

(register-primitive-step1 "SIGNAL"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "Signal" :class "[LispBase]Lisp.HandlerControl" :return "object" :args '("object")))))

(register-primitive-step1 "ERROR"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "Error" :class "[LispBase]Lisp.HandlerControl" :return "object" :args '("object")))))

(register-primitive-step1 "APPLY"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "Apply" :class "[LispBase]Lisp.Closure" :return "object" :args '("object" "object")))))

(register-primitive-step1 "SLOT-VALUE"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "SlotValueFromLisp" :class "[LispBase]Lisp.MopRuntime" :return "object" :args '("object" "object")))))

(register-primitive-step1 "SET-SLOT-VALUE"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (list (il:call :method "SetSlotValueFromLisp" :class "[LispBase]Lisp.MopRuntime" :return "object" :args '("object" "object" "object")))))

(register-primitive-step1 "%BREAK"
  (lambda (node operands)
    (declare (ignore node operands))
    (list (il:call :method "Break" :class "[mscorlib]System.Diagnostics.Debugger" :return "void" :args nil)
          (il:ldnull))))

(register-primitive-step1 "%SET-CELL-VALUE!"
  (lambda (node operands)
    (declare (ignore node))
    (mapc #'generate-step1 operands)
    (let ((temp (register-local (string (gensym "TEMP")))))
      (list (il:stloc temp)
            (il:castclass "[LispBase]Lisp.ValueCell")
            (il:ldloc temp)
            (il:stfld "object [LispBase]Lisp.ValueCell::Value")
            (il:ldloc temp)))))

;;; Step 1 Methods

(defmethod generate-step1 ((node ast-literal))
  (let ((val (ast-literal-value node)))
    (setf (ast-basic-block node)
          (typecase val
            (integer (list (il:ldc.i4 val) (il:box "int32")))
            (string (list (il:ldstr val)))
            (null (list (il:ldnull)))
            (t (load-symbol-il val))))))

(defmethod generate-step1 ((node ast-variable))
  (let* ((alpha (ast-variable-alpha-name node))
         (alpha-str (string alpha))
         (sanitized (sanitize-identifier alpha-str))
         (is-local (member sanitized *current-locals* :test #'string=))
         (pos (position alpha *current-lambda-params*)))
    (setf (ast-basic-block node)
          (cond
            ((typep node 'ast-global-variable)
             (register-global sanitized)
             (list (il:ldsfld (format nil "object Program::'~A'" sanitized))))
            (is-local
             (list (il:ldloc sanitized)))
            (pos
             (list (il:ldarg (if *current-lambda-class* (1+ pos) pos))))
            (t
             (register-global sanitized)
             (list (il:ldsfld (format nil "object Program::'~A'" sanitized))))))))

(defmethod generate-step1 ((node ast-if))
  (generate-step1 (ast-if-test node))
  (generate-step1 (ast-if-consequent node))
  (generate-step1 (ast-if-alternate node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-progn))
  (mapc #'generate-step1 (ast-progn-forms node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-setq))
  (generate-step1 (ast-setq-value node))
  (let* ((var (ast-setq-name node))
         (alpha (ast-variable-alpha-name var))
         (alpha-str (string alpha))
         (sanitized (sanitize-identifier alpha-str))
         (is-local (member sanitized *current-locals* :test #'string=))
         (pos (position alpha *current-lambda-params*)))
    (setf (ast-basic-block node)
          (cond
            ((typep var 'ast-global-variable)
             (register-global sanitized)
             (list (il:stsfld (format nil "object Program::'~A'" sanitized))))
            (is-local
             (list (il:stloc sanitized)))
            (pos
             (list (il:starg (if *current-lambda-class* (1+ pos) pos))))
            (t
             (register-local sanitized)
             (list (il:stloc sanitized)))))))

(defmethod generate-step1 ((node ast-let))
  (dolist (b (ast-let-bindings node))
    (generate-step1 (cadr b))
    (register-local (car b)))
  (mapc #'generate-step1 (ast-let-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-lambda))
  (let* ((req-params (ast-lambda-params node))
         (optionals (ast-lambda-optional-params node))
         (rest-param (ast-lambda-rest-param node))
         (key-params (ast-lambda-key-params node))
         (aux-params (ast-lambda-aux-params node))
         (opt-names (mapcar #'car optionals))
         (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
         (body-params (append req-params opt-names opt-supplied-names (when rest-param (list rest-param))))
         (*current-lambda-params* body-params)
         (*current-lambda-class* (sanitize-identifier (string (ast-lambda-lifted-name node)))))
    (dolist (opt optionals)
      (generate-step1 (second opt)))
    (dolist (key key-params)
      (register-local (second key))
      (when (fourth key) (register-local (fourth key)))
      (generate-step1 (third key)))
    (dolist (aux aux-params)
      (register-local (first aux))
      (generate-step1 (second aux)))
    (mapc #'generate-step1 (ast-lambda-body node))
    (setf (ast-basic-block node) nil)))

(defmethod generate-step1 ((node ast-class))
  (setf (ast-basic-block node) (list (il:ldnull))))

(defmethod generate-step1 ((node ast-method))
  (mapc #'generate-step1 (ast-method-body node))
  (setf (ast-basic-block node) (list (il:ldnull))))

(defmethod generate-step1 ((node ast-toplevel-defun))
  (let* ((req-params (ast-toplevel-defun-params node))
         (optionals (ast-toplevel-defun-optional-params node))
         (rest-param (ast-toplevel-defun-rest-param node))
         (key-params (ast-toplevel-defun-key-params node))
         (aux-params (ast-toplevel-defun-aux-params node))
         (opt-names (mapcar #'car optionals))
         (opt-supplied-names (loop for opt in optionals when (third opt) collect (third opt)))
         (body-params (append req-params opt-names opt-supplied-names (when rest-param (list rest-param))))
         (*current-lambda-params* body-params))
    (dolist (opt optionals)
      (generate-step1 (second opt)))
    (dolist (key key-params)
      (register-local (second key))
      (when (fourth key) (register-local (fourth key)))
      (generate-step1 (third key)))
    (dolist (aux aux-params)
      (register-local (first aux))
      (generate-step1 (second aux)))
    (mapc #'generate-step1 (ast-toplevel-defun-body node))
    (setf (ast-basic-block node) nil)))

(defmethod generate-step1 ((node ast-clr-call))
  (mapc #'generate-step1 (ast-clr-call-arguments node))
  (let* ((arg-types (or (ast-clr-call-arg-types node)
                       (make-list (length (ast-clr-call-arguments node)) :initial-element "object")))
         (ret-type (ast-clr-call-return-type node))
         (is-void (string-equal ret-type "void"))
         (is-primitive (or (string-equal ret-type "bool")
                           (string-equal ret-type "int32")
                           (string-equal ret-type "float64")
                           (string-equal ret-type "int64"))))
    (setf (ast-basic-block node)
          (append (list (il:call :method (ast-clr-call-method-name node)
                                 :class (ast-clr-call-type-name node)
                                 :return ret-type
                                 :args arg-types))
                  (if is-primitive (list (il:box (if (string-equal ret-type "bool") "[mscorlib]System.Boolean" ret-type))))
                  (when is-void (list (il:ldnull)))))))

(defmethod generate-step1 ((node ast-clr-call-virt))
  (generate-step1 (ast-clr-call-virt-instance node))
  (mapc #'generate-step1 (ast-clr-call-virt-arguments node))
  (let* ((arg-types (or (ast-clr-call-virt-arg-types node)
                       (make-list (length (ast-clr-call-virt-arguments node)) :initial-element "object")))
         (ret-type (ast-clr-call-virt-return-type node))
         (class-name (ast-clr-call-virt-type-name node))
         (is-void (string-equal ret-type "void"))
         (is-primitive (or (string-equal ret-type "bool")
                           (string-equal ret-type "int32")
                           (string-equal ret-type "float64")
                           (string-equal ret-type "int64"))))
    (let* ((args-eval-code nil)
           (instance-temp (register-local "CLR_VIRT_INST_TEMP"))
           (arg-temps (loop for a in (ast-clr-call-virt-arguments node)
                            collect (register-local (string (gensym "CLR_VIRT_ARG"))))))
      (loop for temp in (reverse arg-temps) do
            (push (il:stloc temp) args-eval-code))
      (setf (ast-basic-block node)
            (append args-eval-code
                    (list (il:castclass class-name))
                    (loop for temp in arg-temps collect (il:ldloc temp))
                    (list (il:callvirt :method (ast-clr-call-virt-method-name node)
                                       :class class-name
                                       :return ret-type
                                       :args arg-types))
                    (if is-primitive (list (il:box (if (string-equal ret-type "bool") "[mscorlib]System.Boolean" ret-type))))
                    (when is-void (list (il:ldnull))))))))

(defmethod generate-step1 ((node ast-clr-new))
  (mapc #'generate-step1 (ast-clr-new-arguments node))
  (let ((arg-types (or (ast-clr-new-arg-types node)
                      (make-list (length (ast-clr-new-arguments node)) :initial-element "object"))))
    (setf (ast-basic-block node)
          (list (il:newobj :method ".ctor"
                           :class (ast-clr-new-type-name node)
                           :return "instance void"
                           :args arg-types)))))

(defmethod generate-step1 ((node ast-clr-field))
  (if (ast-clr-field-instance node)
      (progn
        (generate-step1 (ast-clr-field-instance node))
        (setf (ast-basic-block node)
              (list (il:ldfld (format nil "object ~A::'~A'"
                                      (ast-clr-field-type-name node)
                                      (ast-clr-field-field-name node))))))
      (setf (ast-basic-block node)
            (list (il:ldsfld (format nil "object ~A::'~A'"
                                     (ast-clr-field-type-name node)
                                     (ast-clr-field-field-name node)))))))

(defmethod generate-step1 ((node ast-dotnet-static-call))
  (let* ((method-name (ast-dotnet-static-call-method-name node))
         (dot-pos (position #\. method-name :from-end t))
         (type-name (subseq method-name 0 dot-pos))
         (method (subseq method-name (1+ dot-pos)))
         (n-args (length (ast-dotnet-static-call-arguments node))))
    (mapc #'generate-step1 (ast-dotnet-static-call-arguments node))
    (let ((args-array-temp (register-local "ARGS_TEMP")))
      (setf (ast-basic-block node)
            (append
             (list (il:ldc.i4 n-args)
                   (il:newarr "[mscorlib]System.Object")
                   (il:stloc args-array-temp))
             (loop for i from (1- n-args) downto 0
                   append (list (il:stloc "TEMP_ARG")
                                (il:ldloc args-array-temp)
                                (il:ldc.i4 i)
                                (il:ldloc "TEMP_ARG")
                                (il:stelem.ref)))
             (list (il:ldstr type-name)
                   (il:ldstr method)
                   (il:ldloc args-array-temp)
                   (il:call :method "StaticCall" :class "[LispBase]Lisp.Interop" :return "object" :args '("string" "string" "object[]"))))))))

(defmethod generate-step1 ((node ast-dotnet-instance-call))
  (let* ((method-name (ast-dotnet-instance-call-method-name node))
         (n-args (length (ast-dotnet-instance-call-arguments node))))
    (generate-step1 (ast-dotnet-instance-call-instance node))
    (mapc #'generate-step1 (ast-dotnet-instance-call-arguments node))
    (let ((args-array-temp (register-local "ARGS_TEMP"))
          (instance-temp (register-local "INST_TEMP"))
          (arg-temp (register-local "TEMP_ARG")))
      (setf (ast-basic-block node)
            (append
             (list (il:ldc.i4 n-args)
                   (il:newarr "[mscorlib]System.Object")
                   (il:stloc args-array-temp))
             (loop for i from (1- n-args) downto 0
                   append (list (il:stloc arg-temp)
                                (il:ldloc args-array-temp)
                                (il:ldc.i4 i)
                                (il:ldloc arg-temp)
                                (il:stelem.ref)))
             (list (il:stloc instance-temp)
                   (il:ldstr method-name)
                   (il:ldloc instance-temp)
                   (il:ldloc args-array-temp)
                   (il:call :method "InstanceCall" :class "[LispBase]Lisp.Interop" :return "object" :args '("string" "object" "object[]"))))))))

(defmethod generate-step1 ((node ast-dotnet-property))
  (setf (ast-basic-block node)
        (list (il:ldstr (ast-dotnet-property-name node))
              (il:call :method "GetStaticProperty" :class "[LispBase]Lisp.Interop" :return "object" :args '("string")))))

(defmethod generate-step1 ((node ast-dotnet-instance-property))
  (generate-step1 (ast-dotnet-instance-property-instance node))
  (let ((inst-temp (register-local "INST_TEMP")))
    (setf (ast-basic-block node)
          (list (il:stloc inst-temp)
                (il:ldstr (ast-dotnet-instance-property-name node))
                (il:ldloc inst-temp)
                (il:call :method "GetInstanceProperty" :class "[LispBase]Lisp.Interop" :return "object" :args '("string" "object"))))))

(defmethod generate-step1 ((node ast-dotnet-field))
  (setf (ast-basic-block node)
        (list (il:ldstr (ast-dotnet-field-name node))
              (il:call :method "GetStaticField" :class "[LispBase]Lisp.Interop" :return "object" :args '("string")))))

(defmethod generate-step1 ((node ast-dotnet-instance-field))
  (generate-step1 (ast-dotnet-instance-field-instance node))
  (let ((inst-temp (register-local "INST_TEMP")))
    (setf (ast-basic-block node)
          (list (il:stloc inst-temp)
                (il:ldstr (ast-dotnet-instance-field-name node))
                (il:ldloc inst-temp)
                (il:call :method "GetInstanceField" :class "[LispBase]Lisp.Interop" :return "object" :args '("string" "object"))))))

(defmethod generate-step1 ((node ast-tagbody))
  (mapc #'generate-step1 (ast-tagbody-statements node)))

(defmethod generate-step1 ((node ast-go))
  (setf (ast-basic-block node) (list (il:leave (sanitize-identifier (ast-go-tag-label node))))))

(defmethod generate-step1 ((node ast-label))
  (setf (ast-basic-block node) (list (il:nop :label (sanitize-identifier (ast-label-label node))))))

(defmethod generate-step1 ((node ast-unwind-protect))
  (let ((temp (register-local (string (gensym "UWP_RESULT")))))
    (setf (ast-unwind-protect-result-temp node) temp))
  ;; Side-channel save/restore locals
  (setf (ast-unwind-protect-count-temp node) (register-local (string (gensym "UWP_COUNT"))))
  (setf (ast-unwind-protect-extra-temps node)
        (loop for i from 1 below 64
              collect (register-local (string (gensym (format nil "UWP_V~D" i))))))
  (generate-step1 (ast-unwind-protect-protected-form node))
  (mapc #'generate-step1 (ast-unwind-protect-cleanup-forms node))
  (setf (ast-basic-block node) nil))

(defun block-needs-result-temp-p (node)
  (let ((target-label (ast-block-end-label node))
        (found nil))
    (labels ((scan (n)
               (when found (return-from scan))
               (typecase n
                 (ast-return-from 
                  (if (string-equal (ast-return-from-target-label n) target-label)
                      (setf found t)
                      (scan (ast-return-from-value n))))
                 (t (map-ast-children #'scan n)))))
      (mapc #'scan (ast-block-body node))
      found)))

(defmethod generate-step1 ((node ast-block))
  (let ((needs-temp (block-needs-result-temp-p node)))
    (when needs-temp
      (register-local (ast-block-result-temp node))))
  (mapc #'generate-step1 (ast-block-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-return-from))
  (generate-step1 (ast-return-from-value node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-catch))
  (setf (ast-catch-tag-temp node) (register-local (string (gensym "CATCH_TAG"))))
  (setf (ast-catch-result-temp node) (register-local (string (gensym "CATCH_RESULT"))))
  (generate-step1 (ast-catch-tag node))
  (mapc #'generate-step1 (ast-catch-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-throw))
  (generate-step1 (ast-throw-tag node))
  (generate-step1 (ast-throw-value node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-values))
  (let* ((values (ast-values-values node))
         (n (length values)))
    (when (> n 1)
      (setf (ast-values-temps node)
            (loop for i from 1 below (min n 64)
                  collect (register-local (gensym (format nil "VALUES_TEMP_~D" i))))))
    (mapc #'generate-step1 values)
    (setf (ast-basic-block node) nil)))

(defmethod generate-step1 ((node ast-multiple-value-bind))
  (dolist (v (ast-multiple-value-bind-vars node))
    (register-local (string v)))
  (generate-step1 (ast-multiple-value-bind-values-form node))
  (mapc #'generate-step1 (ast-multiple-value-bind-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-multiple-value-call))
  (setf (ast-multiple-value-call-fn-temp node) (register-local (string (gensym "MVC_FN"))))
  (setf (ast-multiple-value-call-list-temp node) (register-local (string (gensym "MVC_LIST"))))
  (generate-step1 (ast-multiple-value-call-function-form node))
  (mapc #'generate-step1 (ast-multiple-value-call-arguments-forms node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-multiple-value-prog1))
  (setf (ast-multiple-value-prog1-result-temp node) (register-local (string (gensym "MV_PROG1_RES"))))
  (setf (ast-multiple-value-prog1-count-temp node) (register-local (string (gensym "MV_PROG1_COUNT"))))
  (setf (ast-multiple-value-prog1-extra-temps node)
        (loop for i from 1 below 64
              collect (register-local (string (gensym (format nil "MV_PROG1_V~D" i))))))
  (generate-step1 (ast-multiple-value-prog1-first-form node))
  (mapc #'generate-step1 (ast-multiple-value-prog1-other-forms node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-restart-bind))
  (setf (ast-restart-bind-saved-restarts-temp node) (register-local (string (gensym "SAVED_RESTARTS"))))
  (setf (ast-restart-bind-restarts-list-temp node) (register-local (string (gensym "RESTARTS_LIST"))))
  (setf (ast-restart-bind-result-temp node) (register-local (string (gensym "RESTART_BIND_RESULT"))))
  (dolist (b (ast-restart-bind-bindings node))
    (generate-step1 (first b)) ; restart name
    (generate-step1 (second b)) ; function
    (generate-step1 (third b)) ; report
    (generate-step1 (fourth b)) ; interactive
    (generate-step1 (fifth b))) ; test
  (mapc #'generate-step1 (ast-restart-bind-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-handler-bind))
  (setf (ast-handler-bind-saved-handlers-temp node) (register-local (string (gensym "SAVED_HANDLERS"))))
  (setf (ast-handler-bind-handlers-list-temp node) (register-local (string (gensym "HANDLERS_LIST"))))
  (setf (ast-handler-bind-result-temp node) (register-local (string (gensym "HANDLER_BIND_RESULT"))))
  (dolist (b (ast-handler-bind-bindings node))
    (generate-step1 (car b))    ; type
    (generate-step1 (second b))) ; function
  (mapc #'generate-step1 (ast-handler-bind-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-reflection))
  (mapc #'generate-step1 (ast-reflection-arguments node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-application))
  (let ((operator (ast-application-operator node))
        (operands (ast-application-operands node)))
    (if (and (typep operator 'ast-global-variable)
             (eq (ast-variable-name operator) '.ctor))
        (progn
          (mapc #'generate-step1 (cdr operands))
          (let ((cls (car operands)))
            (setf (ast-basic-block node)
                  (list (il:newobj :method ".ctor"
                                   :class (if (typep cls 'ast-literal) (format nil "~A" (ast-literal-value cls)) (string (ast-variable-name cls)))
                                   :return "instance void"
                                   :args (make-list (length (cdr operands)) :initial-element "object"))))))
        (let ((name (when (typep operator 'ast-global-variable)
                      (symbol-name (ast-variable-name operator)))))
          (let ((handler (when name (lookup-primitive-step1 name))))
            (if handler
                (setf (ast-basic-block node) (funcall handler node operands))
                (if (and name (member (ast-variable-name operator) *toplevel-defuns* :test #'eq))
                    (progn
                      (mapc #'generate-step1 operands)
                      (setf (ast-basic-block node)
                            (list (il:call :method (sanitize-identifier (string (ast-variable-name operator)))
                                           :class "Program"
                                           :return "object"
                                           :args (make-list (length operands) :initial-element "object")))))
                    (progn
                      (generate-step1 operator)
                      (mapc #'generate-step1 operands)
                      (setf (ast-basic-block node)
                            (list (il:callvirt :method "Invoke" :class "[LispBase]Lisp.Closure" :return "instance object" :args (make-list (length operands) :initial-element "object"))))))))))))
