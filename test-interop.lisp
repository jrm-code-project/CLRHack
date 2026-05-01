(in-package "CLRHACK")

(let ((sym (clr-new "[LispBase]Lisp.Symbol" ("string" "class [LispBase]Lisp.Package") "FOO" nil)))
  (print (clr-call-virt sym "[LispBase]Lisp.Symbol" "get_Name" "string")))

(let ((list (clr-new "[LispBase]Lisp.List/ListCell" ("object" "object") "head" nil)))
  (print (clr-field "[LispBase]Lisp.List/ListCell" "first" list)))
