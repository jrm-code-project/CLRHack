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
                         :name (first args)
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
