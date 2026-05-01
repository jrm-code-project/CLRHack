(in-package "CLRHACK")

(let ((msg "Hello world"))
  (let ((f (lambda (ignored) (%write-line msg))))
    (f nil)))

