(in-package "CLRHACK")

(defgeneric map-ast-children (function node)
  (:documentation "Calls FUNCTION on all child AST nodes of NODE."))

(defmethod map-ast-children (function (node ast-node))
  ;; Default method does nothing for nodes without children
  nil)

(defmethod map-ast-children (function (node ast-if))
  (funcall function (ast-if-test node))
  (funcall function (ast-if-consequent node))
  (funcall function (ast-if-alternate node)))

(defmethod map-ast-children (function (node ast-progn))
  (mapc function (ast-progn-forms node)))

(defmethod map-ast-children (function (node ast-setq))
  (funcall function (ast-setq-name node))
  (funcall function (ast-setq-value node)))

(defmethod map-ast-children (function (node ast-let))
  (dolist (binding (ast-let-bindings node))
    (funcall function (cadr binding)))
  (mapc function (ast-let-body node)))

(defmethod map-ast-children (function (node ast-lambda))
  (dolist (opt (ast-lambda-optional-params node))
    (funcall function (second opt)))
  (dolist (key (ast-lambda-key-params node))
    (funcall function (third key)))
  (mapc function (ast-lambda-body node)))

(defmethod map-ast-children (function (node ast-method))
  (mapc function (ast-method-body node)))

(defmethod map-ast-children (function (node ast-toplevel-defun))
  (dolist (opt (ast-toplevel-defun-optional-params node))
    (funcall function (second opt)))
  (dolist (key (ast-toplevel-defun-key-params node))
    (funcall function (third key)))
  (mapc function (ast-toplevel-defun-body node)))

(defmethod map-ast-children (function (node ast-application))
  (funcall function (ast-application-operator node))
  (mapc function (ast-application-operands node)))

(defmethod map-ast-children (function (node ast-clr-call))
  (mapc function (ast-clr-call-arguments node)))

(defmethod map-ast-children (function (node ast-clr-call-virt))
  (funcall function (ast-clr-call-virt-instance node))
  (mapc function (ast-clr-call-virt-arguments node)))

(defmethod map-ast-children (function (node ast-clr-new))
  (mapc function (ast-clr-new-arguments node)))

(defmethod map-ast-children (function (node ast-clr-field))
  (when (ast-clr-field-instance node)
    (funcall function (ast-clr-field-instance node))))

(defmethod map-ast-children (function (node ast-dotnet-static-call))
  (mapc function (ast-dotnet-static-call-arguments node)))

(defmethod map-ast-children (function (node ast-dotnet-instance-call))
  (funcall function (ast-dotnet-instance-call-instance node))
  (mapc function (ast-dotnet-instance-call-arguments node)))

(defmethod map-ast-children (function (node ast-dotnet-instance-property))
  (funcall function (ast-dotnet-instance-property-instance node)))

(defmethod map-ast-children (function (node ast-dotnet-instance-field))
  (funcall function (ast-dotnet-instance-field-instance node)))

(defmethod map-ast-children (function (node ast-tagbody))
  (mapc function (ast-tagbody-statements node)))

(defmethod map-ast-children (function (node ast-unwind-protect))
  (funcall function (ast-unwind-protect-protected-form node))
  (mapc function (ast-unwind-protect-cleanup-forms node)))

(defmethod map-ast-children (function (node ast-block))
  (mapc function (ast-block-body node)))

(defmethod map-ast-children (function (node ast-return-from))
  (funcall function (ast-return-from-value node)))

(defmethod map-ast-children (function (node ast-catch))
  (funcall function (ast-catch-tag node))
  (mapc function (ast-catch-body node)))

(defmethod map-ast-children (function (node ast-throw))
  (funcall function (ast-throw-tag node))
  (funcall function (ast-throw-value node)))
