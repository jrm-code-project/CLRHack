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

(defun find-mutated-variables (node &optional env)
  "Returns a list of variables that are targets of SETQ in the AST, considering their scope correctly."
  (labels ((traverse (n curr-env)
             (typecase n
               (ast-literal nil)
               (ast-variable nil)
               (ast-if (append (traverse (ast-if-test n) curr-env)
                               (traverse (ast-if-consequent n) curr-env)
                               (traverse (ast-if-alternate n) curr-env)))
               (ast-progn (reduce #'append (mapcar (lambda (form) (traverse form curr-env)) (ast-progn-forms n))))
               (ast-setq
                (let* ((var-name (ast-variable-name (ast-setq-name n)))
                       (scope (lookup-variable curr-env var-name)))
                  ;; We track scope-aware mutations. Since scoping is tied to the name in the environment,
                  ;; we only care about mutations to locals/lexicals/arguments.
                  ;; To avoid shadowing conflicts where a global with the same name as a local is mutated,
                  ;; we collect mutated variables by their name. Since analyze-environment looks up
                  ;; by name, if it's in `mutated` and it resolves to a local, we convert it.
                  ;; Wait, but what if an inner local shadows an outer mutated local?
                  ;; We can simply return a list of (cons var-name frame). But a simpler way
                  ;; is to just track all names that are mutated as non-globals. The reviewer
                  ;; mentioned this is "imprecise" but "functionally safe". Let's stick to the names list but make it a bit more scoped if we can, or just keep the name list but only add it if it's NOT :global.
                  (if (not (eq scope :global))
                      (cons var-name (traverse (ast-setq-value n) curr-env))
                      (traverse (ast-setq-value n) curr-env))))
               (ast-let
                (let* ((bound-vars (mapcar #'car (ast-let-bindings n)))
                       (inner-env (cons (cons :let bound-vars) curr-env)))
                  (append (reduce #'append (mapcar (lambda (b) (traverse (cadr b) curr-env)) (ast-let-bindings n)))
                          (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) (ast-let-body n))))))
               (ast-lambda
                (let* ((params (ast-lambda-params n))
                       (inner-env (cons (cons :lambda params) curr-env)))
                  (reduce #'append (mapcar (lambda (form) (traverse form inner-env)) (ast-lambda-body n)))))
               (ast-application
                (append (traverse (ast-application-operator n) curr-env)
                        (reduce #'append (mapcar (lambda (op) (traverse op curr-env)) (ast-application-operands n))))))))
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
         (scope (lookup-variable env name))
         (var-node
          (ecase scope
            (:argument (make-instance 'ast-argument-variable :name name))
            (:local (make-instance 'ast-local-variable :name name))
            (:lexical (make-instance 'ast-lexical-variable :name name))
            (:global (make-instance 'ast-global-variable :name name)))))
    (if (and (not (eq scope :global)) (member name mutated :test #'eq))
        ;; Replace reference with call to %cell-value
        (make-instance 'ast-application
                       :operator (make-instance 'ast-global-variable :name '%cell-value)
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
        (value (analyze-environment (ast-setq-value node) env mutated)))
    (let ((scope (lookup-variable env name)))
      (if (and (not (eq scope :global)) (member name mutated :test #'eq))
          ;; Replace assignment with call to %set-cell-value!
          (let ((var-node
                 (ecase scope
                   (:argument (make-instance 'ast-argument-variable :name name))
                   (:local (make-instance 'ast-local-variable :name name))
                   (:lexical (make-instance 'ast-lexical-variable :name name)))))
            (make-instance 'ast-application
                           :operator (make-instance 'ast-global-variable :name '%set-cell-value!)
                           :operands (list var-node value)))
          (make-instance 'ast-setq
                         :name (analyze-environment (ast-setq-name node) env mutated)
                         :value value)))))

(defmethod analyze-environment ((node ast-let) env &optional mutated)
  ;; LET evaluates its init-forms in the outer environment.
  (let* ((analyzed-bindings
          (mapcar (lambda (b)
                    (let* ((name (car b))
                           (val (analyze-environment (cadr b) env mutated)))
                      (if (member name mutated :test #'eq)
                          (list name (make-instance 'ast-application
                                                    :operator (make-instance 'ast-global-variable :name '%make-cell)
                                                    :operands (list val)))
                          (list name val))))
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
         (inner-env (cons (cons :lambda params) env))
         (body (mapcar (lambda (form) (analyze-environment form inner-env mutated))
                       (ast-lambda-body node)))
         (mutated-params (remove-if-not (lambda (p) (member p mutated :test #'eq)) params)))
    (if mutated-params
        (let ((cell-bindings
               (mapcar (lambda (p)
                         (list p (make-instance 'ast-application
                                                :operator (make-instance 'ast-global-variable :name '%make-cell)
                                                :operands (list (make-instance 'ast-argument-variable :name p)))))
                       mutated-params)))
          ;; Wrap body in an ast-let that shadows mutated parameters with cell variables.
          ;; Note: since the inner body was already analyzed with the same env,
          ;; the variables resolving to these parameters will naturally resolve as cells inside the LET.
          ;; Actually, lookup-variable would see the new LET frame as a :local instead of :argument!
          ;; Wait, we should build the ast-let and then analyze it, or construct it properly.
          (let ((let-env (cons (cons :let mutated-params) inner-env)))
            (make-instance 'ast-lambda
                           :params params
                           :body (list (make-instance 'ast-let
                                                      :bindings cell-bindings
                                                      ;; re-analyze body in the let-env so they resolve as :local instead of :argument
                                                      :body (mapcar (lambda (form) (analyze-environment form let-env mutated))
                                                                    (ast-lambda-body node)))))))
        (make-instance 'ast-lambda
                       :params params
                       :body body))))

(defmethod analyze-environment ((node ast-application) env &optional mutated)
  (make-instance 'ast-application
                 :operator (analyze-environment (ast-application-operator node) env mutated)
                 :operands (mapcar (lambda (op) (analyze-environment op env mutated))
                                   (ast-application-operands node))))
