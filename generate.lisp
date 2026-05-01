;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; ===========================================================================
;;; Step 1: Create basic blocks of instructions for straight-line code and
;;; annotate the AST with the basic blocks.
;;; ===========================================================================

(defvar *current-lambda-class* nil)
(defvar *current-locals* nil)
(defvar *current-lambda-params* nil)
(defvar *current-lambda-free-vars* nil)
(defvar *global-variables* nil)
(defvar *quoted-symbols* nil)
(defvar *toplevel-defuns* nil)

(defun register-local (name)
  (pushnew name *current-locals* :test #'string=))

(defun register-global (name)
  (pushnew name *global-variables* :test #'string=))

(defgeneric generate-step1 (node)
  (:documentation "Generates straight-line instructions for the given AST node and assigns it to the node's basic-block."))

(defmethod generate-step1 ((node ast-literal))
  (let ((val (ast-literal-value node)))
    (setf (ast-basic-block node)
          (typecase val
            (integer (list (il:ldc.i4 val) (il:box "int32")))
            (string (list (il:ldstr val)))
            (null (list (il:ldnull)))
            (t (list (il:ldstr (format nil "~A" val))))))))

(defmethod generate-step1 ((node ast-variable))
  (let* ((alpha (ast-variable-alpha-name node))
         (alpha-str (string alpha))
         (is-local (member alpha-str *current-locals* :test #'string=))
         (pos (position alpha *current-lambda-params*)))
    (setf (ast-basic-block node)
          (cond
            ((typep node 'ast-global-variable)
             (let ((gname (substitute #\_ #\- alpha-str)))
               (register-global gname)
               (list (il:ldsfld (format nil "object Program::'~A'" gname)))))
            (is-local
             (list (il:ldloc (substitute #\_ #\- alpha-str))))
            (pos
             (list (il:ldarg (if *current-lambda-class* (1+ pos) pos))))
            (t
             (let ((gname (substitute #\_ #\- alpha-str)))
               (register-global gname)
               (list (il:ldsfld (format nil "object Program::'~A'" gname)))))))))

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
         (is-local (member alpha-str *current-locals* :test #'string=))
         (pos (position alpha *current-lambda-params*)))
    (setf (ast-basic-block node)
          (cond
            ((typep var 'ast-global-variable)
             (let ((gname (substitute #\_ #\- alpha-str)))
               (register-global gname)
               (list (il:stsfld (format nil "object Program::'~A'" gname)))))
            (is-local
             (list (il:stloc (substitute #\_ #\- alpha-str))))
            (pos
             (list (il:starg (if *current-lambda-class* (1+ pos) pos))))
            (t
             (register-local alpha-str)
             (list (il:stloc (substitute #\_ #\- alpha-str))))))))

(defmethod generate-step1 ((node ast-let))
  (dolist (b (ast-let-bindings node))
    (generate-step1 (cadr b))
    (register-local (string (car b))))
  (mapc #'generate-step1 (ast-let-body node))
  (setf (ast-basic-block node) nil))

(defmethod generate-step1 ((node ast-lambda))
  (let ((*current-lambda-params* (ast-lambda-params node))
        (*current-lambda-class* (string (ast-lambda-lifted-name node))))
    (mapc #'generate-step1 (ast-lambda-body node))
    (setf (ast-basic-block node) nil)))


(defmethod generate-step1 ((node ast-class))
  (setf (ast-basic-block node) (list (il:ldnull))))

(defmethod generate-step1 ((node ast-method))
  (mapc #'generate-step1 (ast-method-body node))
  (setf (ast-basic-block node) (list (il:ldnull))))

(defmethod generate-step1 ((node ast-toplevel-defun))
  (let ((*current-lambda-params* (ast-toplevel-defun-params node)))
    (mapc #'generate-step1 (ast-toplevel-defun-body node))
    (setf (ast-basic-block node) nil)))

(defmethod generate-step1 ((node ast-clr-call))
  (mapc #'generate-step1 (ast-clr-call-arguments node))
  (let* ((arg-types (or (ast-clr-call-arg-types node)
                       (make-list (length (ast-clr-call-arguments node)) :initial-element "object")))
         (ret-type (ast-clr-call-return-type node))
         (is-void (string-equal ret-type "void")))
    (setf (ast-basic-block node)
          (append (list (il:call :method (ast-clr-call-method-name node)
                                 :class (ast-clr-call-type-name node)
                                 :return ret-type
                                 :args arg-types))
                  (when is-void (list (il:ldnull)))))))

(defmethod generate-step1 ((node ast-clr-call-virt))
  (generate-step1 (ast-clr-call-virt-instance node))
  (mapc #'generate-step1 (ast-clr-call-virt-arguments node))
  (let* ((arg-types (or (ast-clr-call-virt-arg-types node)
                       (make-list (length (ast-clr-call-virt-arguments node)) :initial-element "object")))
         (ret-type (ast-clr-call-virt-return-type node))
         (is-void (string-equal ret-type "void")))
    (setf (ast-basic-block node)
          (append (list (il:callvirt :method (ast-clr-call-virt-method-name node)
                                     :class (ast-clr-call-virt-type-name node)
                                     :return ret-type
                                     :args arg-types))
                  (when is-void (list (il:ldnull)))))))


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



(defmethod generate-step1 ((node ast-application))
  (let ((operator (ast-application-operator node)))
    (cond
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '.ctor))
       (let* ((lifted-var (car (ast-application-operands node)))
              (free-vars (cdr (ast-application-operands node)))
              (class-name (string (ast-variable-name lifted-var)))
              (arg-types (make-list (length free-vars) :initial-element "object")))
         (mapc #'generate-step1 free-vars)
         (setf (ast-basic-block node)
               (list (il:newobj :method ".ctor" :class class-name :return "instance void" :args arg-types)))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%write-line)
                (eq (ast-variable-name operator) '%write-object)
                (eq (ast-variable-name operator) 'print)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:call :method "WriteLine" :class "[mscorlib]System.Console" :return "void" :args '("object"))
                     (il:ldnull)))))
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '%write-int))

       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:unbox.any "int32")
                     (il:call :method "WriteLine" :class "[mscorlib]System.Console" :return "void" :args '("int32"))
                     (il:ldnull)))))
      ((and (typep operator 'ast-global-variable)
            (member (ast-variable-name operator) *toplevel-defuns* :test #'eq))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let* ((name (substitute #\_ #\- (string (ast-variable-name operator))))
                (n-args (length (ast-application-operands node)))
                (arg-types (make-list n-args :initial-element "object")))
           (setf (ast-basic-block node)
                 (list (il:call :method name :class "Program" :return "object" :args arg-types))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%sub)
                (eq (ast-variable-name operator) '-)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (register-local "TEMP_B")
         (setf (ast-basic-block node)
               (list (il:stloc "TEMP_B")
                     (il:unbox.any "int32") ; a
                     (il:ldloc "TEMP_B")
                     (il:unbox.any "int32") ; b
                     (il:sub)
                     (il:box "int32")))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%add)
                (eq (ast-variable-name operator) '+)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (register-local "TEMP_B")
         (setf (ast-basic-block node)
               (list (il:stloc "TEMP_B")
                     (il:unbox.any "int32") ; a
                     (il:ldloc "TEMP_B")
                     (il:unbox.any "int32") ; b
                     (il:add)
                     (il:box "int32")))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%lessp)
                (eq (ast-variable-name operator) '<)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (register-local "TEMP_B")
         (let ((true-label (string (gensym "TRUE")))
               (end-label (string (gensym "END"))))
           (setf (ast-basic-block node)
                 (list (il:stloc "TEMP_B")
                       (il:unbox.any "int32") ; a
                       (il:ldloc "TEMP_B")
                       (il:unbox.any "int32") ; b
                       (il:clt)
                       (il:brtrue true-label)
                       (il:ldnull)
                       (il:br end-label)
                       (il:nop :label true-label)
                       (il:ldstr "T")
                       (il:nop :label end-label))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%not)
                (eq (ast-variable-name operator) 'not)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let ((true-label (string (gensym "TRUE")))
               (end-label (string (gensym "END"))))
           (setf (ast-basic-block node)
                 (list (il:ldnull)
                       (il:ceq)
                       (il:brtrue true-label)
                       (il:ldnull)
                       (il:br end-label)
                       (il:nop :label true-label)
                       (il:ldstr "T")
                       (il:nop :label end-label))))))
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '%make-cell))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.ValueCell" :return "instance void" :args '("object"))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%cons)
                (eq (ast-variable-name operator) 'cons)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:newobj :method ".ctor" :class "[LispBase]Lisp.List/ListCell" :return "instance void" :args '("object" "object"))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%car)
                (eq (ast-variable-name operator) 'car)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:castclass "[LispBase]Lisp.List/ListCell")
                     (il:ldfld "object [LispBase]Lisp.List/ListCell::first")))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%cdr)
                (eq (ast-variable-name operator) 'cdr)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:castclass "[LispBase]Lisp.List/ListCell")
                     (il:ldfld "object [LispBase]Lisp.List/ListCell::rest")))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%eq)
                (eq (ast-variable-name operator) 'eq)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let ((true-label (string (gensym "TRUE")))
               (end-label (string (gensym "END"))))
           (setf (ast-basic-block node)
                 (list (il:callvirt :method "Equals" :class "[mscorlib]System.Object" :return "instance bool" :args '("object"))
                       (il:brtrue true-label)
                       (il:ldnull)
                       (il:br end-label)
                       (il:nop :label true-label)
                       (il:ldstr "T")
                       (il:nop :label end-label))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%null)
                (eq (ast-variable-name operator) 'null)))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let ((true-label (string (gensym "TRUE")))
               (end-label (string (gensym "END"))))
           (setf (ast-basic-block node)
                 (list (il:ldnull)
                       (il:ceq)
                       (il:brtrue true-label)
                       (il:ldnull)
                       (il:br end-label)
                       (il:nop :label true-label)
                       (il:ldstr "T")
                       (il:nop :label end-label))))))
      ((and (typep operator 'ast-global-variable)
            (or (eq (ast-variable-name operator) '%consp)
                (eq (ast-variable-name operator) 'consp)))

       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let ((true-label (string (gensym "TRUE")))
               (end-label (string (gensym "END"))))
           (setf (ast-basic-block node)
                 (list (il:isinst "[LispBase]Lisp.List/ListCell")
                       (il:ldnull)
                       (il:cgt.un)
                       (il:brtrue true-label)
                       (il:ldnull)
                       (il:br end-label)
                       (il:nop :label true-label)
                       (il:ldstr "T")
                       (il:nop :label end-label))))))
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '%cell-value))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (setf (ast-basic-block node)
               (list (il:castclass "[LispBase]Lisp.ValueCell")
                     (il:ldfld "object [LispBase]Lisp.ValueCell::Value")))))
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '%intern))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let* ((sym-name-node (car (ast-application-operands node)))
                (sym-name (ast-literal-value sym-name-node))
                (field-name (cdr (assoc sym-name *quoted-symbols* :test #'string=))))
           (unless field-name
             (setf field-name (format nil "SYM_~A" (gensym)))
             (push (cons sym-name field-name) *quoted-symbols*))
           (setf (ast-basic-block node)
                 (list (il:ldsfld (format nil "class [LispBase]Lisp.Symbol Program::'~A'" field-name)))))))     
      ((and (typep operator 'ast-global-variable)
            (eq (ast-variable-name operator) '%set-cell-value!))
       (progn
         (mapc #'generate-step1 (ast-application-operands node))
         (let ((temp (string (gensym "TEMP"))))
           (register-local temp)
           (setf (ast-basic-block node)
                 (list (il:stloc (substitute #\_ #\- temp))
                       (il:castclass "[LispBase]Lisp.ValueCell")
                       (il:ldloc (substitute #\_ #\- temp))
                       (il:stfld "object [LispBase]Lisp.ValueCell::Value")
                       (il:ldloc (substitute #\_ #\- temp)))))))
      (t
       (progn
         (generate-step1 operator)
         (mapc #'generate-step1 (ast-application-operands node))
         ;; standard call virt. assume LispFunction for now
         (setf (ast-basic-block node)
               (list (il:callvirt :method "Invoke" :class "[LispBase]Lisp.Closure" :return "instance object" :args (make-list (length (ast-application-operands node)) :initial-element "object")))))))))

;;; ===========================================================================
;;; Step 2: Stitch together the basic blocks with conditional and control flow
;;; instructions and labels.
;;; ===========================================================================

(defgeneric generate-step2 (node &optional tail-p)
  (:documentation "Stitches basic blocks with control flow instructions and returns the combined list of instructions. If tail-p is true, appends ret and sets tail prefixes."))

(defmethod generate-step2 ((node ast-literal) &optional tail-p)
  (let ((code (ast-basic-block node)))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-variable) &optional tail-p)
  (let* ((alpha (ast-variable-alpha-name node))
         (alpha-str (string alpha))
         (block
          (cond
            ;; If it's a free variable of the current lambda, it's a field in the closure
            ((and *current-lambda-class* (member alpha *current-lambda-free-vars*))
             (list (il:ldarg.0)
                   (il:ldfld (format nil "object ~A::'~A'" *current-lambda-class* alpha-str))))
            ;; Otherwise, it's a parameter, local, or global. Use the step1 generated block.
            (t (ast-basic-block node)))))
    (if tail-p (append block (list (il:ret))) block)))

(defmethod generate-step2 ((node ast-if) &optional tail-p)
  (let* ((test-code (generate-step2 (ast-if-test node) nil))
         (then-code (generate-step2 (ast-if-consequent node) tail-p))
         (else-code (generate-step2 (ast-if-alternate node) tail-p))
         (else-label (string (gensym "ELSE"))))
    (if tail-p
        (append test-code
                (list (il:ldnull)
                      (il:ceq)
                      (il:brtrue else-label))
                then-code
                (list (il:nop :label else-label))
                else-code)
        (let ((end-label (string (gensym "END"))))
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
        (loop for form in forms
              for i from 1
              for is-last = (= i (length forms))
              for code = (generate-step2 form (if is-last tail-p nil))
              append code
              when (and (not is-last) code)
                append (list (il:pop))))))


(defmethod generate-step2 ((node ast-setq) &optional tail-p)
  (let* ((var (ast-setq-name node))
         (alpha (ast-variable-alpha-name var))
         (alpha-str (string alpha))
         (store-code
          (cond
            ((and *current-lambda-class* (member alpha *current-lambda-free-vars*))
             (let ((temp (string (gensym "TEMP"))))
               (register-local temp)
               (list (il:stloc temp)
                     (il:ldarg.0)
                     (il:ldloc temp)
                     (il:stfld (format nil "object ~A::'~A'" *current-lambda-class* alpha-str))
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
                                                 (list (il:stloc (substitute #\_ #\- (string (car b)))))))      
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
  (let* ((*current-lambda-class* (string (ast-lambda-lifted-name node)))
         (*current-lambda-free-vars* (ast-lambda-free-vars node))
         (*current-lambda-params* (ast-lambda-params node))
         (forms (ast-lambda-body node))
         (body-code (if (null forms)
                        (list (il:ldnull) (il:ret))
                        (loop for form in forms
                              for i from 1
                              for is-last = (= i (length forms))
                              append (generate-step2 form is-last)
                              when (not is-last)
                                append (list (il:pop))))))
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

(defmethod generate-step2 ((node ast-clr-field) &optional tail-p)
  (let* ((instance-code (if (ast-clr-field-instance node)
                            (generate-step2 (ast-clr-field-instance node) nil)
                            nil))
         (code (append instance-code (ast-basic-block node))))
    (if tail-p (append code (list (il:ret))) code)))

(defmethod generate-step2 ((node ast-toplevel-defun) &optional tail-p)
  (let* ((*current-lambda-params* (ast-toplevel-defun-params node))
         (forms (ast-toplevel-defun-body node))
         (body-code (if (null forms)
                        (list (il:ldnull) (il:ret))
                        (loop for form in forms
                              for i from 1
                              for is-last = (= i (length forms))
                              append (generate-step2 form is-last)
                              when (not is-last)
                                append (list (il:pop))))))
    (setf (ast-basic-block node) body-code)
    body-code))



(defmethod generate-step2 ((node ast-application) &optional tail-p)
  (let ((operator (ast-application-operator node)))
    (if (and (typep operator 'ast-global-variable)
             (eq (ast-variable-name operator) '.ctor))
        ;; constructor call.
        (let* ((free-vars (cdr (ast-application-operands node)))
               (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) free-vars))))        
          (let ((code (append operands-code (ast-basic-block node))))
            (if tail-p (append code (list (il:ret))) code)))
        (if (and (typep operator 'ast-global-variable)
                 (or (eq (ast-variable-name operator) '%write-line)
                     (eq (ast-variable-name operator) '%write-object)
                     (eq (ast-variable-name operator) '%write-int)
                     (eq (ast-variable-name operator) 'print)
                     (eq (ast-variable-name operator) '%sub)
                     (eq (ast-variable-name operator) '-)
                     (eq (ast-variable-name operator) '%add)
                     (eq (ast-variable-name operator) '+)
                     (eq (ast-variable-name operator) '%lessp)
                     (eq (ast-variable-name operator) '<)
                     (eq (ast-variable-name operator) '%not)
                     (eq (ast-variable-name operator) 'not)
                     (eq (ast-variable-name operator) '%cons)
                     (eq (ast-variable-name operator) 'cons)
                     (eq (ast-variable-name operator) '%car)
                     (eq (ast-variable-name operator) 'car)
                     (eq (ast-variable-name operator) '%cdr)
                     (eq (ast-variable-name operator) 'cdr)
                     (eq (ast-variable-name operator) '%eq)
                     (eq (ast-variable-name operator) 'eq)
                     (eq (ast-variable-name operator) '%null)
                     (eq (ast-variable-name operator) 'null)
                     (eq (ast-variable-name operator) '%consp)
                     (eq (ast-variable-name operator) 'consp)
                     (eq (ast-variable-name operator) '%make-cell)
                     (eq (ast-variable-name operator) '%cell-value)
                     (eq (ast-variable-name operator) '%set-cell-value!)
                     (member (ast-variable-name operator) *toplevel-defuns* :test #'eq)))

            (let* ((operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-application-operands node))))
                   (code (append operands-code (ast-basic-block node))))
              (if tail-p (append code (list (il:ret))) code))
            (if (and (typep operator 'ast-global-variable)
                     (eq (ast-variable-name operator) '%intern))
                (let ((code (ast-basic-block node)))
                  (if tail-p (append code (list (il:ret))) code))
                (let ((operator-code (generate-step2 operator nil))
                      (operands-code (reduce #'append (mapcar (lambda (v) (generate-step2 v nil)) (ast-application-operands node))))
                      (bb (ast-basic-block node)))
                  (let ((code (append operator-code (list (il:castclass "[LispBase]Lisp.Closure")) operands-code bb)))
                    (if tail-p (append code (list (il:ret))) code))))))))

;;; ===========================================================================
;;; Main Entry Point
;;; ===========================================================================

(defun generate (ast)
  "Code generator entry point. Performs two steps:
   1. Creates basic blocks for straight-line code.
   2. Stitches blocks with control flow.
   Returns the final list of stitched instructions."
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
         (name-str (substitute #\_ #\- (string name)))
         (accessor (when (consp slot-spec) (getf (cdr slot-spec) :accessor)))
         (accessor-str (when accessor (substitute #\_ #\- (string accessor))))
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

(defun generate-assembly (ast lambdas assembly-name &key toplevel-defuns)
  "Generates a complete CIL Assembly containing the main program and lifted lambda closures."
  (let ((classes nil)
        (*global-variables* nil)
        (*quoted-symbols* nil))
    ;; Generate .runtimeconfig.json for .NET 8.0
    (with-open-file (stream (format nil "~A.runtimeconfig.json" assembly-name) 
                            :direction :output :if-exists :supersede)
      (format stream "{~%  \"runtimeOptions\": {~%    \"tfm\": \"net8.0\",~%    \"framework\": {~%      \"name\": \"Microsoft.NETCore.App\",~%      \"version\": \"8.0.0\"~%    }~%  }~%}")
      (format t "Generated ~A.runtimeconfig.json successfully.~%" assembly-name))

    ;; Generate user-defined classes
    (dolist (defclass-node (extract-classes ast))
      (let* ((name (string (ast-class-name defclass-node)))
             (parent (if (ast-class-superclasses defclass-node)
                         (string (car (ast-class-superclasses defclass-node)))
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
          (let ((cls (il:class :name name :parent parent :fields fields :properties properties :methods methods)))
            (push cls classes)))))
    
    ;; For each lifted lambda, create a class
    (dolist (lifted lambdas)
      (let* ((name (string (car lifted)))
             (lambda-node (cdr lifted))
             (free-vars (ast-lambda-free-vars lambda-node))
             (fields (mapcar (lambda (v) (il:field :name (string v) :type "object")) free-vars))
             (ctor-insts (append
                          (list (il:ldarg.0)
                                (il:call :method ".ctor" :class "[mscorlib]System.Object" :return "instance void" :args nil))
                          (loop for i from 0 below (length free-vars)
                                for v in free-vars
                                append (list (il:ldarg.0)
                                             (il:ldarg (1+ i))
                                             (il:stfld (format nil "object ~A::'~A'" name (string v)))))
                          (list (il:ret))))
             (ctor (il:method :name ".ctor"
                              :return-type "void"
                              :arg-types (make-list (length free-vars) :initial-element "object")
                              :instructions ctor-insts))
             (n-params (length (ast-lambda-params lambda-node)))
             (methods (list ctor)))
        (multiple-value-bind (block locals) (generate lambda-node)
          (loop for m from 0 to 8 do
            (let ((invoke-arg-types (make-list m :initial-element "object")))
              (push (il:method :name "Invoke"
                               :return-type "object"
                               :arg-types invoke-arg-types
                               :locals (if (= m n-params)
                                           (mapcar (lambda (loc) (format nil "object ~A" (substitute #\_ #\- loc))) locals)
                                           nil)
                               :virtual-p t
                               :instructions (if (= m n-params)
                                                 block
                                                 (list (il:ldnull) (il:ret))))
                    methods))))
        (let ((cls (il:class :name name :parent "[LispBase]Lisp.Closure" :fields fields :methods (reverse methods))))
          (push cls classes))))
    
    ;; Top-level static methods for DEFUNs
    (let ((toplevel-methods nil))
      (dolist (defun-node toplevel-defuns)
        (let* ((name (substitute #\_ #\- (string (ast-toplevel-defun-name defun-node))))
               (params (ast-toplevel-defun-params defun-node)))
          (multiple-value-bind (block locals) (generate defun-node)
            (let ((method (il:method :name name
                                     :return-type "object"
                                     :arg-types (make-list (length params) :initial-element "object")
                                     :locals (mapcar (lambda (loc) (format nil "object ~A" (substitute #\_ #\- loc))) locals)
                                     :instructions block
                                     :visibility :public
                                     :static-p t)))
              (push method toplevel-methods)))))

      ;; Main program method
      (multiple-value-bind (main-insts locals) (generate ast)
        (let* ((main-insts-final (append main-insts (list (il:pop) (il:ret))))
               (main-method (il:method :name "Main"
                                       :static-p t
                                       :locals (mapcar (lambda (loc) (format nil "object ~A" (substitute #\_ #\- loc))) locals)
                                       :entrypoint-p t
                                       :instructions main-insts-final))

               (prog-fields (append
                             (mapcar (lambda (g) (il:field :name g :type "object" :static-p t)) *global-variables*)
                             (mapcar (lambda (sym) (il:field :name (cdr sym) :type "class [LispBase]Lisp.Symbol" :static-p t)) *quoted-symbols*)))
               (cctor-insts (loop for (sym-name . field-name) in *quoted-symbols*
                                  append (list
                                          (il:call :method "get_Current" :class "[LispBase]Lisp.Package" :return "class [LispBase]Lisp.Package" :args nil)
                                          (il:ldstr sym-name)
                                          (il:callvirt :method "Intern" :class "[LispBase]Lisp.Package" :return "class [LispBase]Lisp.Symbol" :args '("string"))
                                          (il:stsfld (format nil "class [LispBase]Lisp.Symbol Program::'~A'" field-name)))))
               (cctor-method (when cctor-insts
                               (il:method :name ".cctor"
                                          :static-p t
                                          :specialname-p t
                                          :rtspecialname-p t
                                          :return-type "void"
                                          :arg-types nil
                                          :instructions (append cctor-insts (list (il:ret))))))
               (main-cls (il:class :name "Program" 
                                   :fields prog-fields 
                                   :methods (append (if cctor-method (list cctor-method) nil)
                                                    toplevel-methods
                                                    (list main-method)))))
          (push main-cls classes))))
      
    (il:assembly :name assembly-name :externs '("mscorlib" "LispBase") :classes classes)))

;;; ===========================================================================
;;; Compiler Entry Point
;;; ===========================================================================

(defun compile-file (input-file &key output-file &allow-other-keys)
  "Compiles a Lisp file to a CIL Assembly and executable. Shadows CL:COMPILE-FILE."
  (let* ((input-path (pathname input-file))
         (assembly-name (or output-file (pathname-name input-path)))
         (forms (with-open-file (stream input-path)
                  (let ((*package* *package*))
                    (loop for form = (read stream nil :eof)
                          until (eq form :eof)
                          if (and (consp form) (string-equal (symbol-name (car form)) "IN-PACKAGE"))
                            do (eval form)
                          else
                            collect form))))
         (toplevel-defun-forms nil)
         (other-forms nil))
    (labels ((extract-defuns (f)
               (cond ((and (consp f) (string-equal (symbol-name (car f)) "DEFUN"))
                      (push f toplevel-defun-forms))
                     ((and (consp f) (string-equal (symbol-name (car f)) "PROGN"))
                      (mapc #'extract-defuns (cdr f)))
                     (t (push f other-forms)))))
      (mapc #'extract-defuns forms))
    (let* ((*toplevel-defuns* (mapcar #'second toplevel-defun-forms))
           (toplevel-defun-nodes (mapcar (lambda (f) (lisp->ast f)) (nreverse toplevel-defun-forms)))
           (main-ast (lisp->ast `(progn ,@(nreverse other-forms))))
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
            (setf final-defuns (nreverse final-defuns))
            (generate lifted-main)
            (dolist (d final-defuns) (generate d))
            (dolist (l all-lambdas) (generate (cdr l)))
            (let ((asm (generate-assembly lifted-main all-lambdas assembly-name :toplevel-defuns final-defuns)))
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
              
              (uiop:run-program (list "dotnet.exe" "publish" (format nil "~A.ilproj" assembly-name) "-c" "Release" "-r" "win-x64" "--self-contained" "true" "-p:PublishSingleFile=true" "-nologo")
                                :output *standard-output*
                                :error-output *error-output*)
              (values (probe-file (format nil "bin/Release/net8.0/win-x64/publish/~A.exe" assembly-name)) nil nil))))))))
