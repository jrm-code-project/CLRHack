(in-package "CLRHACK")

(let ((msg "Hello world from CLR-CALL"))
  (clr-call "[mscorlib]System.Console" "WriteLine" "void" msg))

(print "Hello from PRINT")
