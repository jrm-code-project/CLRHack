(in-package "CLRHACK")

(defun main ()
  (print "Testing putprop")
  (clr-call-virt (clr-call "castclass" "[LispBase]Lisp.Symbol" 'my-sym) "[LispBase]Lisp.Symbol" "Put" "void" 'my-prop "my-val")
  (print "Testing getprop")
  (print (clr-call-virt (clr-call "castclass" "[LispBase]Lisp.Symbol" 'my-sym) "[LispBase]Lisp.Symbol" "Get" "object" 'my-prop)))
(main)
