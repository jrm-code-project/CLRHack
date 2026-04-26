;;; -*- Mode: Lisp; coding: utf-8; -*-

(in-package "CLRHACK")

;;; AST Nodes

(defclass ast-node ()
  ()
  (:documentation "Base class for all AST nodes."))

(defclass ast-literal (ast-node)
  ((value :initarg :value :accessor ast-literal-value))
  (:documentation "A literal value (e.g., number, string, quoted list)."))

(defclass ast-variable (ast-node)
  ((name :initarg :name :accessor ast-variable-name))
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
   (body :initarg :body :accessor ast-lambda-body))
  (:documentation "A LAMBDA expression."))

(defclass ast-application (ast-node)
  ((operator :initarg :operator :accessor ast-application-operator)
   (operands :initarg :operands :accessor ast-application-operands))
  (:documentation "A function application."))

;;; Translation function

(defun lisp->ast (expr)
  "Translates a Lisp s-expression into an AST node."
  (cond
    ((or (numberp expr) (stringp expr) (characterp expr) (vectorp expr) (keywordp expr) (eq expr t) (eq expr nil))
     (make-instance 'ast-literal :value expr))
    ((symbolp expr)
     (make-instance 'ast-variable :name expr))
    ((consp expr)
     (let ((op (car expr))
           (args (cdr expr)))
       (case op
         (quote
          (make-instance 'ast-literal :value (car args)))
         (if
          (make-instance 'ast-if
                         :test (lisp->ast (first args))
                         :consequent (lisp->ast (second args))
                         :alternate (if (cddr args) (lisp->ast (third args)) (make-instance 'ast-literal :value nil))))
         (progn
          (make-instance 'ast-progn
                         :forms (mapcar #'lisp->ast args)))
         (setq
          (make-instance 'ast-setq
                         :name (make-instance 'ast-variable :name (first args))
                         :value (lisp->ast (second args))))
         (let
          (make-instance 'ast-let
                         :bindings (mapcar (lambda (b)
                                             (if (consp b)
                                                 (list (car b) (lisp->ast (cadr b)))
                                                 (list b (make-instance 'ast-literal :value nil))))
                                           (first args))
                         :body (mapcar #'lisp->ast (rest args))))
         (lambda
          (make-instance 'ast-lambda
                         :params (first args)
                         :body (mapcar #'lisp->ast (rest args))))
         (t
          (make-instance 'ast-application
                         :operator (if (symbolp op)
                                       (make-instance 'ast-variable :name op)
                                       (lisp->ast op))
                         :operands (mapcar #'lisp->ast args))))))
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

(defgeneric analyze-environment (node env)
  (:documentation "Walks the AST, returning a new tree with variables typed by their scope."))

(defmethod analyze-environment ((node ast-literal) env)
  (declare (ignore env))
  node)

(defmethod analyze-environment ((node ast-variable) env)
  (let* ((name (ast-variable-name node))
         (scope (lookup-variable env name)))
    (ecase scope
      (:argument (make-instance 'ast-argument-variable :name name))
      (:local (make-instance 'ast-local-variable :name name))
      (:lexical (make-instance 'ast-lexical-variable :name name))
      (:global (make-instance 'ast-global-variable :name name)))))

(defmethod analyze-environment ((node ast-if) env)
  (make-instance 'ast-if
                 :test (analyze-environment (ast-if-test node) env)
                 :consequent (analyze-environment (ast-if-consequent node) env)
                 :alternate (analyze-environment (ast-if-alternate node) env)))

(defmethod analyze-environment ((node ast-progn) env)
  (make-instance 'ast-progn
                 :forms (mapcar (lambda (form) (analyze-environment form env))
                                (ast-progn-forms node))))

(defmethod analyze-environment ((node ast-setq) env)
  (make-instance 'ast-setq
                 :name (analyze-environment (ast-setq-name node) env)
                 :value (analyze-environment (ast-setq-value node) env)))

(defmethod analyze-environment ((node ast-let) env)
  ;; LET evaluates its init-forms in the outer environment.
  (let* ((analyzed-bindings
          (mapcar (lambda (b)
                    (list (car b) (analyze-environment (cadr b) env)))
                  (ast-let-bindings node)))
         (bound-vars (mapcar #'car (ast-let-bindings node)))
         (inner-env (cons (cons :let bound-vars) env)))
    (make-instance 'ast-let
                   :bindings analyzed-bindings
                   :body (mapcar (lambda (form) (analyze-environment form inner-env))
                                 (ast-let-body node)))))

(defmethod analyze-environment ((node ast-lambda) env)
  ;; LAMBDA parameters are evaluated in the inner environment.
  (let ((inner-env (cons (cons :lambda (ast-lambda-params node)) env)))
    (make-instance 'ast-lambda
                   :params (ast-lambda-params node)
                   :body (mapcar (lambda (form) (analyze-environment form inner-env))
                                 (ast-lambda-body node)))))

(defmethod analyze-environment ((node ast-application) env)
  (make-instance 'ast-application
                 :operator (analyze-environment (ast-application-operator node) env)
                 :operands (mapcar (lambda (op) (analyze-environment op env))
                                   (ast-application-operands node))))
