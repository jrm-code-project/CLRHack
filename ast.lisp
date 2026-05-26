#+sbcl (declaim (sb-ext:muffle-conditions style-warning))
;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; AST Nodes

(defclass ast-node ()
  ((basic-block :initform nil :accessor ast-basic-block))
  (:documentation "Base class for all AST nodes."))

(defclass ast-literal (ast-node)
  ((value :initarg :value :accessor ast-literal-value))
  (:documentation "A literal value (e.g., number, string, quoted list)."))

(defclass ast-variable (ast-node)
  ((name :initarg :name :accessor ast-variable-name)
   (alpha-name :initarg :alpha-name :accessor ast-variable-alpha-name))
  (:documentation "A variable reference."))

(defclass ast-argument-variable (ast-variable)
  ()
  (:documentation "An argument variable reference."))

(defclass ast-local-variable (ast-variable)
  ()
  (:documentation "A local variable reference."))

(defclass ast-lexical-variable (ast-variable)
  ()
  (:documentation "A lexical variable reference."))

(defclass ast-global-variable (ast-variable)
  ()
  (:documentation "A global variable reference."))

(defclass ast-if (ast-node)
  ((test :initarg :test :accessor ast-if-test)
   (consequent :initarg :consequent :accessor ast-if-consequent)
   (alternate :initarg :alternate :accessor ast-if-alternate))
  (:documentation "An IF conditional."))

(defclass ast-progn (ast-node)
  ((forms :initarg :forms :accessor ast-progn-forms))
  (:documentation "A PROGN block."))

(defclass ast-setq (ast-node)
  ((name :initarg :name :accessor ast-setq-name)
   (value :initarg :value :accessor ast-setq-value))
  (:documentation "A SETQ assignment."))

(defclass ast-let (ast-node)
  ((bindings :initarg :bindings :accessor ast-let-bindings)
   (body :initarg :body :accessor ast-let-body))
  (:documentation "A LET binding block."))

(defclass ast-lambda (ast-node)
  ((params :initarg :params :accessor ast-lambda-params)
   (optional-params :initarg :optional-params :accessor ast-lambda-optional-params :initform nil)
   (rest-param :initarg :rest-param :accessor ast-lambda-rest-param :initform nil)
   (key-params :initarg :key-params :accessor ast-lambda-key-params :initform nil)
   (allow-other-keys :initarg :allow-other-keys :accessor ast-lambda-allow-other-keys :initform nil)
   (aux-params :initarg :aux-params :accessor ast-lambda-aux-params :initform nil)
   (body :initarg :body :accessor ast-lambda-body)
   (free-vars :initform nil :accessor ast-lambda-free-vars)
   (lifted-name :initform nil :accessor ast-lambda-lifted-name))
  (:documentation "A LAMBDA expression."))

(defclass ast-class (ast-node)
  ((name :initarg :name :accessor ast-class-name)
   (superclasses :initarg :superclasses :accessor ast-class-superclasses)
   (slots :initarg :slots :accessor ast-class-slots)
  (canonical-slots :initarg :canonical-slots :initform nil :accessor ast-class-canonical-slots)
  (canonical-default-initargs :initarg :canonical-default-initargs :initform nil :accessor ast-class-canonical-default-initargs)
   (options :initarg :options :initform nil :accessor ast-class-options))
  (:documentation "A DEFCLASS definition."))

(defclass ast-method (ast-node)
  ((name :initarg :name :accessor ast-method-name)
   (qualifiers :initarg :qualifiers :initform nil :accessor ast-method-qualifiers)
   (specialized-lambda-list :initarg :specialized-lambda-list :accessor ast-method-specialized-lambda-list)
   (body :initarg :body :accessor ast-method-body))
  (:documentation "A DEFMETHOD definition."))

(defclass ast-toplevel-defun (ast-node)
  ((name :initarg :name :accessor ast-toplevel-defun-name)
   (params :initarg :params :accessor ast-toplevel-defun-params)
   (optional-params :initarg :optional-params :accessor ast-toplevel-defun-optional-params :initform nil)
   (rest-param :initarg :rest-param :accessor ast-toplevel-defun-rest-param :initform nil)
   (key-params :initarg :key-params :accessor ast-toplevel-defun-key-params :initform nil)
   (allow-other-keys :initarg :allow-other-keys :accessor ast-toplevel-defun-allow-other-keys :initform nil)
   (aux-params :initarg :aux-params :accessor ast-toplevel-defun-aux-params :initform nil)
   (body :initarg :body :accessor ast-toplevel-defun-body))
  (:documentation "A top-level DEFUN definition that should be compiled to a static method."))

(defclass ast-application (ast-node)
  ((operator :initarg :operator :accessor ast-application-operator)
   (operands :initarg :operands :accessor ast-application-operands))
  (:documentation "A function application."))

(defclass ast-clr-call (ast-node)
  ((type-name :initarg :type-name :accessor ast-clr-call-type-name)
   (method-name :initarg :method-name :accessor ast-clr-call-method-name)
   (return-type :initarg :return-type :accessor ast-clr-call-return-type)
   (arg-types :initarg :arg-types :accessor ast-clr-call-arg-types)
   (arguments :initarg :arguments :accessor ast-clr-call-arguments))
  (:documentation "A direct call to a static .NET method."))

(defclass ast-clr-call-virt (ast-node)
  ((instance :initarg :instance :accessor ast-clr-call-virt-instance)
   (type-name :initarg :type-name :accessor ast-clr-call-virt-type-name)
   (method-name :initarg :method-name :accessor ast-clr-call-virt-method-name)
   (return-type :initarg :return-type :accessor ast-clr-call-virt-return-type)
   (arg-types :initarg :arg-types :accessor ast-clr-call-virt-arg-types)
   (arguments :initarg :arguments :accessor ast-clr-call-virt-arguments))
  (:documentation "A direct virtual call to an instance .NET method."))

(defclass ast-clr-new (ast-node)
  ((type-name :initarg :type-name :accessor ast-clr-new-type-name)
   (arg-types :initarg :arg-types :accessor ast-clr-new-arg-types)
   (arguments :initarg :arguments :accessor ast-clr-new-arguments))
  (:documentation "An instantiation of a .NET type."))


(defclass ast-clr-field (ast-node)
  ((type-name :initarg :type-name :accessor ast-clr-field-type-name)
   (field-name :initarg :field-name :accessor ast-clr-field-field-name)
   (instance :initarg :instance :accessor ast-clr-field-instance))
  (:documentation "A direct access to a .NET field (static if instance is NIL)."))

(defclass ast-dotnet-static-call (ast-node)
  ((method-name :initarg :method-name :accessor ast-dotnet-static-call-method-name)
   (arguments :initarg :arguments :accessor ast-dotnet-static-call-arguments))
  (:documentation "A Javadot static method call."))

(defclass ast-dotnet-instance-call (ast-node)
  ((method-name :initarg :method-name :accessor ast-dotnet-instance-call-method-name)
   (instance :initarg :instance :accessor ast-dotnet-instance-call-instance)
   (arguments :initarg :arguments :accessor ast-dotnet-instance-call-arguments))
  (:documentation "A Javadot instance method call."))

(defclass ast-dotnet-property (ast-node)
  ((property-name :initarg :property-name :accessor ast-dotnet-property-name))
  (:documentation "A Javadot static property access."))

(defclass ast-dotnet-instance-property (ast-node)
  ((property-name :initarg :property-name :accessor ast-dotnet-instance-property-name)
   (instance :initarg :instance :accessor ast-dotnet-instance-property-instance))
  (:documentation "A Javadot instance property access."))

(defclass ast-dotnet-field (ast-node)
  ((field-name :initarg :field-name :accessor ast-dotnet-field-name))
  (:documentation "A Javadot static field access."))

(defclass ast-dotnet-instance-field (ast-node)
  ((field-name :initarg :field-name :accessor ast-dotnet-instance-field-name)
   (instance :initarg :instance :accessor ast-dotnet-instance-field-instance))
  (:documentation "A Javadot instance field access."))



(defvar *tag-id-counter* 0)
(defun next-tag-id () (incf *tag-id-counter*))

(defclass ast-tagbody (ast-node)
  ((statements :initarg :statements :accessor ast-tagbody-statements)
   (labels     :initarg :labels     :accessor ast-tagbody-labels) ;; List of (tag-name . id)
   (id         :initarg :id         :initform (next-tag-id) :accessor ast-tagbody-id))
  (:documentation "A TAGBODY block for unstructured control flow."))


(defclass ast-go (ast-node)
  ((tag-label   :initarg :tag-label   :accessor ast-go-tag-label)
   (tag-id      :initarg :tag-id      :accessor ast-go-tag-id)
   (non-local-p :initarg :non-local-p :accessor ast-go-non-local-p))
  (:documentation "A GO jump to a TAGBODY tag."))

(defclass ast-label (ast-node)
  ((label :initarg :label :accessor ast-label-label)
   (id    :initarg :id    :accessor ast-label-id))
  (:documentation "A jump target (label) within a TAGBODY."))


(defclass ast-unwind-protect (ast-node)
  ((protected-form :initarg :protected-form :accessor ast-unwind-protect-protected-form)
   (cleanup-forms  :initarg :cleanup-forms  :accessor ast-unwind-protect-cleanup-forms)
   (result-temp    :initarg :result-temp :initform nil :accessor ast-unwind-protect-result-temp)
   (count-temp     :initarg :count-temp :initform nil :accessor ast-unwind-protect-count-temp)
   (extra-temps     :initarg :extra-temps :initform nil :accessor ast-unwind-protect-extra-temps))
  (:documentation "An UNWIND-PROTECT block."))

(defclass ast-block (ast-node)
  ((name :initarg :name :accessor ast-block-name)
   (body :initarg :body :accessor ast-block-body)
  (id :initarg :id :accessor ast-block-id)
   (end-label :initarg :end-label :accessor ast-block-end-label)
  (result-temp :initarg :result-temp :initform nil :accessor ast-block-result-temp)
  (needs-catch-frame-p :initarg :needs-catch-frame-p :initform nil :accessor ast-block-needs-catch-frame-p))
  (:documentation "A named lexical block."))

(defclass ast-return-from (ast-node)
  ((name :initarg :name :accessor ast-return-from-name)
   (value :initarg :value :accessor ast-return-from-value)
  (target-id :initarg :target-id :accessor ast-return-from-target-id)
   (target-label :initarg :target-label :accessor ast-return-from-target-label)
   (result-temp :initarg :result-temp :accessor ast-return-from-result-temp)
   (non-local-p :initarg :non-local-p :accessor ast-return-from-non-local-p))
  (:documentation "A return from a named lexical block."))

(defclass ast-catch (ast-node)
  ((tag :initarg :tag :accessor ast-catch-tag)
   (body :initarg :body :accessor ast-catch-body)
   (tag-temp :initarg :tag-temp :initform nil :accessor ast-catch-tag-temp)
   (result-temp :initarg :result-temp :initform nil :accessor ast-catch-result-temp))
  (:documentation "A dynamic CATCH block."))

(defclass ast-throw (ast-node)
  ((tag :initarg :tag :accessor ast-throw-tag)
   (value :initarg :value :accessor ast-throw-value))
  (:documentation "A dynamic THROW jump."))

(defclass ast-values (ast-node)
  ((values :initarg :values :accessor ast-values-values)
   (temps  :initarg :temps  :initform nil :accessor ast-values-temps))
  (:documentation "A VALUES form for multiple return values."))

(defclass ast-multiple-value-bind (ast-node)
  ((vars :initarg :vars :accessor ast-multiple-value-bind-vars)
   (values-form :initarg :values-form :accessor ast-multiple-value-bind-values-form)
   (body :initarg :body :accessor ast-multiple-value-bind-body))
  (:documentation "A MULTIPLE-VALUE-BIND block."))

(defclass ast-multiple-value-call (ast-node)
  ((function-form :initarg :function-form :accessor ast-multiple-value-call-function-form)
   (arguments-forms :initarg :arguments-forms :accessor ast-multiple-value-call-arguments-forms)
   (fn-temp :initarg :fn-temp :initform nil :accessor ast-multiple-value-call-fn-temp)
   (list-temp :initarg :list-temp :initform nil :accessor ast-multiple-value-call-list-temp))
  (:documentation "A MULTIPLE-VALUE-CALL form."))

(defclass ast-multiple-value-prog1 (ast-node)
  ((first-form :initarg :first-form :accessor ast-multiple-value-prog1-first-form)
   (other-forms :initarg :other-forms :accessor ast-multiple-value-prog1-other-forms)
   (result-temp :initarg :result-temp :initform nil :accessor ast-multiple-value-prog1-result-temp)
   (count-temp  :initarg :count-temp :initform nil :accessor ast-multiple-value-prog1-count-temp)
   (extra-temps :initarg :extra-temps :initform nil :accessor ast-multiple-value-prog1-extra-temps))
  (:documentation "A MULTIPLE-VALUE-PROG1 form."))

(defclass ast-restart-bind (ast-node)
  ((bindings :initarg :bindings :accessor ast-restart-bind-bindings)
   (body :initarg :body :accessor ast-restart-bind-body)
   (saved-restarts-temp :initarg :saved-restarts-temp :initform nil :accessor ast-restart-bind-saved-restarts-temp)
   (restarts-list-temp :initarg :restarts-list-temp :initform nil :accessor ast-restart-bind-restarts-list-temp)
   (result-temp :initarg :result-temp :initform nil :accessor ast-restart-bind-result-temp))
  (:documentation "A RESTART-BIND form."))

(defclass ast-handler-bind (ast-node)
  ((bindings :initarg :bindings :accessor ast-handler-bind-bindings)
   (body :initarg :body :accessor ast-handler-bind-body)
   (saved-handlers-temp :initarg :saved-handlers-temp :initform nil :accessor ast-handler-bind-saved-handlers-temp)
   (handlers-list-temp :initarg :handlers-list-temp :initform nil :accessor ast-handler-bind-handlers-list-temp)
   (result-temp :initarg :result-temp :initform nil :accessor ast-handler-bind-result-temp))
  (:documentation "A HANDLER-BIND form."))

(defclass ast-reflection (ast-node)
  ((operation :initarg :operation :accessor ast-reflection-operation)
   (arguments :initarg :arguments :accessor ast-reflection-arguments))
  (:documentation "A reflection-based .NET interop call."))

;;; Macro Environment

(defvar *macro-environment* (make-hash-table :test #'eq))

(defun register-macro (name expander)
  (setf (gethash name *macro-environment*) expander))

(defun clrhack-macro-function (name)
  (or (gethash name *macro-environment*)
      ;; Allow host-expanded forms (often CL package symbols) to resolve
      ;; against CLRHACK-registered macro names by symbol-name.
      (let ((target-name (and (symbolp name) (symbol-name name)))
            (found nil))
        (when target-name
          (maphash (lambda (macro-name expander)
                     (when (and (symbolp macro-name)
                                (string= (symbol-name macro-name) target-name)
                                (null found))
                       (setf found expander)))
                   *macro-environment*))
        found)))

(defun clrhack-macroexpand-1 (form)
  "Host-side macroexpansion for the compiler."
  (if (and (consp form) (symbolp (car form)))
      (let* ((op (car form))
             (expander (clrhack-macro-function op))
             (pkg (symbol-package op))
       (pkg-name (and pkg (package-name pkg)))
       (op-name (string-upcase (symbol-name op))))
        (if expander
            (values (apply expander (cdr form)) t)
      ;; Expand selected host macros needed by compiler execution paths.
      ;; Keep this scoped to avoid pulling in arbitrary implementation objects.
      (if (and (macro-function op)
           (or (and pkg-name (string= pkg-name "SB-LOOP"))
             (and pkg-name
                (string= pkg-name "COMMON-LISP")
                (member op-name '("LOOP" "WITH-OPEN-FILE" "DOLIST" "DOTIMES")
                    :test #'string=))))
                (macroexpand-1 form)
                (values form nil))))
      (values form nil)))

(defun setup-macro-environment ()
  (clrhash *macro-environment*)
  (register-macro 'when
    (lambda (test &rest body)
      `(if ,test (progn ,@body) nil)))
  (register-macro 'unless
    (lambda (test &rest body)
      `(if ,test nil (progn ,@body))))
  (register-macro 'defvar
    (lambda (name &optional value docstring)
      (declare (ignore docstring))
      `(setq ,name ,value)))
  (register-macro 'defparameter
    (lambda (name value &optional docstring)
      (declare (ignore docstring))
      `(setq ,name ,value)))
  (register-macro 'funcall
    (lambda (fn &rest args)
      `(,fn ,@args)))
  (register-macro 'let*
    (lambda (bindings &rest body)
      (if (null bindings)
          `(progn ,@body)
          `(let (,(car bindings))
             (let* ,(cdr bindings) ,@body)))))
  (register-macro 'cond
    (lambda (&rest clauses)
      (if (null clauses)
          nil
          (let ((clause (car clauses)))
            `(if ,(car clause)
                 (progn ,@(cdr clause))
                 (cond ,@(cdr clauses)))))))
  (register-macro 'or
    (lambda (&rest args)
      (if (null args)
          nil
          (if (null (cdr args))
              (car args)
              (let ((temp (gensym)))
                `(let ((,temp ,(car args)))
                   (if ,temp ,temp (or ,@(cdr args)))))))))
  (register-macro 'and
    (lambda (&rest args)
      (if (null args)
          t
          (if (null (cdr args))
              (car args)
              `(if ,(car args) (and ,@(cdr args)) nil)))))
  (register-macro 'case
    (lambda (keyform &rest clauses)
      (let ((key-var (gensym "CASE_KEY_")))
        (labels ((expand-case-clause (clause fallback)
                   (let ((keys (car clause))
                         (body (cdr clause)))
                     (cond
                       ((or (eq keys 'otherwise) (eq keys t))
                        `(progn ,@body))
                       ((consp keys)
                        `(if (or ,@(mapcar (lambda (key) `(eq ,key-var ',key)) keys))
                             (progn ,@body)
                             ,fallback))
                       (t
                        `(if (eq ,key-var ',keys)
                             (progn ,@body)
                             ,fallback)))))
                 (expand-case-clauses (rest-clauses)
                   (if (null rest-clauses)
                       nil
                       (expand-case-clause (car rest-clauses)
                                           (expand-case-clauses (cdr rest-clauses))))))
           `(let ((,key-var ,keyform))
             ,(expand-case-clauses clauses))))))
  (register-macro 'ecase
    (lambda (keyform &rest clauses)
      (let ((key-var (gensym "ECASE_KEY_")))
        (labels ((expand-ecase-clause (clause fallback)
                   (let ((keys (car clause))
                         (body (cdr clause)))
                     (cond
                       ((or (eq keys 'otherwise) (eq keys t))
                        `(progn ,@body))
                       ((consp keys)
                        `(if (or ,@(mapcar (lambda (key) `(eq ,key-var ',key)) keys))
                             (progn ,@body)
                             ,fallback))
                       (t
                        `(if (eq ,key-var ',keys)
                             (progn ,@body)
                             ,fallback)))))
                 (expand-ecase-clauses (rest-clauses)
                   (if (null rest-clauses)
                       `(error "ECASE fell through for ~A" ,key-var)
                       (expand-ecase-clause (car rest-clauses)
                                            (expand-ecase-clauses (cdr rest-clauses))))))
           `(let ((,key-var ,keyform))
             ,(expand-ecase-clauses clauses))))))
  (register-macro 'return
    (lambda (&optional value)
      `(return-from nil ,value)))  (register-macro 'atom (lambda (x) `(not (consp ,x))))
  (register-macro 'caar (lambda (x) `(car (car ,x))))
  (register-macro 'cadr (lambda (x) `(car (cdr ,x))))
  (register-macro 'cdar (lambda (x) `(cdr (car ,x))))
  (register-macro 'cddr (lambda (x) `(cdr (cdr ,x))))
  (register-macro 'cadar (lambda (x) `(car (cdr (car ,x)))))
  (register-macro 'caddr (lambda (x) `(car (cdr (cdr ,x)))))
  (register-macro 'cadddr (lambda (x) `(car (cdr (cdr (cdr ,x))))))
  (register-macro 'second (lambda (x) `(cadr ,x)))
  (register-macro 'third (lambda (x) `(caddr ,x)))
  (register-macro 'fourth (lambda (x) `(cadddr ,x)))

  (register-macro 'restart-case
    (lambda (expression &rest clauses)
      (let* ((exit-tag (gensym "EXIT"))
             (args-var (gensym "ARGS"))
             (id-var (gensym "ID"))
             (tag-var (gensym "TAG"))
             (clause-ids (mapcar (lambda (c) (gensym (symbol-name (car c)))) clauses)))
        `(block ,exit-tag
           (let ((,tag-var (list nil))
                 (,args-var nil)
                 (,id-var nil))
             (catch ,tag-var
               (restart-bind
                   ,(mapcar (lambda (clause id)
                              (let ((name (car clause))
                                    (report nil)
                                    (interactive nil)
                                    (test nil)
                                    (curr (cddr clause)))
                                (do ()
                                    ((not (and curr (keywordp (car curr)))))
                                  (case (car curr)
                                    (:report (setf report (second curr) curr (cddr curr)))
                                    (:interactive (setf interactive (second curr) curr (cddr curr)))
                                    (:test (setf test (second curr) curr (cddr curr)))
                                    (t (return))))
                                `(,name (lambda (&rest args)
                                          (setq ,args-var args)
                                          (setq ,id-var ',id)
                                          (throw ,tag-var nil))
                                        ,@(when report `(:report-function ,(if (stringp report) `(lambda (s) (print ,report)) report)))
                                        ,@(when interactive `(:interactive-function ,interactive))
                                        ,@(when test `(:test-function ,test)))))
                            clauses clause-ids)
                 (return-from ,exit-tag ,expression)))
             (cond
               ,@(mapcar (lambda (clause id)
                           (let ((lambda-list (second clause))
                                 (forms nil)
                                 (curr (cddr clause)))
                             (do ()
                                 ((not (and curr (keywordp (car curr)))))
                               (setf curr (cddr curr)))
                             (setf forms curr)
                             `((eq ,id-var ',id)
                               (apply (lambda ,lambda-list ,@forms) ,args-var))))
                         clauses clause-ids)))))))

  (register-macro 'break
    (lambda (&optional format-string &rest args)
      (if format-string
          `(progn (print ,format-string) (print (list ,@args)) (%break))
          `(%break))))
  (register-macro 'push
    (lambda (item place)
      `(setq ,place (cons ,item ,place))))
  (register-macro 'handler-case

    (lambda (expression &rest clauses)
      (let* ((exit-tag (gensym "EXIT"))
             (condition-var (gensym "CONDITION"))
             (id-var (gensym "ID"))
             (tag-var (gensym "TAG"))
             (clause-ids (mapcar (lambda (c) (gensym (if (symbolp (car c)) (symbol-name (car c)) (string (car c))))) clauses)))
        `(block ,exit-tag
           (let ((,tag-var (list nil))
                 (,condition-var nil)
                 (,id-var nil))
             (catch ,tag-var
               (handler-bind
                   ,(mapcar (lambda (clause id)
                              (let ((type (car clause)))
                                `(,type (lambda (c)
                                          (setq ,condition-var c)
                                          (setq ,id-var ',id)
                                          (throw ,tag-var nil)))))
                            clauses clause-ids)
                 (return-from ,exit-tag ,expression)))
             (cond
               ,@(mapcar (lambda (clause id)
                           (let ((var (car (second clause)))
                                 (body (cddr clause)))
                             `((eq ,id-var ',id)
                               (let ((,var ,condition-var))
                                 ,@body))))
                         clauses clause-ids)))))))

  (register-macro 'dotnet-new (lambda (type &rest args) `(reflect :new ,type ,@args)))
  (register-macro 'dotnet-call (lambda (obj method &rest args) `(reflect :call-instance ,obj ,method ,@args)))
  (register-macro 'dotnet-call-static (lambda (type method &rest args) `(reflect :call-static ,type ,method ,@args)))
  (register-macro 'dotnet-get (lambda (obj prop) `(reflect :get-property ,obj ,prop)))
  (register-macro 'dotnet-set (lambda (obj prop val) `(reflect :set-property ,obj ,prop ,val)))
  (register-macro 'dotnet-get-static (lambda (type prop) `(reflect :get-static-property ,type ,prop)))
  (register-macro 'dotnet-set-static (lambda (type prop val) `(reflect :set-static-property ,type ,prop ,val)))

  (register-macro 'dolist
    (lambda (spec &rest body)
      (let ((var (car spec))
            (list-form (second spec))
            (result-form (third spec))
            (list-var (gensym "LIST")))
        `(let ((,list-var ,list-form))
           (tagbody
            LOOP
              (if (null ,list-var) (go END))
              (let ((,var (car ,list-var)))
                (setq ,list-var (cdr ,list-var))
                ,@body
                (go LOOP))
            END)
           ,result-form))))
  (register-macro 'dotimes
    (lambda (spec &rest body)
      (let ((var (car spec))
            (count-form (second spec))
            (result-form (third spec))
            (count-var (gensym "COUNT")))
        `(let ((,count-var ,count-form)
               (,var 0))
           (tagbody
            LOOP
              (if (= ,var ,count-var) (go END))
              ,@body
              (setq ,var (1+ ,var))
              (go LOOP)
            END)
           ,result-form))))
  (register-macro 'letrec
    (lambda (bindings &rest body)
      (let ((vars (mapcar (lambda (b) (if (consp b) (car b) b)) bindings))
            (vals (mapcar (lambda (b) (if (consp b) (cadr b) nil)) bindings)))
        `(let ,(mapcar (lambda (v) `(,v nil)) vars)
           ,@(mapcar (lambda (v val) `(setq ,v ,val)) vars vals)
           ,@body))))
  (register-macro 'letrec*
    (lambda (bindings &rest body)
      (let ((vars (mapcar (lambda (b) (if (consp b) (car b) b)) bindings))
            (vals (mapcar (lambda (b) (if (consp b) (cadr b) nil)) bindings)))
        `(let ,(mapcar (lambda (v) `(,v nil)) vars)
           ,@(mapcar (lambda (v val) `(setq ,v ,val)) vars vals)
           ,@body))))
  (register-macro 'let-dynamic
    (lambda (bindings &rest body)
      (let ((temps (mapcar (lambda (b) (gensym "NEW")) bindings))
            (olds (mapcar (lambda (b) (gensym "OLD")) bindings))
            (vars (mapcar (lambda (b) (if (consp b) (car b) b)) bindings))
            (vals (mapcar (lambda (b) (if (consp b) (cadr b) nil)) bindings)))
        `(let ,(mapcar (lambda (temp val) (list temp val)) temps vals)
           (let ,(mapcar (lambda (old var) (list old var)) olds vars)
             (unwind-protect
                 (progn
                   ,@(mapcar (lambda (var temp) `(setq ,var ,temp)) vars temps)
                   ,@body)
               ,@(mapcar (lambda (var old) `(setq ,var ,old)) vars olds)))))))
  (register-macro 'let
    (lambda (bindings &rest body)
      (let ((lexicals nil)
            (dynamics nil))
        (dolist (b bindings)
          (let* ((name (if (consp b) (car b) b))
                 (val (if (consp b) (cadr b) nil))
                 (name-str (string name)))
            (if (and (> (length name-str) 2)
                     (char= (char name-str 0) #\*)
                     (char= (char name-str (1- (length name-str))) #\*))
                (push (list name val) dynamics)
                (push (list name val) lexicals))))
        (setq lexicals (nreverse lexicals))
        (setq dynamics (nreverse dynamics))
        (let ((inner-body (if dynamics
                              `((let-dynamic ,dynamics ,@body))
                              body)))
          (if lexicals
              `(%let ,lexicals ,@inner-body)
              `(progn ,@inner-body))))))
  (register-macro 'get
    (lambda (sym ind)
      `(clr-call-virt ,sym "[LispBase]Lisp.Symbol" "Get" ("object" "object") ,ind)))
  (register-macro 'put
    (lambda (sym ind val)
      `(clr-call-virt ,sym "[LispBase]Lisp.Symbol" "Put" ("void" "object" "object") ,ind ,val)))
  (register-macro 'make-array
    (lambda (size &rest options)
      (declare (ignore options))
      `(clr-call "[LispBase]Lisp.Vector" "MakeArray" ("object" "object") ,size)))
  (register-macro 'aref
    (lambda (arr idx)
      `(clr-call "[LispBase]Lisp.Vector" "Aref" ("object" "object" "object") ,arr ,idx)))
  (register-macro 'aset
    (lambda (arr idx val)
      `(clr-call "[LispBase]Lisp.Vector" "Aset" ("object" "object" "object" "object") ,arr ,idx ,val)))
  (register-macro 'time
    (lambda (form)
      (let ((sw (gensym "SW"))
            (result (gensym "RESULT")))
        `(let ((,sw (clr-call "[LispBase]Lisp.Timing" "Start" "object")))
           (let ((,result ,form))
             (print "Elapsed ms:")
             (print (clr-call "[LispBase]Lisp.Timing" "ElapsedMilliseconds" "object" ,sw))
             ,result)))))
  (register-macro 'flet
    (lambda (bindings &rest body)
      `(let ,(mapcar (lambda (b)
                       `(,(car b) (lambda ,(cadr b) (progn ,@(cddr b)))))
                     bindings)
         ,@body)))
  (register-macro 'labels
    (lambda (bindings &rest body)
      `(letrec ,(mapcar (lambda (b)
                          `(,(car b) (lambda ,(cadr b) (progn ,@(cddr b)))))
                        bindings)
         ,@body))))

(setup-macro-environment)

;;; Free Variable Analysis

(defgeneric compute-free-vars (node)
  (:documentation "Computes and caches free variables in LAMBDA nodes. Returns a list of alpha-names."))

(defmethod compute-free-vars ((node ast-literal))
  nil)

(defmethod compute-free-vars ((node ast-variable))
  (list (ast-variable-alpha-name node)))

(defmethod compute-free-vars ((node ast-global-variable))
  nil)

(defmethod compute-free-vars ((node ast-if))
  (union (compute-free-vars (ast-if-test node))
         (union (compute-free-vars (ast-if-consequent node))
                (compute-free-vars (ast-if-alternate node)))))

(defmethod compute-free-vars ((node ast-progn))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-progn-forms node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-setq))
  (union (compute-free-vars (ast-setq-name node))
         (compute-free-vars (ast-setq-value node))))

(defmethod compute-free-vars ((node ast-let))
  (let ((binding-free-vars (reduce (lambda (a b) (union a (compute-free-vars (cadr b))))
                                   (ast-let-bindings node)
                                   :initial-value nil))
        (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (ast-let-body node)
                                :initial-value nil))
        (bound-vars (mapcar #'car (ast-let-bindings node))))
    (union binding-free-vars
           (set-difference body-free-vars bound-vars))))

(defmethod compute-free-vars ((node ast-lambda))
  (let* ((params (ast-lambda-params node))
         (opt-params (ast-lambda-optional-params node))
         (rest-param (ast-lambda-rest-param node))
         (key-params (ast-lambda-key-params node))
         (aux-params (ast-lambda-aux-params node))
         (all-bound (append params
                            (mapcan (lambda (p)
                                      (if (third p)
                                          (list (car p) (third p))
                                          (list (car p))))
                                    opt-params)
                            (when rest-param (list rest-param))
                            (mapcan (lambda (p)
                                      (if (fourth p)
                                          (list (second p) (fourth p))
                                          (list (second p))))
                                    key-params)
                            (mapcar #'car aux-params)))
         (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                 (ast-lambda-body node)
                                 :initial-value nil))
         (opt-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'second opt-params)
                                :initial-value nil))
         (key-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'third key-params)
                                :initial-value nil))
         (aux-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'second aux-params)
                                :initial-value nil))
         (free-vars (set-difference (union body-free-vars (union opt-free-vars (union key-free-vars aux-free-vars))) all-bound)))
    (setf (ast-lambda-free-vars node) free-vars)
    free-vars))

(defmethod compute-free-vars ((node ast-application))
  (union (compute-free-vars (ast-application-operator node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-application-operands node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-clr-call))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-clr-call-arguments node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-clr-call-virt))
  (union (compute-free-vars (ast-clr-call-virt-instance node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-clr-call-virt-arguments node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-clr-new))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-clr-new-arguments node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-clr-field))
  (if (ast-clr-field-instance node)
      (compute-free-vars (ast-clr-field-instance node))
      nil))

(defmethod compute-free-vars ((node ast-dotnet-static-call))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-dotnet-static-call-arguments node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-dotnet-instance-call))
  (union (compute-free-vars (ast-dotnet-instance-call-instance node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-dotnet-instance-call-arguments node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-dotnet-property))
  nil)

(defmethod compute-free-vars ((node ast-dotnet-instance-property))
  (compute-free-vars (ast-dotnet-instance-property-instance node)))

(defmethod compute-free-vars ((node ast-dotnet-field))
  nil)

(defmethod compute-free-vars ((node ast-dotnet-instance-field))
  (compute-free-vars (ast-dotnet-instance-field-instance node)))


(defmethod compute-free-vars ((node ast-tagbody))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (remove-if (lambda (s) (typep s 'ast-label)) (ast-tagbody-statements node))
          :initial-value nil))

(defmethod compute-free-vars ((node ast-go))
  nil)

(defmethod compute-free-vars ((node ast-label))
  nil)

(defmethod compute-free-vars ((node ast-unwind-protect))
  (union (compute-free-vars (ast-unwind-protect-protected-form node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-unwind-protect-cleanup-forms node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-block))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-block-body node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-return-from))
  (compute-free-vars (ast-return-from-value node)))

(defmethod compute-free-vars ((node ast-catch))
  (union (compute-free-vars (ast-catch-tag node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-catch-body node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-throw))
  (union (compute-free-vars (ast-throw-tag node))
         (compute-free-vars (ast-throw-value node))))

(defmethod compute-free-vars ((node ast-values))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-values-values node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-multiple-value-bind))
  (let ((values-free-vars (compute-free-vars (ast-multiple-value-bind-values-form node)))
        (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (ast-multiple-value-bind-body node)
                                :initial-value nil))
        (bound-vars (ast-multiple-value-bind-vars node)))
    (union values-free-vars
           (set-difference body-free-vars bound-vars))))

(defmethod compute-free-vars ((node ast-multiple-value-call))
  (union (compute-free-vars (ast-multiple-value-call-function-form node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-multiple-value-call-arguments-forms node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-multiple-value-prog1))
  (union (compute-free-vars (ast-multiple-value-prog1-first-form node))
         (reduce (lambda (a b) (union a (compute-free-vars b)))
                 (ast-multiple-value-prog1-other-forms node)
                 :initial-value nil)))

(defmethod compute-free-vars ((node ast-restart-bind))
  (let ((binding-free-vars
         (reduce (lambda (a b)
                   (union a
                          (union (compute-free-vars (second b))
                                 (union (compute-free-vars (third b))
                                        (union (compute-free-vars (fourth b))
                                               (compute-free-vars (fifth b)))))))
                 (ast-restart-bind-bindings node)
                 :initial-value nil))
        (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (ast-restart-bind-body node)
                                :initial-value nil)))
    (union binding-free-vars body-free-vars)))

(defmethod compute-free-vars ((node ast-handler-bind))
  (let ((binding-free-vars
         (reduce (lambda (a b) (union a (compute-free-vars (second b))))
                 (ast-handler-bind-bindings node)
                 :initial-value nil))
        (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (ast-handler-bind-body node)
                                :initial-value nil)))
    (union binding-free-vars body-free-vars)))

(defmethod compute-free-vars ((node ast-reflection))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-reflection-arguments node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-class))
  nil)

(defmethod compute-free-vars ((node ast-method))
  (reduce (lambda (a b) (union a (compute-free-vars b)))
          (ast-method-body node)
          :initial-value nil))

(defmethod compute-free-vars ((node ast-toplevel-defun))
  (let* ((params (ast-toplevel-defun-params node))
         (opt-params (ast-toplevel-defun-optional-params node))
         (rest-param (ast-toplevel-defun-rest-param node))
         (key-params (ast-toplevel-defun-key-params node))
         (aux-params (ast-toplevel-defun-aux-params node))
         (all-bound (append params
                            (mapcan (lambda (p)
                                      (if (third p)
                                          (list (car p) (third p))
                                          (list (car p))))
                                    opt-params)
                            (when rest-param (list rest-param))
                            (mapcan (lambda (p)
                                      (if (fourth p)
                                          (list (second p) (fourth p))
                                          (list (second p))))
                                    key-params)
                            (mapcar #'car aux-params)))
         (body-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                 (ast-toplevel-defun-body node)
                                 :initial-value nil))
         (opt-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'second opt-params)
                                :initial-value nil))
         (key-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'third key-params)
                                :initial-value nil))
         (aux-free-vars (reduce (lambda (a b) (union a (compute-free-vars b)))
                                (mapcar #'second aux-params)
                                :initial-value nil)))
    (set-difference (union body-free-vars (union opt-free-vars (union key-free-vars aux-free-vars))) all-bound)))

(defgeneric closure-convert (node)
  (:documentation "Walks the AST and transforms LAMBDA expressions into explicit closure instantiations using .ctor."))

(defmethod closure-convert ((node ast-literal))
  node)

(defmethod closure-convert ((node ast-variable))
  node)

(defmethod closure-convert ((node ast-if))
  (make-instance 'ast-if
                 :test (closure-convert (ast-if-test node))
                 :consequent (closure-convert (ast-if-consequent node))
                 :alternate (closure-convert (ast-if-alternate node))))

(defmethod closure-convert ((node ast-progn))
  (make-instance 'ast-progn
                 :forms (mapcar #'closure-convert (ast-progn-forms node))))

(defmethod closure-convert ((node ast-setq))
  (make-instance 'ast-setq
                 :name (closure-convert (ast-setq-name node))
                 :value (closure-convert (ast-setq-value node))))

(defmethod closure-convert ((node ast-let))
  (make-instance 'ast-let
                 :bindings (mapcar (lambda (b) (list (car b) (closure-convert (cadr b))))
                                   (ast-let-bindings node))
                 :body (mapcar #'closure-convert (ast-let-body node))))

(defmethod closure-convert ((node ast-lambda))
  (let ((new-body (mapcar #'closure-convert (ast-lambda-body node)))
        (new-opt-params (mapcar (lambda (p) (list (first p) (closure-convert (second p)) (third p)))
                                (ast-lambda-optional-params node)))
        (new-key-params (mapcar (lambda (p) (list (first p) (second p) (closure-convert (third p)) (fourth p)))
                                (ast-lambda-key-params node)))
        (new-aux-params (mapcar (lambda (p) (list (first p) (closure-convert (second p))))
                                (ast-lambda-aux-params node)))
        (free-vars (ast-lambda-free-vars node)))
    (setf (ast-lambda-body node) new-body)
    (setf (ast-lambda-optional-params node) new-opt-params)
    (setf (ast-lambda-key-params node) new-key-params)
    (setf (ast-lambda-aux-params node) new-aux-params)
    (make-instance 'ast-application
                   :operator (make-instance 'ast-global-variable :name '.ctor :alpha-name '.ctor)
                   :operands (cons node
                                   (mapcar (lambda (v)
                                             (make-instance 'ast-lexical-variable :name v :alpha-name v))
                                           free-vars)))))

(defmethod closure-convert ((node ast-application))
  (make-instance 'ast-application
                 :operator (closure-convert (ast-application-operator node))
                 :operands (mapcar #'closure-convert (ast-application-operands node))))

(defmethod closure-convert ((node ast-clr-call))
  (make-instance 'ast-clr-call
                 :type-name (ast-clr-call-type-name node)
                 :method-name (ast-clr-call-method-name node)
                 :return-type (ast-clr-call-return-type node)
                 :arg-types (ast-clr-call-arg-types node)
                 :arguments (mapcar #'closure-convert (ast-clr-call-arguments node))))

(defmethod closure-convert ((node ast-clr-call-virt))
  (make-instance 'ast-clr-call-virt
                 :instance (closure-convert (ast-clr-call-virt-instance node))
                 :type-name (ast-clr-call-virt-type-name node)
                 :method-name (ast-clr-call-virt-method-name node)
                 :return-type (ast-clr-call-virt-return-type node)
                 :arg-types (ast-clr-call-virt-arg-types node)
                 :arguments (mapcar #'closure-convert (ast-clr-call-virt-arguments node))))


(defmethod closure-convert ((node ast-clr-new))
  (make-instance 'ast-clr-new
                 :type-name (ast-clr-new-type-name node)
                 :arg-types (ast-clr-new-arg-types node)
                 :arguments (mapcar #'closure-convert (ast-clr-new-arguments node))))

(defmethod closure-convert ((node ast-clr-field))
  (make-instance 'ast-clr-field
                 :type-name (ast-clr-field-type-name node)
                 :field-name (ast-clr-field-field-name node)
                 :instance (when (ast-clr-field-instance node)
                             (closure-convert (ast-clr-field-instance node)))))

(defmethod closure-convert ((node ast-dotnet-static-call))
  (make-instance 'ast-dotnet-static-call
                 :method-name (ast-dotnet-static-call-method-name node)
                 :arguments (mapcar #'closure-convert (ast-dotnet-static-call-arguments node))))

(defmethod closure-convert ((node ast-dotnet-instance-call))
  (make-instance 'ast-dotnet-instance-call
                 :method-name (ast-dotnet-instance-call-method-name node)
                 :instance (closure-convert (ast-dotnet-instance-call-instance node))
                 :arguments (mapcar #'closure-convert (ast-dotnet-instance-call-arguments node))))

(defmethod closure-convert ((node ast-dotnet-property))
  node)

(defmethod closure-convert ((node ast-dotnet-instance-property))
  (make-instance 'ast-dotnet-instance-property
                 :property-name (ast-dotnet-instance-property-name node)
                 :instance (closure-convert (ast-dotnet-instance-property-instance node))))

(defmethod closure-convert ((node ast-dotnet-field))
  node)

(defmethod closure-convert ((node ast-dotnet-instance-field))
  (make-instance 'ast-dotnet-instance-field
                 :field-name (ast-dotnet-instance-field-name node)
                 :instance (closure-convert (ast-dotnet-instance-field-instance node))))

(defmethod closure-convert ((node ast-tagbody))
  (make-instance 'ast-tagbody
                 :statements (mapcar #'closure-convert (ast-tagbody-statements node))
                 :labels (ast-tagbody-labels node)
                 :id (ast-tagbody-id node)))

(defmethod closure-convert ((node ast-go))
  node)

(defmethod closure-convert ((node ast-label))
  node)

(defmethod closure-convert ((node ast-unwind-protect))
  (make-instance 'ast-unwind-protect
                 :protected-form (closure-convert (ast-unwind-protect-protected-form node))
                 :cleanup-forms (mapcar #'closure-convert (ast-unwind-protect-cleanup-forms node))
                 :result-temp (ast-unwind-protect-result-temp node)
                 :count-temp (ast-unwind-protect-count-temp node)
                 :extra-temps (ast-unwind-protect-extra-temps node)))

(defmethod closure-convert ((node ast-block))
  (make-instance 'ast-block
                 :name (ast-block-name node)
                 :id (ast-block-id node)
                 :end-label (ast-block-end-label node)
                 :result-temp (ast-block-result-temp node)
                 :needs-catch-frame-p (ast-block-needs-catch-frame-p node)
                 :body (mapcar #'closure-convert (ast-block-body node))))

(defmethod closure-convert ((node ast-return-from))
  (make-instance 'ast-return-from
                 :name (ast-return-from-name node)
                 :target-id (ast-return-from-target-id node)
                 :target-label (ast-return-from-target-label node)
                 :result-temp (ast-return-from-result-temp node)
                 :non-local-p (ast-return-from-non-local-p node)
                 :value (closure-convert (ast-return-from-value node))))

(defmethod closure-convert ((node ast-catch))
  (make-instance 'ast-catch
                 :tag (closure-convert (ast-catch-tag node))
                 :body (mapcar #'closure-convert (ast-catch-body node))
                 :tag-temp (ast-catch-tag-temp node)
                 :result-temp (ast-catch-result-temp node)))

(defmethod closure-convert ((node ast-throw))
  (make-instance 'ast-throw
                 :tag (closure-convert (ast-throw-tag node))
                 :value (closure-convert (ast-throw-value node))))

(defmethod closure-convert ((node ast-values))
  (make-instance 'ast-values
                 :values (mapcar #'closure-convert (ast-values-values node))
                 :temps (ast-values-temps node)))

(defmethod closure-convert ((node ast-multiple-value-bind))
  (make-instance 'ast-multiple-value-bind
                 :vars (ast-multiple-value-bind-vars node)
                 :values-form (closure-convert (ast-multiple-value-bind-values-form node))
                 :body (mapcar #'closure-convert (ast-multiple-value-bind-body node))))

(defmethod closure-convert ((node ast-multiple-value-call))
  (make-instance 'ast-multiple-value-call
                 :function-form (closure-convert (ast-multiple-value-call-function-form node))
                 :arguments-forms (mapcar #'closure-convert (ast-multiple-value-call-arguments-forms node))
                 :fn-temp (ast-multiple-value-call-fn-temp node)
                 :list-temp (ast-multiple-value-call-list-temp node)))

(defmethod closure-convert ((node ast-multiple-value-prog1))
  (make-instance 'ast-multiple-value-prog1
                 :first-form (closure-convert (ast-multiple-value-prog1-first-form node))
                 :other-forms (mapcar #'closure-convert (ast-multiple-value-prog1-other-forms node))
                 :result-temp (ast-multiple-value-prog1-result-temp node)
                 :count-temp (ast-multiple-value-prog1-count-temp node)
                 :extra-temps (ast-multiple-value-prog1-extra-temps node)))

(defmethod closure-convert ((node ast-restart-bind))
  (make-instance 'ast-restart-bind
                 :bindings (mapcar (lambda (b)
                                     (list (closure-convert (first b))
                                           (closure-convert (second b))
                                           (closure-convert (third b))
                                           (closure-convert (fourth b))
                                           (closure-convert (fifth b))))
                                   (ast-restart-bind-bindings node))
                 :body (mapcar #'closure-convert (ast-restart-bind-body node))
                 :saved-restarts-temp (ast-restart-bind-saved-restarts-temp node)
                 :restarts-list-temp (ast-restart-bind-restarts-list-temp node)
                 :result-temp (ast-restart-bind-result-temp node)))

(defmethod closure-convert ((node ast-handler-bind))
  (make-instance 'ast-handler-bind
                 :bindings (mapcar (lambda (b)
                                     (list (closure-convert (first b))
                                           (closure-convert (second b))))
                                   (ast-handler-bind-bindings node))
                 :body (mapcar #'closure-convert (ast-handler-bind-body node))
                 :saved-handlers-temp (ast-handler-bind-saved-handlers-temp node)
                 :handlers-list-temp (ast-handler-bind-handlers-list-temp node)
                 :result-temp (ast-handler-bind-result-temp node)))

(defmethod closure-convert ((node ast-reflection))
  (make-instance 'ast-reflection
                 :operation (ast-reflection-operation node)
                 :arguments (mapcar #'closure-convert (ast-reflection-arguments node))))

(defmethod closure-convert ((node ast-class))
  node)

(defmethod closure-convert ((node ast-method))
  (make-instance 'ast-method
                 :name (ast-method-name node)
                 :qualifiers (ast-method-qualifiers node)
                 :specialized-lambda-list (ast-method-specialized-lambda-list node)
                 :body (mapcar #'closure-convert (ast-method-body node))))

(defmethod closure-convert ((node ast-toplevel-defun))
  (make-instance 'ast-toplevel-defun
                 :name (ast-toplevel-defun-name node)
                 :params (ast-toplevel-defun-params node)
                 :optional-params (mapcar (lambda (p) (list (first p) (closure-convert (second p)) (third p)))
                                          (ast-toplevel-defun-optional-params node))
                 :rest-param (ast-toplevel-defun-rest-param node)
                 :key-params (mapcar (lambda (p) (list (first p) (second p) (closure-convert (third p)) (fourth p)))
                                     (ast-toplevel-defun-key-params node))
                 :allow-other-keys (ast-toplevel-defun-allow-other-keys node)
                 :aux-params (mapcar (lambda (p) (list (first p) (closure-convert (second p))))
                                     (ast-toplevel-defun-aux-params node))
                 :body (mapcar #'closure-convert (ast-toplevel-defun-body node))))

;;; Lambda Lifting

(defvar *lifted-lambdas* nil
  "List of (name . ast-lambda) for all lifted lambdas.")

(defgeneric lambda-lift (node)
  (:documentation "Walks the AST, lifting LAMBDA expressions to the top level. Returns the modified AST."))

(defmethod lambda-lift ((node ast-literal))
  node)

(defmethod lambda-lift ((node ast-variable))
  node)

(defmethod lambda-lift ((node ast-if))
  (make-instance 'ast-if
                 :test (lambda-lift (ast-if-test node))
                 :consequent (lambda-lift (ast-if-consequent node))
                 :alternate (lambda-lift (ast-if-alternate node))))

(defmethod lambda-lift ((node ast-progn))
  (make-instance 'ast-progn
                 :forms (mapcar #'lambda-lift (ast-progn-forms node))))

(defmethod lambda-lift ((node ast-setq))
  (make-instance 'ast-setq
                 :name (lambda-lift (ast-setq-name node))
                 :value (lambda-lift (ast-setq-value node))))

(defmethod lambda-lift ((node ast-let))
  (make-instance 'ast-let
                 :bindings (mapcar (lambda (b) (list (car b) (lambda-lift (cadr b))))
                                   (ast-let-bindings node))
                 :body (mapcar #'lambda-lift (ast-let-body node))))

(defmethod lambda-lift ((node ast-lambda))
  (let ((new-body (mapcar #'lambda-lift (ast-lambda-body node)))
        (new-opt-params (mapcar (lambda (p) (list (first p) (lambda-lift (second p)) (third p)))
                                (ast-lambda-optional-params node)))
        (new-key-params (mapcar (lambda (p) (list (first p) (second p) (lambda-lift (third p)) (fourth p)))
                                (ast-lambda-key-params node)))
        (new-aux-params (mapcar (lambda (p) (list (first p) (lambda-lift (second p))))
                                (ast-lambda-aux-params node)))
        (lifted-name (gensym "L_")))
    (setf (ast-lambda-body node) new-body)
    (setf (ast-lambda-optional-params node) new-opt-params)
    (setf (ast-lambda-key-params node) new-key-params)
    (setf (ast-lambda-aux-params node) new-aux-params)
    (setf (ast-lambda-lifted-name node) lifted-name)
    (push (cons lifted-name node) *lifted-lambdas*)
    (make-instance 'ast-global-variable :name lifted-name :alpha-name lifted-name)))

(defmethod lambda-lift ((node ast-application))
  (make-instance 'ast-application
                 :operator (lambda-lift (ast-application-operator node))
                 :operands (mapcar #'lambda-lift (ast-application-operands node))))

(defmethod lambda-lift ((node ast-clr-call))
  (make-instance 'ast-clr-call
                 :type-name (ast-clr-call-type-name node)
                 :method-name (ast-clr-call-method-name node)
                 :return-type (ast-clr-call-return-type node)
                 :arg-types (ast-clr-call-arg-types node)
                 :arguments (mapcar #'lambda-lift (ast-clr-call-arguments node))))

(defmethod lambda-lift ((node ast-clr-call-virt))
  (make-instance 'ast-clr-call-virt
                 :instance (lambda-lift (ast-clr-call-virt-instance node))
                 :type-name (ast-clr-call-virt-type-name node)
                 :method-name (ast-clr-call-virt-method-name node)
                 :return-type (ast-clr-call-virt-return-type node)
                 :arg-types (ast-clr-call-virt-arg-types node)
                 :arguments (mapcar #'lambda-lift (ast-clr-call-virt-arguments node))))


(defmethod lambda-lift ((node ast-clr-new))
  (make-instance 'ast-clr-new
                 :type-name (ast-clr-new-type-name node)
                 :arg-types (ast-clr-new-arg-types node)
                 :arguments (mapcar #'lambda-lift (ast-clr-new-arguments node))))

(defmethod lambda-lift ((node ast-clr-field))
  (make-instance 'ast-clr-field
                 :type-name (ast-clr-field-type-name node)
                 :field-name (ast-clr-field-field-name node)
                 :instance (when (ast-clr-field-instance node)
                             (lambda-lift (ast-clr-field-instance node)))))

(defmethod lambda-lift ((node ast-dotnet-static-call))
  (make-instance 'ast-dotnet-static-call
                 :method-name (ast-dotnet-static-call-method-name node)
                 :arguments (mapcar #'lambda-lift (ast-dotnet-static-call-arguments node))))

(defmethod lambda-lift ((node ast-dotnet-instance-call))
  (make-instance 'ast-dotnet-instance-call
                 :method-name (ast-dotnet-instance-call-method-name node)
                 :instance (lambda-lift (ast-dotnet-instance-call-instance node))
                 :arguments (mapcar #'lambda-lift (ast-dotnet-instance-call-arguments node))))

(defmethod lambda-lift ((node ast-dotnet-property))
  node)

(defmethod lambda-lift ((node ast-dotnet-instance-property))
  (make-instance 'ast-dotnet-instance-property
                 :property-name (ast-dotnet-instance-property-name node)
                 :instance (lambda-lift (ast-dotnet-instance-property-instance node))))

(defmethod lambda-lift ((node ast-dotnet-field))
  node)

(defmethod lambda-lift ((node ast-dotnet-instance-field))
  (make-instance 'ast-dotnet-instance-field
                 :field-name (ast-dotnet-instance-field-name node)
                 :instance (lambda-lift (ast-dotnet-instance-field-instance node))))

(defmethod lambda-lift ((node ast-tagbody))
  (make-instance 'ast-tagbody
                 :statements (mapcar #'lambda-lift (ast-tagbody-statements node))
                 :labels (ast-tagbody-labels node)
                 :id (ast-tagbody-id node)))

(defmethod lambda-lift ((node ast-go))
  node)

(defmethod lambda-lift ((node ast-label))
  node)

(defmethod lambda-lift ((node ast-unwind-protect))
  (make-instance 'ast-unwind-protect
                 :protected-form (lambda-lift (ast-unwind-protect-protected-form node))
                 :cleanup-forms (mapcar #'lambda-lift (ast-unwind-protect-cleanup-forms node))
                 :result-temp (ast-unwind-protect-result-temp node)
                 :count-temp (ast-unwind-protect-count-temp node)
                 :extra-temps (ast-unwind-protect-extra-temps node)))

(defmethod lambda-lift ((node ast-block))
  (make-instance 'ast-block
                 :name (ast-block-name node)
                 :id (ast-block-id node)
                 :end-label (ast-block-end-label node)
                 :result-temp (ast-block-result-temp node)
                 :needs-catch-frame-p (ast-block-needs-catch-frame-p node)
                 :body (mapcar #'lambda-lift (ast-block-body node))))

(defmethod lambda-lift ((node ast-return-from))
  (make-instance 'ast-return-from
                 :name (ast-return-from-name node)
                 :target-id (ast-return-from-target-id node)
                 :target-label (ast-return-from-target-label node)
                 :result-temp (ast-return-from-result-temp node)
                 :non-local-p (ast-return-from-non-local-p node)
                 :value (lambda-lift (ast-return-from-value node))))

(defmethod lambda-lift ((node ast-catch))
  (make-instance 'ast-catch
                 :tag (lambda-lift (ast-catch-tag node))
                 :body (mapcar #'lambda-lift (ast-catch-body node))
                 :tag-temp (ast-catch-tag-temp node)
                 :result-temp (ast-catch-result-temp node)))

(defmethod lambda-lift ((node ast-throw))
  (make-instance 'ast-throw
                 :tag (lambda-lift (ast-throw-tag node))
                 :value (lambda-lift (ast-throw-value node))))

(defmethod lambda-lift ((node ast-values))
  (make-instance 'ast-values
                 :values (mapcar #'lambda-lift (ast-values-values node))
                 :temps (ast-values-temps node)))

(defmethod lambda-lift ((node ast-multiple-value-bind))
  (make-instance 'ast-multiple-value-bind
                 :vars (ast-multiple-value-bind-vars node)
                 :values-form (lambda-lift (ast-multiple-value-bind-values-form node))
                 :body (mapcar #'lambda-lift (ast-multiple-value-bind-body node))))

(defmethod lambda-lift ((node ast-multiple-value-call))
  (make-instance 'ast-multiple-value-call
                 :function-form (lambda-lift (ast-multiple-value-call-function-form node))
                 :arguments-forms (mapcar #'lambda-lift (ast-multiple-value-call-arguments-forms node))
                 :fn-temp (ast-multiple-value-call-fn-temp node)
                 :list-temp (ast-multiple-value-call-list-temp node)))

(defmethod lambda-lift ((node ast-multiple-value-prog1))
  (make-instance 'ast-multiple-value-prog1
                 :first-form (lambda-lift (ast-multiple-value-prog1-first-form node))
                 :other-forms (mapcar #'lambda-lift (ast-multiple-value-prog1-other-forms node))
                 :result-temp (ast-multiple-value-prog1-result-temp node)
                 :count-temp (ast-multiple-value-prog1-count-temp node)
                 :extra-temps (ast-multiple-value-prog1-extra-temps node)))

(defmethod lambda-lift ((node ast-restart-bind))
  (make-instance 'ast-restart-bind
                 :bindings (mapcar (lambda (b)
                                     (list (lambda-lift (first b))
                                           (lambda-lift (second b))
                                           (lambda-lift (third b))
                                           (lambda-lift (fourth b))
                                           (lambda-lift (fifth b))))
                                   (ast-restart-bind-bindings node))
                 :body (mapcar #'lambda-lift (ast-restart-bind-body node))
                 :saved-restarts-temp (ast-restart-bind-saved-restarts-temp node)
                 :restarts-list-temp (ast-restart-bind-restarts-list-temp node)
                 :result-temp (ast-restart-bind-result-temp node)))

(defmethod lambda-lift ((node ast-handler-bind))
  (make-instance 'ast-handler-bind
                 :bindings (mapcar (lambda (b)
                                     (list (lambda-lift (first b))
                                           (lambda-lift (second b))))
                                   (ast-handler-bind-bindings node))
                 :body (mapcar #'lambda-lift (ast-handler-bind-body node))
                 :saved-handlers-temp (ast-handler-bind-saved-handlers-temp node)
                 :handlers-list-temp (ast-handler-bind-handlers-list-temp node)
                 :result-temp (ast-handler-bind-result-temp node)))

(defmethod lambda-lift ((node ast-reflection))
  (make-instance 'ast-reflection
                 :operation (ast-reflection-operation node)
                 :arguments (mapcar #'lambda-lift (ast-reflection-arguments node))))

(defmethod lambda-lift ((node ast-class))
  node)

(defmethod lambda-lift ((node ast-method))
  (make-instance 'ast-method
                 :name (ast-method-name node)
                 :qualifiers (ast-method-qualifiers node)
                 :specialized-lambda-list (ast-method-specialized-lambda-list node)
                 :body (mapcar #'lambda-lift (ast-method-body node))))

(defmethod lambda-lift ((node ast-toplevel-defun))
  (make-instance 'ast-toplevel-defun
                 :name (ast-toplevel-defun-name node)
                 :params (ast-toplevel-defun-params node)
                 :optional-params (mapcar (lambda (p) (list (first p) (lambda-lift (second p)) (third p)))
                                          (ast-toplevel-defun-optional-params node))
                 :rest-param (ast-toplevel-defun-rest-param node)
                 :key-params (mapcar (lambda (p) (list (first p) (second p) (lambda-lift (third p)) (fourth p)))
                                     (ast-toplevel-defun-key-params node))
                 :allow-other-keys (ast-toplevel-defun-allow-other-keys node)
                 :aux-params (mapcar (lambda (p) (list (first p) (lambda-lift (second p))))
                                     (ast-toplevel-defun-aux-params node))
                 :body (mapcar #'lambda-lift (ast-toplevel-defun-body node))))

(defun perform-lambda-lifting (ast)
  (let ((*lifted-lambdas* nil))
    (let ((new-ast (lambda-lift ast)))
      (values new-ast (nreverse *lifted-lambdas*)))))

(defun sanitize-identifier (name)
  (map 'string (lambda (c)
                 (if (or (alphanumericp c) (char= c #\_))
                     c
                     #\_))
       name))

(defun %cons (first rest)
  (cons first rest))

(defun %intern (name)
  (intern name *package*))

(defun expand-quote (expr)
  (cond
    ((null expr) nil)
    ((symbolp expr) `(%intern ,(string expr)))
    ((consp expr) `(%cons ,(expand-quote (car expr)) ,(expand-quote (cdr expr))))
    (t expr)))

(defun comma-form-p (expr)
  (and (consp expr)
       (or (eq (car expr) 'comma)
           (and (symbolp (car expr)) (string-equal (symbol-name (car expr)) "COMMA")))))

(defun comma-at-form-p (expr)
  (and (consp expr)
       (or (eq (car expr) 'comma-at)
           (and (symbolp (car expr)) (string-equal (symbol-name (car expr)) "COMMA-AT")))))

(defun backquote-form-p (expr)
  (and (consp expr)
       (or (eq (car expr) 'backquote)
           (and (symbolp (car expr)) (string-equal (symbol-name (car expr)) "BACKQUOTE")))))

(defun expand-backquote-list (items)
  (if (null items)
      nil
      (let ((head (car items))
            (tail (cdr items)))
        (cond
          ((comma-at-form-p head)
           `(append ,(second head) ,(expand-backquote-list tail)))
          (t
           `(%cons ,(expand-backquote head)
                   ,(expand-backquote-list tail)))))))

(defun expand-backquote (expr)
  (cond
    ((comma-form-p expr) (second expr))
    ((comma-at-form-p expr)
     (error "COMMA-AT is only valid in list context inside BACKQUOTE."))
    ((consp expr) (expand-backquote-list expr))
    (t `(quote ,expr))))

(defun normalize-pseudo-backquote-form (form)
  (cond
    ((backquote-form-p form)
     (expand-backquote (normalize-pseudo-backquote-form (second form))))
    ((comma-form-p form)
     (list 'comma (normalize-pseudo-backquote-form (second form))))
    ((comma-at-form-p form)
     (list 'comma-at (normalize-pseudo-backquote-form (second form))))
    ((consp form)
     (mapcar #'normalize-pseudo-backquote-form form))
    (t form)))

(defun strip-leading-docstring (forms)
  (if (and (consp forms)
           (stringp (first forms)))
      (rest forms)
      forms))

;;; Translation function

(defun parse-lambda-list (raw-params env tags-env blocks-env current-scope)
  (let ((new-env env)
        (required nil)
        (optional nil)
        (rest nil)
        (key nil)
        (allow-other-keys nil)
        (aux nil)
        (state :required))
    (dolist (p raw-params)
      (cond
        ((and (symbolp p) (string-equal (symbol-name p) "&OPTIONAL"))
         (setf state :optional))
        ((and (symbolp p) (string-equal (symbol-name p) "&REST"))
         (setf state :rest))
        ((and (symbolp p) (string-equal (symbol-name p) "&KEY"))
         (setf state :key))
        ((and (symbolp p) (string-equal (symbol-name p) "&ALLOW-OTHER-KEYS"))
         (setf allow-other-keys t))
        ((and (symbolp p) (string-equal (symbol-name p) "&AUX"))
         (setf state :aux))
        (t
         (ecase state
           (:required
            (let ((alpha (gensym (symbol-name p))))
              (push (cons p alpha) new-env)
              (push alpha required)))
           (:optional
            (let* ((name (if (consp p) (car p) p))
                   (init-form (if (consp p) (second p) nil))
                   (supplied-p (if (and (consp p) (third p)) (third p) nil))
                   (alpha (gensym (symbol-name name)))
                   (supplied-p-alpha (when supplied-p (gensym (symbol-name supplied-p))))
                   (init-form-ast (lisp->ast init-form new-env tags-env blocks-env current-scope)))
              (push (cons name alpha) new-env)
              (when supplied-p
                (push (cons supplied-p supplied-p-alpha) new-env))
              (push (list alpha init-form-ast supplied-p-alpha) optional)))
           (:rest
            (let ((alpha (gensym (symbol-name p))))
              (push (cons p alpha) new-env)
              (setf rest alpha)
              (setf state :after-rest)))
           (:key
            (let* ((spec (if (consp p) (car p) p))
                   (keyword (if (consp spec) (car spec) (intern (symbol-name spec) "KEYWORD")))
                   (name (if (consp spec) (cadr spec) spec))
                   (init-form (if (consp p) (second p) nil))
                   (supplied-p (if (and (consp p) (third p)) (third p) nil))
                   (alpha (gensym (symbol-name name)))
                   (supplied-p-alpha (when supplied-p (gensym (symbol-name supplied-p))))
                   (init-form-ast (lisp->ast init-form new-env tags-env blocks-env current-scope)))
              (push (cons name alpha) new-env)
              (when supplied-p
                (push (cons supplied-p supplied-p-alpha) new-env))
              (push (list keyword alpha init-form-ast supplied-p-alpha) key)))
           (:after-rest
            ;; Handle case where a parameter appears after &rest (should be &key)
            (error "Parameters after &rest must be preceded by &key"))
           (:aux
            (let* ((name (if (consp p) (car p) p))
                   (init-form (if (consp p) (second p) nil))
                   (alpha (gensym (symbol-name name)))
                   (init-form-ast (lisp->ast init-form new-env tags-env blocks-env current-scope)))
              (push (cons name alpha) new-env)
              (push (list alpha init-form-ast) aux)))))))
    (let ((required-final (nreverse required))
          (optional-final (nreverse optional))
          (key-final (nreverse key))
          (aux-final (nreverse aux)))
      ;; If &key is present but no &rest, synthesize one.
      (when (and (not rest) key-final)
        (setf rest (gensym "REST_")))
      (values required-final optional-final rest key-final allow-other-keys aux-final new-env))))

(defun collect-option-values (plist indicator)
  (let ((results nil))
    (do ((tail plist (cddr tail)))
        ((null tail))
      (let ((k (car tail))
            (v (cadr tail)))
        (when (eq k indicator)
          (push v results))))
    (nreverse results)))

(defun canonicalize-defclass-slot (slot-spec env tags-env blocks-env current-scope)
  (let* ((name (if (consp slot-spec) (car slot-spec) slot-spec))
         (options (if (consp slot-spec) (cdr slot-spec) nil))
         (initform-specified-p (member :initform options :test #'eq))
         (initform (when initform-specified-p (getf options :initform)))
         (allocation (getf options :allocation :instance))
         (type (getf options :type t))
         (documentation (getf options :documentation nil))
         (accessor (getf options :accessor nil))
         (initargs (collect-option-values options :initarg))
         (readers (append (collect-option-values options :reader)
                          (when accessor (list accessor))))
         (writers (append (collect-option-values options :writer)
                          (when accessor (list `(setf ,accessor)))))
         (initform-ast (when initform-specified-p
                         (lisp->ast initform env tags-env blocks-env current-scope)))
         ;; Captures lexical references by running regular AST analysis for the thunk body.
         (initfunction-ast (when initform-specified-p
                             (lisp->ast `(lambda () ,initform) env tags-env blocks-env current-scope))))
    (list :name name
          :allocation allocation
          :type type
          :documentation documentation
          :initargs initargs
          :readers readers
          :writers writers
          :initform-ast initform-ast
          :initfunction-ast initfunction-ast
          :raw slot-spec)))

(defun canonicalize-defclass-slots (slots env tags-env blocks-env current-scope)
  (mapcar (lambda (slot-spec)
            (canonicalize-defclass-slot slot-spec env tags-env blocks-env current-scope))
          slots))

(defun canonicalize-default-initarg-specs (specs env tags-env blocks-env current-scope)
  (cond
    ((null specs) nil)
    ((and (consp (first specs))
          (not (keywordp (first specs))))
     (mapcar (lambda (spec)
               (let ((initarg (first spec))
                     (initform (second spec)))
                 (list :initarg initarg
                       :initform-ast (lisp->ast initform env tags-env blocks-env current-scope)
                       :initfunction-ast (lisp->ast `(lambda () ,initform) env tags-env blocks-env current-scope)
                       :raw spec)))
             specs))
    (t
     (let ((results nil))
       (do ((tail specs (cddr tail)))
           ((null tail))
         (let ((initarg (car tail))
               (initform (cadr tail)))
           (push (list :initarg initarg
                       :initform-ast (lisp->ast initform env tags-env blocks-env current-scope)
                       :initfunction-ast (lisp->ast `(lambda () ,initform) env tags-env blocks-env current-scope)
                       :raw (list initarg initform))
                 results)))
      (nreverse results)))))

(defun canonicalize-defclass-default-initargs (options env tags-env blocks-env current-scope)
  (let ((default-option (find-if (lambda (opt)
                                   (and (consp opt)
                                        (eq (car opt) :default-initargs)))
                                 options)))
    (canonicalize-default-initarg-specs (when default-option (cdr default-option))
                                        env tags-env blocks-env current-scope)))

(defun make-defclass-runtime-call-ast (name superclasses slots default-initargs options env tags-env blocks-env current-scope)
  (make-instance 'ast-clr-call
                 :type-name "[LispBase]Lisp.MopRuntime"
                 :method-name "EnsureClassFromDefclassForm"
                 :return-type "object"
                 :arg-types '("object" "object" "object" "object" "object")
                 :arguments (list (lisp->ast `(quote ,name) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,superclasses) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,slots) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,default-initargs) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,options) env tags-env blocks-env current-scope))))

(defun make-defgeneric-runtime-call-ast (name lambda-list options env tags-env blocks-env current-scope)
  (make-instance 'ast-clr-call
                 :type-name "[LispBase]Lisp.MopRuntime"
                 :method-name "EnsureGenericFunctionFromDefgenericForm"
                 :return-type "object"
                 :arg-types '("object" "object" "object")
                 :arguments (list (lisp->ast `(quote ,name) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,lambda-list) env tags-env blocks-env current-scope)
                                  (lisp->ast `(quote ,options) env tags-env blocks-env current-scope))))

(defun method-parameter-name-from-specializer (param-spec)
  (if (consp param-spec)
      (first param-spec)
      param-spec))

(defun make-defmethod-runtime-call-ast (name qualifiers specialized-lambda-list body options env tags-env blocks-env current-scope)
  (let* ((method-lambda-list (mapcar #'method-parameter-name-from-specializer specialized-lambda-list))
         (method-lambda-form
          `(lambda ,method-lambda-list
             (flet ((call-next-method (&rest args)
                      (dotnet-call-static "Lisp.MopRuntime" "CallNextMethodFromLisp" args))
                    (next-method-p ()
                      (dotnet-call-static "Lisp.MopRuntime" "NextMethodP")))
               ,@body))))
    (make-instance 'ast-clr-call
                   :type-name "[LispBase]Lisp.MopRuntime"
                   :method-name "AddMethodFromDefmethodForm"
                   :return-type "object"
                   :arg-types '("object" "object" "object" "object" "object")
                   :arguments (list (lisp->ast `(quote ,name) env tags-env blocks-env current-scope)
                                    (lisp->ast `(quote ,qualifiers) env tags-env blocks-env current-scope)
                                    (lisp->ast `(quote ,specialized-lambda-list) env tags-env blocks-env current-scope)
                                    (lisp->ast method-lambda-form env tags-env blocks-env current-scope)
                                    (lisp->ast `(quote ,options) env tags-env blocks-env current-scope)))))

(defun lisp->ast (expr &optional env tags-env blocks-env current-scope)
  "Translates a Lisp s-expression into an AST node, applying alpha renaming and macroexpansion."
  (unless current-scope (setq current-scope (gensym "TOPLEVEL_SCOPE_")))
  (multiple-value-bind (expanded expanded-p) (clrhack-macroexpand-1 expr)
    (if expanded-p
        (return-from lisp->ast (lisp->ast expanded env tags-env blocks-env current-scope))))
  (cond
    ((or (numberp expr) (stringp expr) (characterp expr) (vectorp expr) (keywordp expr) (eq expr t) (eq expr nil))
     (make-instance 'ast-literal :value expr))
    ((symbolp expr)
     (let ((alpha (or (cdr (assoc expr env)) expr)))
       (make-instance 'ast-variable :name expr :alpha-name alpha)))

    ((consp expr)
     (let ((op (car expr))
           (args (cdr expr)))
       (when (and (symbolp op)
                  (string-equal (symbol-name op) "DEFUN"))
         (return-from lisp->ast
           (let* ((name (first args))
                  (raw-params (second args))
                  (body (strip-leading-docstring (cddr args)))
                  (new-scope (gensym "SCOPE_")))
             (if (null env)
                 (multiple-value-bind (required optional rest key allow-other-keys aux new-env)
                     (parse-lambda-list raw-params env tags-env blocks-env new-scope)
                   (make-instance 'ast-toplevel-defun
                                  :name name
                                  :params required
                                  :optional-params optional
                                  :rest-param rest
                                  :key-params key
                                  :allow-other-keys allow-other-keys
                                  :aux-params aux
                                  :body (list (lisp->ast `(block ,name (progn ,@body)) new-env tags-env blocks-env new-scope))))
                 (lisp->ast `(setq ,name (lambda ,raw-params (block ,name (progn ,@body)))) env tags-env blocks-env current-scope)))))
       (case op
         ((+ - * / %ADD %SUB %MUL %DIV)
          (if (> (length args) 2)
              (lisp->ast `(,op (,op ,(first args) ,(second args)) ,@(cddr args)) env tags-env blocks-env current-scope)
              (make-instance 'ast-application
                             :operator (lisp->ast op env tags-env blocks-env current-scope)
                             :operands (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) args))))
         ((backquote)
          (lisp->ast (expand-backquote (car args)) env tags-env blocks-env current-scope))
         (quote
          (lisp->ast (expand-quote (car args)) env tags-env blocks-env current-scope))
         (if
          (make-instance 'ast-if
                         :test (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :consequent (lisp->ast (second args) env tags-env blocks-env current-scope)
                         :alternate (if (cddr args) (lisp->ast (third args) env tags-env blocks-env current-scope) (make-instance 'ast-literal :value nil))))
         (progn
          (make-instance 'ast-progn
                         :forms (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) args)))
          ((declaim declare)
           ;; Declarations are compile-time metadata only in this pipeline.
           (make-instance 'ast-literal :value nil))
         (setq
          (let* ((var-name (first args))
                 (alpha (or (cdr (assoc var-name env)) var-name)))
            (make-instance 'ast-setq
                           :name (make-instance 'ast-variable :name var-name :alpha-name alpha)
                           :value (lisp->ast (second args) env tags-env blocks-env current-scope))))
         (tagbody
          (let* ((new-tags-env tags-env)
                 (tags (remove-if-not (lambda (x) (or (symbolp x) (integerp x))) args))
                 (tag-labels (mapcar (lambda (tag)
                                       (let* ((sanitized (sanitize-identifier (format nil "~A" tag)))
                                              (label (string (gensym (format nil "TAG_~A_" sanitized))))
                                              (tag-id (next-tag-id)))
                                         (push (list tag label tag-id current-scope) new-tags-env)
                                         (list tag label tag-id)))
                                     tags)))
            (make-instance 'ast-tagbody
                           :statements (mapcar (lambda (form)
                                                 (if (or (symbolp form) (integerp form))
                                                     (let ((info (assoc form new-tags-env)))
                                                       (make-instance 'ast-label :label (second info) :id (third info)))
                                                     (lisp->ast form env new-tags-env blocks-env current-scope)))
                                               args)
                           :labels (mapcar (lambda (tl) (cons (car tl) (third tl))) tag-labels))))

         (go
          (let* ((tag (first args))
                 (info (assoc tag tags-env)))
            (unless info (error "GO: Tag not found in lexical environment."))
            (destructuring-bind (tag-name label tag-id scope) info
               (declare (ignore tag-name))
               (make-instance 'ast-go 
                              :tag-label label 
                              :tag-id tag-id
                              :non-local-p (not (eq scope current-scope))))))

         (block
          (let* ((name (first args))
                 (sanitized-name (sanitize-identifier (format nil "~A" name)))
              (block-id (string (gensym (format nil "BLOCK_ID_~A_" sanitized-name))))
                 (end-label (string (gensym (format nil "BLOCK_END_~A_" sanitized-name))))
                 (result-temp (string (gensym (format nil "BLOCK_RESULT_~A_" sanitized-name))))
              (needs-catch-cell (list nil))
              (new-blocks-env (cons (list name block-id end-label result-temp needs-catch-cell current-scope) blocks-env))
              (body-asts (mapcar (lambda (e) (lisp->ast e env tags-env new-blocks-env current-scope)) (rest args))))
            (make-instance 'ast-block
                           :name name
                  :id block-id
                           :end-label end-label
                           :result-temp result-temp
                  :needs-catch-frame-p (car needs-catch-cell)
                  :body body-asts)))

         (return-from
          (let* ((name (first args))
                 (info (assoc name blocks-env)))
            (unless info (error "RETURN-FROM: Block ~A not found in lexical environment." name))
          (destructuring-bind (block-name block-id end-label result-temp needs-catch-cell scope) info
               (declare (ignore block-name))
            (when (not (eq scope current-scope))
              (setf (car needs-catch-cell) t))
               (make-instance 'ast-return-from
                              :name name
                      :target-id block-id
                              :target-label end-label
                              :result-temp result-temp
                              :non-local-p (not (eq scope current-scope))
                              :value (lisp->ast (second args) env tags-env blocks-env current-scope)))))


         (function
          (let ((thing (first args)))
            (if (and (consp thing) (eq (car thing) 'lambda))
                (lisp->ast thing env tags-env blocks-env current-scope)
                (make-instance 'ast-literal :value thing))))

         (unwind-protect
          (make-instance 'ast-unwind-protect
                         :protected-form (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :cleanup-forms (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (catch
          (make-instance 'ast-catch
                         :tag (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :body (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (throw
          (make-instance 'ast-throw
                         :tag (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :value (lisp->ast (second args) env tags-env blocks-env current-scope)))

         (values
          (make-instance 'ast-values
                         :values (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) args)))

         (multiple-value-bind
          (let* ((vars (first args))
                 (values-form (lisp->ast (second args) env tags-env blocks-env current-scope))
                 (body-forms (cddr args))
                 (new-env env)
                 (alpha-vars (mapcar (lambda (v)
                                       (let ((alpha (gensym (symbol-name v))))
                                         (push (cons v alpha) new-env)
                                         alpha))
                                     vars)))
            (make-instance 'ast-multiple-value-bind
                           :vars alpha-vars
                           :values-form values-form
                           :body (mapcar (lambda (e) (lisp->ast e new-env tags-env blocks-env current-scope)) body-forms))))

         (multiple-value-call
          (make-instance 'ast-multiple-value-call
                         :function-form (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :arguments-forms (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (multiple-value-prog1
          (make-instance 'ast-multiple-value-prog1
                         :first-form (lisp->ast (first args) env tags-env blocks-env current-scope)
                         :other-forms (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (restart-bind
          (let* ((bindings (first args))
                 (body-forms (rest args))
                 (analyzed-bindings
                  (mapcar (lambda (b)
                            (let ((name (make-instance 'ast-literal :value (first b)))
                                  (fn (lisp->ast (second b) env tags-env blocks-env current-scope))
                                  (keys (cddr b)))
                              (list name fn
                                    (lisp->ast (getf keys :report-function) env tags-env blocks-env current-scope)
                                    (lisp->ast (getf keys :interactive-function) env tags-env blocks-env current-scope)
                                    (lisp->ast (getf keys :test-function) env tags-env blocks-env current-scope))))
                          bindings)))
            (make-instance 'ast-restart-bind
                           :bindings analyzed-bindings
                           :body (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) body-forms))))

         (handler-bind
          (let* ((bindings (first args))
                 (body-forms (rest args))
                 (analyzed-bindings
                  (mapcar (lambda (b)
                            (list (make-instance 'ast-literal :value (first b))
                                  (lisp->ast (second b) env tags-env blocks-env current-scope)))
                          bindings)))
            (make-instance 'ast-handler-bind
                           :bindings analyzed-bindings
                           :body (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) body-forms))))

         (reflect
          (make-instance 'ast-reflection
                         :operation (first args)
                         :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (system:call-static-method
          (make-instance 'ast-dotnet-static-call
                         :method-name (first args)
                         :arguments (mapcar (lambda (a) (lisp->ast a env tags-env blocks-env current-scope)) (rest args))))
         (system:call-instance-method
          (make-instance 'ast-dotnet-instance-call
                         :method-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)
                         :arguments (mapcar (lambda (a) (lisp->ast a env tags-env blocks-env current-scope)) (cddr args))))
         (system:get-static-property
          (make-instance 'ast-dotnet-property :property-name (first args)))
         (system:get-instance-property
          (make-instance 'ast-dotnet-instance-property
                         :property-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)))
         (system:get-static-field
          (make-instance 'ast-dotnet-field :field-name (first args)))
         (system:get-instance-field
          (make-instance 'ast-dotnet-instance-field
                         :field-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)))

         (defmacro
          (let ((name (first args))
                (params (second args))
                (body (cddr args)))
            ;; Register macro at compile-time (host Lisp)
            (let* ((normalized-body (mapcar #'normalize-pseudo-backquote-form body))
                   (expander (eval `(lambda ,params (progn ,@normalized-body)))))
              (register-macro name expander))
            ;; Emit nil in AST (macro definition itself doesn't generate IL)
            (make-instance 'ast-literal :value nil)))

         (clr-call
          (let ((sig (third args)))
            (make-instance 'ast-clr-call
                           :type-name (first args)
                           :method-name (second args)
                           :return-type (if (consp sig) (car sig) sig)
                           :arg-types (if (consp sig) (cdr sig) nil)
                           :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (nthcdr 3 args)))))

         (clr-call-virt
          (let ((sig (fourth args)))
            (make-instance 'ast-clr-call-virt
                           :instance (lisp->ast (first args) env tags-env blocks-env current-scope)
                           :type-name (second args)
                           :method-name (third args)
                           :return-type (if (consp sig) (car sig) sig)
                           :arg-types (if (consp sig) (cdr sig) nil)
                           :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (nthcdr 4 args)))))

         (clr-new
          (make-instance 'ast-clr-new
                         :type-name (first args)
                         :arg-types (second args)
                         :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (cddr args))))


         (clr-field
          (make-instance 'ast-clr-field
                         :type-name (first args)
                         :field-name (second args)
                         :instance (when (third args) (lisp->ast (third args) env tags-env blocks-env current-scope))))

         (dotnet-static-call
          (make-instance 'ast-dotnet-static-call
                         :method-name (first args)
                         :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (rest args))))

         (dotnet-instance-call
          (make-instance 'ast-dotnet-instance-call
                         :method-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)
                         :arguments (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) (cddr args))))

         (dotnet-property
          (make-instance 'ast-dotnet-property
                         :property-name (first args)))

         (dotnet-instance-property
          (make-instance 'ast-dotnet-instance-property
                         :property-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)))

         (dotnet-field
          (make-instance 'ast-dotnet-field
                         :field-name (first args)))

         (dotnet-instance-field
          (make-instance 'ast-dotnet-instance-field
                         :field-name (first args)
                         :instance (lisp->ast (second args) env tags-env blocks-env current-scope)))

          (clr-defclass
           (let* ((name (first args))
             (superclasses (second args))
             (slots (third args))
             (options (cdddr args))
             (canonical-slots (canonicalize-defclass-slots slots env tags-env blocks-env current-scope))
             (canonical-default-initargs (canonicalize-defclass-default-initargs options env tags-env blocks-env current-scope)))
             (make-instance 'ast-class
                  :name name
                  :superclasses superclasses
                  :slots slots
                  :canonical-slots canonical-slots
                  :canonical-default-initargs canonical-default-initargs
                  :options options)))

         (defclass
          (let* ((name (first args))
                 (superclasses (second args))
                 (slots (third args))
             (options (cdddr args))
             (canonical-slots (canonicalize-defclass-slots slots env tags-env blocks-env current-scope))
             (canonical-default-initargs (canonicalize-defclass-default-initargs options env tags-env blocks-env current-scope))
             (default-option (find-if (lambda (opt)
                    (and (consp opt)
                    (eq (car opt) :default-initargs)))
                  options))
             (default-initargs-raw (when default-option (cdr default-option)))
             (class-node (make-instance 'ast-class
                    :name name
                    :superclasses superclasses
                    :slots slots
                    :canonical-slots canonical-slots
                    :canonical-default-initargs canonical-default-initargs
                    :options options))
             (runtime-call (make-defclass-runtime-call-ast
                  name
                  superclasses
                  slots
                  default-initargs-raw
                  options
                  env
                  tags-env
                  blocks-env
                  current-scope)))
             ;; Keep ast-class metadata for existing pipelines while evaluating DEFCLASS via MOP runtime.
             (make-instance 'ast-progn :forms (list class-node runtime-call))))

          (defgeneric
           (let* ((name (first args))
                (lambda-list (second args))
                (options (cddr args))
                (runtime-call (make-defgeneric-runtime-call-ast
                         name
                         lambda-list
                         options
                         env
                         tags-env
                         blocks-env
                         current-scope)))
             (make-instance 'ast-setq
                            :name (make-instance 'ast-variable :name name :alpha-name name)
                            :value runtime-call)))

              (clr-defmethod
               (let* ((name (first args))
                 (rest-args (rest args))
                 (qualifiers (let ((results nil))
                               (do ((tail rest-args (cdr tail)))
                                   ((or (null tail) (not (and (atom (car tail)) (not (null (car tail)))))))
                                 (push (car tail) results))
                               (nreverse results)))
                 (after-qualifiers (nthcdr (length qualifiers) rest-args))
                 (lambda-list (first after-qualifiers))
                  (body (strip-leading-docstring (rest after-qualifiers)))
                 (new-scope (gensym "SCOPE_")))
                 (make-instance 'ast-method
                      :name name
                      :qualifiers qualifiers
                      :specialized-lambda-list lambda-list
                      :body (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env new-scope)) body))))

         (defmethod
          (let* ((name (first args))
                 (rest-args (rest args))
                 (qualifiers (let ((results nil))
                               (do ((tail rest-args (cdr tail)))
                                   ((or (null tail) (not (and (atom (car tail)) (not (null (car tail)))))))
                                 (push (car tail) results))
                               (nreverse results)))
                 (after-qualifiers (nthcdr (length qualifiers) rest-args))
                 (lambda-list (first after-qualifiers))
             (body (strip-leading-docstring (rest after-qualifiers))))
            (let* ((new-scope (gensym "SCOPE_"))
                   (method-node (make-instance 'ast-method
                                     :name name
                                     :qualifiers qualifiers
                                     :specialized-lambda-list lambda-list
                                     :body (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env new-scope)) body)))
                   (runtime-call (make-defmethod-runtime-call-ast
                             name
                             qualifiers
                             lambda-list
                             body
                             nil
                             env
                             tags-env
                             blocks-env
                             current-scope)))
              (make-instance 'ast-progn :forms (list method-node runtime-call)))))
         (%let
          (let* ((new-env env)
                 (bindings (mapcar (lambda (b)
                                     (let* ((name (if (consp b) (car b) b))
                                            (val (if (consp b) (lisp->ast (cadr b) env tags-env blocks-env current-scope) (make-instance 'ast-literal :value nil)))
                                            (alpha (gensym (string name))))
                                       (push (cons name alpha) new-env)
                                       (list alpha val)))
                                   (first args))))
            (make-instance 'ast-let
                           :bindings bindings
                           :body (mapcar (lambda (form) (lisp->ast form new-env tags-env blocks-env current-scope)) (rest args)))))
         (lambda
          (let ((new-scope (gensym "SCOPE_")))
            (multiple-value-bind (required optional rest key allow-other-keys aux new-env)
                (parse-lambda-list (first args) env tags-env blocks-env new-scope)
              (let ((body-forms (strip-leading-docstring (rest args))))
              (make-instance 'ast-lambda
                             :params required
                             :optional-params optional
                             :rest-param rest
                             :key-params key
                             :allow-other-keys allow-other-keys
                             :aux-params aux
                             :body (mapcar (lambda (e) (lisp->ast e new-env tags-env blocks-env new-scope)) body-forms))))))
         (t
          (if (and (consp op)
                   (member (car op) '(dotnet-static-call dotnet-instance-call dotnet-property dotnet-instance-property dotnet-field dotnet-instance-field)))
              (lisp->ast (append op args) env tags-env blocks-env current-scope)
              (make-instance 'ast-application
                             :operator (if (symbolp op)
                                           (let ((alpha (cdr (assoc op env))))
                                             (make-instance 'ast-variable :name op :alpha-name (or alpha op)))
                                           (lisp->ast op env tags-env blocks-env current-scope))
                             :operands (mapcar (lambda (e) (lisp->ast e env tags-env blocks-env current-scope)) args)))))))
    (t (error "Unknown expression type: ~A" expr))))

;;; Scope Analysis

(defun lookup-variable (env var)
  "Looks up a variable in the environment and returns its scope type:
   :argument, :local, :lexical, or :global."
  (let ((crossed-lambda-p nil))
    (dolist (frame env)
      (let ((frame-type (car frame))
            (vars (cdr frame)))
        (if (member var vars :test #'eq)
            (return-from lookup-variable
              (if crossed-lambda-p
                  :lexical
                  (ecase frame-type
                    (:lambda :argument)
                    (:let :local))))
            (when (eq frame-type :lambda)
              (setq crossed-lambda-p t)))))
    :global))

(defun find-mutated-variables (node &optional env)
  "Returns a list of alpha-names of variables that are targets of SETQ in the AST, considering their scope correctly."
  (labels ((traverse (n curr-env)
             (typecase n
               (ast-literal nil)
               (ast-variable nil)
               (ast-if (append (traverse (ast-if-test n) curr-env)
                               (traverse (ast-if-consequent n) curr-env)
                               (traverse (ast-if-alternate n) curr-env)))
               (ast-progn (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) (ast-progn-forms n))))
               (ast-setq
                (let* ((var-alpha (ast-variable-alpha-name (ast-setq-name n)))
                       (scope (lookup-variable curr-env var-alpha)))
                  (if (not (eq scope :global))
                      (cons var-alpha (traverse (ast-setq-value n) curr-env))
                      (traverse (ast-setq-value n) curr-env))))
               (ast-let
                (let* ((bound-vars (mapcar #'car (ast-let-bindings n)))
                       (inner-env (cons (cons :let bound-vars) curr-env)))
                  (append (reduce #'append (mapcar (lambda (b) (traverse (cadr b) curr-env)) (ast-let-bindings n)))
                          (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) (ast-let-body n))))))
               (ast-lambda
                (let* ((params (ast-lambda-params n))
                       (opt-params (ast-lambda-optional-params n))
                       (rest-param (ast-lambda-rest-param n))
                       (key-params (ast-lambda-key-params n))
                       (aux-params (ast-lambda-aux-params n))
                       (all-bound-vars (append params
                                               (mapcan (lambda (p) (if (third p) (list (first p) (third p)) (list (first p)))) opt-params)
                                               (when rest-param (list rest-param))
                                               (mapcan (lambda (p) (if (fourth p) (list (second p) (fourth p)) (list (second p)))) key-params)
                                               (mapcar #'car aux-params)))
                       (inner-env (cons (cons :lambda all-bound-vars) curr-env)))
                  (append (reduce #'append (mapcar (lambda (opt) (traverse (second opt) inner-env)) opt-params))
                          (reduce #'append (mapcar (lambda (key) (traverse (third key) inner-env)) key-params))
                          (reduce #'append (mapcar (lambda (aux) (traverse (second aux) inner-env)) aux-params))
                          (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) (ast-lambda-body n))))))
               (ast-toplevel-defun
                (let* ((params (ast-toplevel-defun-params n))
                       (opt-params (ast-toplevel-defun-optional-params n))
                       (rest-param (ast-toplevel-defun-rest-param n))
                       (key-params (ast-toplevel-defun-key-params n))
                       (aux-params (ast-toplevel-defun-aux-params n))
                       (all-bound-vars (append params
                                               (mapcan (lambda (p) (if (third p) (list (first p) (third p)) (list (first p)))) opt-params)
                                               (when rest-param (list rest-param))
                                               (mapcan (lambda (p) (if (fourth p) (list (second p) (fourth p)) (list (second p)))) key-params)
                                               (mapcar #'car aux-params)))
                       (inner-env (cons (cons :lambda all-bound-vars) curr-env)))
                  (append (reduce #'append (mapcar (lambda (opt) (traverse (second opt) inner-env)) opt-params))
                          (reduce #'append (mapcar (lambda (key) (traverse (third key) inner-env)) key-params))
                          (reduce #'append (mapcar (lambda (aux) (traverse (second aux) inner-env)) aux-params))
                          (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) (ast-toplevel-defun-body n))))))
               (ast-class nil)
               (ast-method
                (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) (ast-method-body n))))
               (ast-application
                (append (traverse (ast-application-operator n) curr-env)
                        (reduce #'append (mapcar (lambda (op) (traverse op curr-env)) (ast-application-operands n)))))
               (ast-clr-call
                (reduce #'append (mapcar (lambda (arg) (traverse arg curr-env)) (ast-clr-call-arguments n))))
               (ast-clr-call-virt
                (append (traverse (ast-clr-call-virt-instance n) curr-env)
                        (reduce #'append (mapcar (lambda (arg) (traverse arg curr-env)) (ast-clr-call-virt-arguments n)))))
               (ast-clr-new
                (reduce #'append (mapcar (lambda (arg) (traverse arg curr-env)) (ast-clr-new-arguments n))))
               (ast-clr-field
                (if (ast-clr-field-instance n) (traverse (ast-clr-field-instance n) curr-env) nil))
               (ast-dotnet-static-call
                (reduce #'append (mapcar (lambda (arg) (traverse arg curr-env)) (ast-dotnet-static-call-arguments n))))
               (ast-dotnet-instance-call
                (append (traverse (ast-dotnet-instance-call-instance n) curr-env)
                        (reduce #'append (mapcar (lambda (arg) (traverse arg curr-env)) (ast-dotnet-instance-call-arguments n)))))
               (ast-dotnet-property nil)
               (ast-dotnet-instance-property
                (traverse (ast-dotnet-instance-property-instance n) curr-env))
               (ast-dotnet-field nil)
               (ast-dotnet-instance-field
                (traverse (ast-dotnet-instance-field-instance n) curr-env))
               (ast-tagbody
                (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) 
                                         (remove-if (lambda (s) (typep s 'ast-label)) 
                                                    (ast-tagbody-statements n)))))
               (ast-go nil)
               (ast-label nil)
               (ast-unwind-protect
                (append (traverse (ast-unwind-protect-protected-form n) curr-env)
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) 
                                                 (ast-unwind-protect-cleanup-forms n)))))
               (ast-block
                (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) (ast-block-body n))))
               (ast-return-from
                (traverse (ast-return-from-value n) curr-env))
               (ast-catch
                (append (traverse (ast-catch-tag n) curr-env)
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) (ast-catch-body n)))))
               (ast-throw
                (append (traverse (ast-throw-tag n) curr-env)
                        (traverse (ast-throw-value n) curr-env)))
               (ast-values
                (reduce #'append (mapcar (lambda (v) (traverse v curr-env)) (ast-values-values n))))
               (ast-multiple-value-bind
                (let* ((bound-vars (ast-multiple-value-bind-vars n))
                       (inner-env (cons (cons :let bound-vars) curr-env)))
                  (append (traverse (ast-multiple-value-bind-values-form n) curr-env)
                          (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) 
                                                   (ast-multiple-value-bind-body n))))))
               (ast-multiple-value-call
                (append (traverse (ast-multiple-value-call-function-form n) curr-env)
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) 
                                                 (ast-multiple-value-call-arguments-forms n)))))
               (ast-multiple-value-prog1
                (append (traverse (ast-multiple-value-prog1-first-form n) curr-env)
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) 
                                                 (ast-multiple-value-prog1-other-forms n)))))
               (ast-restart-bind
                (append (reduce #'append (mapcar (lambda (b)
                                                   (append (traverse (second b) curr-env)
                                                           (traverse (third b) curr-env)
                                                           (traverse (fourth b) curr-env)
                                                           (traverse (fifth b) curr-env)))
                                                 (ast-restart-bind-bindings n)))
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env))
                                                 (ast-restart-bind-body n)))))
               (ast-handler-bind
                (append (reduce #'append (mapcar (lambda (b) (traverse (second b) curr-env))
                                                 (ast-handler-bind-bindings n)))
                        (reduce #'append (mapcar (lambda (form) (traverse form curr-env))
                                                 (ast-handler-bind-body n)))))
               (ast-reflection
                (reduce #'append (mapcar (lambda (e) (traverse e curr-env))
                                         (ast-reflection-arguments n)))))))
    (remove-duplicates (traverse node env))))



(defgeneric analyze-environment (node env &optional mutated)
  (:documentation "Walks the AST, returning a new tree with variables typed by their scope."))

(defmethod analyze-environment :around (node env &optional mutated)
  (if mutated
      (call-next-method)
      (call-next-method node env (find-mutated-variables node env))))

(defmethod analyze-environment ((node ast-literal) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-variable) env &optional mutated)
  (let* ((name (ast-variable-name node))
         (alpha (ast-variable-alpha-name node))
         (scope (lookup-variable env alpha))
         (var-node
          (ecase scope
            (:argument (make-instance 'ast-argument-variable :name name :alpha-name alpha))
            (:local (make-instance 'ast-local-variable :name name :alpha-name alpha))
            (:lexical (make-instance 'ast-lexical-variable :name name :alpha-name alpha))
            (:global (make-instance 'ast-global-variable :name name :alpha-name alpha)))))
    (if (and (not (eq scope :global)) (member alpha mutated :test #'eq))
        ;; Replace reference with call to %cell-value
        (make-instance 'ast-application
                       :operator (make-instance 'ast-global-variable :name '%cell-value :alpha-name '%cell-value)
                       :operands (list var-node))
        var-node)))

(defmethod analyze-environment ((node ast-if) env &optional mutated)
  (make-instance 'ast-if
                 :test (analyze-environment (ast-if-test node) env mutated)
                 :consequent (analyze-environment (ast-if-consequent node) env mutated)
                 :alternate (analyze-environment (ast-if-alternate node) env mutated)))

(defmethod analyze-environment ((node ast-progn) env &optional mutated)
  (make-instance 'ast-progn
                 :forms (mapcar (lambda (form) (analyze-environment form env mutated))
                                (ast-progn-forms node))))

(defmethod analyze-environment ((node ast-setq) env &optional mutated)
  (let ((name (ast-variable-name (ast-setq-name node)))
        (alpha (ast-variable-alpha-name (ast-setq-name node)))
        (value (analyze-environment (ast-setq-value node) env mutated)))
    (let ((scope (lookup-variable env alpha)))
      (if (and (not (eq scope :global)) (member alpha mutated :test #'eq))
          ;; Replace assignment with call to %set-cell-value!
          (let ((var-node
                 (ecase scope
                   (:argument (make-instance 'ast-argument-variable :name name :alpha-name alpha))
                   (:local (make-instance 'ast-local-variable :name name :alpha-name alpha))
                   (:lexical (make-instance 'ast-lexical-variable :name name :alpha-name alpha)))))
            (make-instance 'ast-application
                           :operator (make-instance 'ast-global-variable :name '%set-cell-value! :alpha-name '%set-cell-value!)
                           :operands (list var-node value)))
          (make-instance 'ast-setq
                         :name (analyze-environment (ast-setq-name node) env mutated)
                         :value value)))))

(defmethod analyze-environment ((node ast-let) env &optional mutated)
  ;; LET evaluates its init-forms in the outer environment.
  (let* ((analyzed-bindings
          (mapcar (lambda (b)
                    (let* ((alpha (car b))
                           (val (analyze-environment (cadr b) env mutated)))
                      (if (member alpha mutated :test #'eq)
                          (list alpha (make-instance 'ast-application
                                                    :operator (make-instance 'ast-global-variable :name '%make-cell :alpha-name '%make-cell)
                                                    :operands (list val)))
                          (list alpha val))))
                  (ast-let-bindings node)))
         (bound-vars (mapcar #'car (ast-let-bindings node)))
         (inner-env (cons (cons :let bound-vars) env)))
    (make-instance 'ast-let
                   :bindings analyzed-bindings
                   :body (mapcar (lambda (form) (analyze-environment form inner-env mutated))
                                 (ast-let-body node)))))

(defmethod analyze-environment ((node ast-lambda) env &optional mutated)
  ;; LAMBDA parameters are evaluated in the inner environment.
  (let* ((params (ast-lambda-params node))
         (opt-params (ast-lambda-optional-params node))
         (rest-param (ast-lambda-rest-param node))
         (key-params (ast-lambda-key-params node))
         (aux-params (ast-lambda-aux-params node))
         (all-params (append params
                             (mapcan (lambda (p) (if (third p) (list (first p) (third p)) (list (first p)))) opt-params)
                             (when rest-param (list rest-param))
                             (mapcan (lambda (p) (if (fourth p) (list (second p) (fourth p)) (list (second p)))) key-params)
                             (mapcar #'car aux-params)))
         (inner-env (cons (cons :lambda all-params) env))
         (analyzed-opt-params
          (mapcar (lambda (p) (list (first p) (analyze-environment (second p) inner-env mutated) (third p))) opt-params))
         (analyzed-key-params
          (mapcar (lambda (p) (list (first p) (second p) (analyze-environment (third p) inner-env mutated) (fourth p))) key-params))
         (analyzed-aux-params
          (mapcar (lambda (p) (list (first p) (analyze-environment (second p) inner-env mutated))) aux-params))
         (mutated-params (remove-if-not (lambda (p) (member p mutated :test #'eq)) all-params)))
    (if mutated-params
        (let* ((let-env (cons (cons :let mutated-params) inner-env))
               (cell-bindings
                (mapcar (lambda (p)
                          (list p (make-instance 'ast-application
                                                 :operator (make-instance 'ast-global-variable :name '%make-cell :alpha-name '%make-cell)
                                                 :operands (list (make-instance 'ast-argument-variable :name p :alpha-name p)))))
                        mutated-params))
               (let-node (make-instance 'ast-let 
                                        :bindings cell-bindings
                                        :body (mapcar (lambda (form) (analyze-environment form let-env mutated))
                                                      (ast-lambda-body node)))))
          (make-instance 'ast-lambda
                         :params params
                         :optional-params analyzed-opt-params
                         :rest-param rest-param
                         :key-params analyzed-key-params
                         :allow-other-keys (ast-lambda-allow-other-keys node)
                         :aux-params analyzed-aux-params
                         :body (list let-node)))
        (make-instance 'ast-lambda
                       :params params
                       :optional-params analyzed-opt-params
                       :rest-param rest-param
                       :key-params analyzed-key-params
                       :allow-other-keys (ast-lambda-allow-other-keys node)
                       :aux-params analyzed-aux-params
                       :body (mapcar (lambda (form) (analyze-environment form inner-env mutated))
                                     (ast-lambda-body node))))))

(defmethod analyze-environment ((node ast-application) env &optional mutated)
  (make-instance 'ast-application
                 :operator (analyze-environment (ast-application-operator node) env mutated)
                 :operands (mapcar (lambda (op) (analyze-environment op env mutated))
                                   (ast-application-operands node))))

(defmethod analyze-environment ((node ast-clr-call) env &optional mutated)
  (make-instance 'ast-clr-call
                 :type-name (ast-clr-call-type-name node)
                 :method-name (ast-clr-call-method-name node)
                 :return-type (ast-clr-call-return-type node)
                 :arg-types (ast-clr-call-arg-types node)
                 :arguments (mapcar (lambda (arg) (analyze-environment arg env mutated))
                                    (ast-clr-call-arguments node))))

(defmethod analyze-environment ((node ast-clr-call-virt) env &optional mutated)
  (make-instance 'ast-clr-call-virt
                 :instance (analyze-environment (ast-clr-call-virt-instance node) env mutated)
                 :type-name (ast-clr-call-virt-type-name node)
                 :method-name (ast-clr-call-virt-method-name node)
                 :return-type (ast-clr-call-virt-return-type node)
                 :arg-types (ast-clr-call-virt-arg-types node)
                 :arguments (mapcar (lambda (arg) (analyze-environment arg env mutated))
                                    (ast-clr-call-virt-arguments node))))

(defmethod analyze-environment ((node ast-clr-new) env &optional mutated)
  (make-instance 'ast-clr-new
                 :type-name (ast-clr-new-type-name node)
                 :arg-types (ast-clr-new-arg-types node)
                 :arguments (mapcar (lambda (arg) (analyze-environment arg env mutated))
                                    (ast-clr-new-arguments node))))

(defmethod analyze-environment ((node ast-clr-field) env &optional mutated)
  (make-instance 'ast-clr-field
                 :type-name (ast-clr-field-type-name node)
                 :field-name (ast-clr-field-field-name node)
                 :instance (when (ast-clr-field-instance node)
                             (analyze-environment (ast-clr-field-instance node) env mutated))))

(defmethod analyze-environment ((node ast-dotnet-static-call) env &optional mutated)
  (make-instance 'ast-dotnet-static-call
                 :method-name (ast-dotnet-static-call-method-name node)
                 :arguments (mapcar (lambda (arg) (analyze-environment arg env mutated))
                                    (ast-dotnet-static-call-arguments node))))

(defmethod analyze-environment ((node ast-dotnet-instance-call) env &optional mutated)
  (make-instance 'ast-dotnet-instance-call
                 :method-name (ast-dotnet-instance-call-method-name node)
                 :instance (analyze-environment (ast-dotnet-instance-call-instance node) env mutated)
                 :arguments (mapcar (lambda (arg) (analyze-environment arg env mutated))
                                    (ast-dotnet-instance-call-arguments node))))

(defmethod analyze-environment ((node ast-dotnet-property) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-dotnet-instance-property) env &optional mutated)
  (make-instance 'ast-dotnet-instance-property
                 :property-name (ast-dotnet-instance-property-name node)
                 :instance (analyze-environment (ast-dotnet-instance-property-instance node) env mutated)))

(defmethod analyze-environment ((node ast-dotnet-field) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-dotnet-instance-field) env &optional mutated)
  (make-instance 'ast-dotnet-instance-field
                 :field-name (ast-dotnet-instance-field-name node)
                 :instance (analyze-environment (ast-dotnet-instance-field-instance node) env mutated)))

(defmethod analyze-environment ((node ast-tagbody) env &optional mutated)
  (make-instance 'ast-tagbody
                 :statements (mapcar (lambda (form) (analyze-environment form env mutated))
                                     (ast-tagbody-statements node))
                 :labels (ast-tagbody-labels node)
                 :id (ast-tagbody-id node)))

(defmethod analyze-environment ((node ast-go) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-label) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-unwind-protect) env &optional mutated)
  (make-instance 'ast-unwind-protect
                 :protected-form (analyze-environment (ast-unwind-protect-protected-form node) env mutated)
                 :cleanup-forms (mapcar (lambda (form) (analyze-environment form env mutated))
                                        (ast-unwind-protect-cleanup-forms node))
                 :result-temp (ast-unwind-protect-result-temp node)
                 :count-temp (ast-unwind-protect-count-temp node)
                 :extra-temps (ast-unwind-protect-extra-temps node)))

(defmethod analyze-environment ((node ast-block) env &optional mutated)
  (make-instance 'ast-block
                 :name (ast-block-name node)
                 :id (ast-block-id node)
                 :end-label (ast-block-end-label node)
                 :result-temp (ast-block-result-temp node)
                 :needs-catch-frame-p (ast-block-needs-catch-frame-p node)
                 :body (mapcar (lambda (form) (analyze-environment form env mutated))
                               (ast-block-body node))))

(defmethod analyze-environment ((node ast-return-from) env &optional mutated)
  (make-instance 'ast-return-from
                 :name (ast-return-from-name node)
                 :target-id (ast-return-from-target-id node)
                 :target-label (ast-return-from-target-label node)
                 :result-temp (ast-return-from-result-temp node)
                 :non-local-p (ast-return-from-non-local-p node)
                 :value (analyze-environment (ast-return-from-value node) env mutated)))

(defmethod analyze-environment ((node ast-catch) env &optional mutated)
  (make-instance 'ast-catch
                 :tag (analyze-environment (ast-catch-tag node) env mutated)
                 :body (mapcar (lambda (form) (analyze-environment form env mutated))
                               (ast-catch-body node))
                 :tag-temp (ast-catch-tag-temp node)
                 :result-temp (ast-catch-result-temp node)))

(defmethod analyze-environment ((node ast-throw) env &optional mutated)
  (make-instance 'ast-throw
                 :tag (analyze-environment (ast-throw-tag node) env mutated)
                 :value (analyze-environment (ast-throw-value node) env mutated)))

(defmethod analyze-environment ((node ast-values) env &optional mutated)
  (make-instance 'ast-values
                 :values (mapcar (lambda (v) (analyze-environment v env mutated))
                                 (ast-values-values node))))

(defmethod analyze-environment ((node ast-multiple-value-bind) env &optional mutated)
  (let* ((vars (ast-multiple-value-bind-vars node))
         (values-form (analyze-environment (ast-multiple-value-bind-values-form node) env mutated))
         (inner-env (cons (cons :let vars) env))
         (mutated-vars (remove-if-not (lambda (v) (member v mutated :test #'eq)) vars))
         (analyzed-body (mapcar (lambda (form) (analyze-environment form (if mutated-vars (cons (cons :let mutated-vars) inner-env) inner-env) mutated))
                                (ast-multiple-value-bind-body node))))
    (if mutated-vars
        (let ((cell-bindings
               (mapcar (lambda (v)
                         (list v (make-instance 'ast-application
                                                :operator (make-instance 'ast-global-variable :name '%make-cell :alpha-name '%make-cell)
                                                :operands (list (make-instance 'ast-local-variable :name v :alpha-name v)))))
                       mutated-vars)))
          (make-instance 'ast-multiple-value-bind
                         :vars vars
                         :values-form values-form
                         :body (list (make-instance 'ast-let :bindings cell-bindings :body analyzed-body))))
        (make-instance 'ast-multiple-value-bind
                       :vars vars
                       :values-form values-form
                       :body analyzed-body))))

(defmethod analyze-environment ((node ast-multiple-value-call) env &optional mutated)
  (make-instance 'ast-multiple-value-call
                 :function-form (analyze-environment (ast-multiple-value-call-function-form node) env mutated)
                 :arguments-forms (mapcar (lambda (e) (analyze-environment e env mutated))
                                          (ast-multiple-value-call-arguments-forms node))
                 :fn-temp (ast-multiple-value-call-fn-temp node)
                 :list-temp (ast-multiple-value-call-list-temp node)))

(defmethod analyze-environment ((node ast-multiple-value-prog1) env &optional mutated)
  (make-instance 'ast-multiple-value-prog1
                 :first-form (analyze-environment (ast-multiple-value-prog1-first-form node) env mutated)
                 :other-forms (mapcar (lambda (e) (analyze-environment e env mutated))
                                      (ast-multiple-value-prog1-other-forms node))
                 :result-temp (ast-multiple-value-prog1-result-temp node)
                 :count-temp (ast-multiple-value-prog1-count-temp node)
                 :extra-temps (ast-multiple-value-prog1-extra-temps node)))

(defmethod analyze-environment ((node ast-restart-bind) env &optional mutated)
  (make-instance 'ast-restart-bind
                 :bindings (mapcar (lambda (b)
                                     (list (analyze-environment (first b) env mutated)
                                           (analyze-environment (second b) env mutated)
                                           (analyze-environment (third b) env mutated)
                                           (analyze-environment (fourth b) env mutated)
                                           (analyze-environment (fifth b) env mutated)))
                                   (ast-restart-bind-bindings node))
                 :body (mapcar (lambda (form) (analyze-environment form env mutated))
                               (ast-restart-bind-body node))
                 :saved-restarts-temp (ast-restart-bind-saved-restarts-temp node)
                 :restarts-list-temp (ast-restart-bind-restarts-list-temp node)
                 :result-temp (ast-restart-bind-result-temp node)))

(defmethod analyze-environment ((node ast-handler-bind) env &optional mutated)
  (make-instance 'ast-handler-bind
                 :bindings (mapcar (lambda (b)
                                     (list (analyze-environment (first b) env mutated)
                                           (analyze-environment (second b) env mutated)))
                                   (ast-handler-bind-bindings node))
                 :body (mapcar (lambda (form) (analyze-environment form env mutated))
                               (ast-handler-bind-body node))
                 :saved-handlers-temp (ast-handler-bind-saved-handlers-temp node)
                 :handlers-list-temp (ast-handler-bind-handlers-list-temp node)
                 :result-temp (ast-handler-bind-result-temp node)))

(defmethod analyze-environment ((node ast-reflection) env &optional mutated)
  (make-instance 'ast-reflection
                 :operation (ast-reflection-operation node)
                 :arguments (mapcar (lambda (e) (analyze-environment e env mutated))
                                    (ast-reflection-arguments node))))

(defmethod analyze-environment ((node ast-class) env &optional mutated)
  (declare (ignore env mutated))
  node)

(defmethod analyze-environment ((node ast-method) env &optional mutated)
  (make-instance 'ast-method
                 :name (ast-method-name node)
                 :qualifiers (ast-method-qualifiers node)
                 :specialized-lambda-list (ast-method-specialized-lambda-list node)
                 :body (mapcar (lambda (form) (analyze-environment form env mutated))
                               (ast-method-body node))))

(defmethod analyze-environment ((node ast-toplevel-defun) env &optional mutated)
  (let* ((params (ast-toplevel-defun-params node))
         (opt-params (ast-toplevel-defun-optional-params node))
         (rest-param (ast-toplevel-defun-rest-param node))
         (key-params (ast-toplevel-defun-key-params node))
         (aux-params (ast-toplevel-defun-aux-params node))
         (all-params (append params
                             (mapcan (lambda (p) (if (third p) (list (first p) (third p)) (list (first p)))) opt-params)
                             (when rest-param (list rest-param))
                             (mapcan (lambda (p) (if (fourth p) (list (second p) (fourth p)) (list (second p)))) key-params)
                             (mapcar #'car aux-params)))
         (inner-env (cons (cons :lambda all-params) env))
         (analyzed-opt-params
          (mapcar (lambda (p) (list (first p) (analyze-environment (second p) inner-env mutated) (third p))) opt-params))
         (analyzed-key-params
          (mapcar (lambda (p) (list (first p) (second p) (analyze-environment (third p) inner-env mutated) (fourth p))) key-params))
         (analyzed-aux-params
          (mapcar (lambda (p) (list (first p) (analyze-environment (second p) inner-env mutated))) aux-params))
         (analyzed-body (mapcar (lambda (form) (analyze-environment form inner-env mutated))
                                (ast-toplevel-defun-body node))))
    (let ((mutated-params (intersection all-params mutated :test #'eq)))
      (if mutated-params
          (let ((bindings (mapcar (lambda (p)
                                    (list p (make-instance 'ast-application
                                                           :operator (make-instance 'ast-global-variable :name '%make-cell :alpha-name '%make-cell)
                                                           :operands (list (make-instance 'ast-variable :name p :alpha-name p)))))
                                  mutated-params)))
            (make-instance 'ast-toplevel-defun
                           :name (ast-toplevel-defun-name node)
                           :params params
                           :optional-params analyzed-opt-params
                           :rest-param rest-param
                           :key-params analyzed-key-params
                           :allow-other-keys (ast-toplevel-defun-allow-other-keys node)
                           :aux-params analyzed-aux-params
                           :body (list (make-instance 'ast-let :bindings bindings :body analyzed-body))))
          (make-instance 'ast-toplevel-defun
                         :name (ast-toplevel-defun-name node)
                         :params params
                         :optional-params analyzed-opt-params
                         :rest-param rest-param
                         :key-params analyzed-key-params
                         :allow-other-keys (ast-toplevel-defun-allow-other-keys node)
                         :aux-params analyzed-aux-params
                         :body analyzed-body)))))

(eval-when (:load-toplevel :execute)
  (let* ((source (or *load-truename* *compile-file-truename*))
         (asdf-package (find-package :asdf))
         (source-directory-symbol (and asdf-package (find-symbol "SYSTEM-SOURCE-DIRECTORY" asdf-package)))
         (dir (or (and source-directory-symbol
                       (ignore-errors (funcall (symbol-function source-directory-symbol) :clrhack)))
                  (and source (make-pathname :name nil :type nil :defaults source)))))
    (when dir
      (dolist (file '("generate-step1.lisp" "generate-step2.lisp"))
        (let ((path (merge-pathnames file dir)))
          (when (probe-file path)
            (load path)))))))
