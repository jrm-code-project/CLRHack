(in-package "CLRHACK")

(compile-and-run '(let ((msg "Hello world"))
                          (let ((f (lambda (ignored) (%write-line msg))))
                            (f nil)))
                 "HelloWorld")

