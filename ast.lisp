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
   (body :initarg :body :accessor ast-lambda-body))
  (:documentation "A LAMBDA expression."))

(defclass ast-application (ast-node)
  ((operator :initarg :operator :accessor ast-application-operator)
   (operands :initarg :operands :accessor ast-application-operands))
  (:documentation "A function application."))

;;; Translation function

(defun lisp->ast (expr &optional env)
  "Translates a Lisp s-expression into an AST node, applying alpha renaming."
  (cond
    ((or (numberp expr) (stringp expr) (characterp expr) (vectorp expr) (keywordp expr) (eq expr t) (eq expr nil))
     (make-instance 'ast-literal :value expr))
    ((symbolp expr)
     (let ((alpha (cdr (assoc expr env))))
       (make-instance 'ast-variable :name expr :alpha-name (or alpha expr))))
    ((consp expr)
     (let ((op (car expr))
           (args (cdr expr)))
       (case op
         (quote
          (make-instance 'ast-literal :value (car args)))
         (if
          (make-instance 'ast-if
                         :test (lisp->ast (first args) env)
                         :consequent (lisp->ast (second args) env)
                         :alternate (if (cddr args) (lisp->ast (third args) env) (make-instance 'ast-literal :value nil))))
         (progn
          (make-instance 'ast-progn
                         :forms (mapcar (lambda (e) (lisp->ast e env)) args)))
         (setq
          (let* ((var-name (first args))
                 (alpha (cdr (assoc var-name env))))
            (make-instance 'ast-setq
                           :name (make-instance 'ast-variable :name var-name :alpha-name (or alpha var-name))
                           :value (lisp->ast (second args) env))))
         (let
          (let* ((new-env env)
                 (bindings (mapcar (lambda (b)
                                     (let* ((name (if (consp b) (car b) b))
                                            (val (if (consp b) (lisp->ast (cadr b) env) (make-instance 'ast-literal :value nil)))
                                            (alpha (gensym (string name))))
                                       (push (cons name alpha) new-env)
                                       (list alpha val)))
                                   (first args))))
            (make-instance 'ast-let
                           :bindings bindings
                           :body (mapcar (lambda (e) (lisp->ast e new-env)) (rest args)))))
         (lambda
          (let* ((new-env env)
                 (params (mapcar (lambda (p)
                                   (let ((alpha (gensym (string p))))
                                     (push (cons p alpha) new-env)
                                     alpha))
                                 (first args))))
            (make-instance 'ast-lambda
                           :params params
                           :body (mapcar (lambda (e) (lisp->ast e new-env)) (rest args)))))
         (t
          (make-instance 'ast-application
                         :operator (if (symbolp op)
                                       (let ((alpha (cdr (assoc op env))))
                                         (make-instance 'ast-variable :name op :alpha-name (or alpha op)))
                                       (lisp->ast op env))
                         :operands (mapcar (lambda (e) (lisp->ast e env)) args))))))
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
                  ;; We track scope-aware mutations. Since scoping is tied to the name in the environment,
                  ;; we only care about mutations to locals/lexicals/arguments.
                  ;; Since alpha-names are unique, there is no shadowing conflict.
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
         (inner-env (cons (cons :lambda params) env))
         (body (mapcar (lambda (form) (analyze-environment form inner-env mutated))
                       (ast-lambda-body node)))
         (mutated-params (remove-if-not (lambda (p) (member p mutated :test #'eq)) params)))
    (if mutated-params
        (let ((cell-bindings
               (mapcar (lambda (p)
                         (list p (make-instance 'ast-application
                                                :operator (make-instance 'ast-global-variable :name '%make-cell :alpha-name '%make-cell)
                                                ;; Here `name` is technically lost as we only have the `alpha` parameter `p`.
                                                ;; In ast-lambda, `params` is a list of alpha-names now.
                                                ;; For parameter binding cells, we can just use the alpha-name as the name.
                                                :operands (list (make-instance 'ast-argument-variable :name p :alpha-name p)))))
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
