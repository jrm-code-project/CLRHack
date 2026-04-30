(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (when (probe-file quicklisp-init)
    (load quicklisp-init)))
(ql:quickload "alexandria")
(ql:quickload "series")
(ql:quickload "fold")
(ql:quickload "named-let")
(ql:quickload "function")

(require :asdf)
(push (truename ".") asdf:*central-registry*)
(asdf:load-system :clrhack)

(let ((files '("test-compiler.lisp"
               "test-advanced.lisp"
               "test-church.lisp"
               "test-closure.lisp"
               "test-fib.lisp"
               "test-hello.lisp"
               "test-mutability.lisp"
               "test-nboyer.lisp"
               "test-scoping.lisp"
               "test-tak.lisp"
               "test-toplevel.lisp"
               "test-complex.lisp"
               "bank-test.lisp"
               "tail-test.lisp")))
  (dolist (file files)
    (format t "~%--- Compiling ~A ---~%" file)
    (load file)))

(sb-ext:exit)
