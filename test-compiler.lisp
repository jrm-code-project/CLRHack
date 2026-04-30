(in-package "CLRHACK")

(defun compile-and-run (expr &optional (assembly-name "TestAssembly"))
  (let* ((ast (lisp->ast expr))
         (analyzed (analyze-environment ast nil)))
    (compute-free-vars analyzed)
    (let* ((converted (closure-convert analyzed)))
      (multiple-value-bind (lifted lambdas) (perform-lambda-lifting converted)
        (let ((asm (generate-assembly lifted lambdas assembly-name)))
          (with-open-file (stream (format nil "~A.il" assembly-name) :direction :output :if-exists :supersede)
            (emit-assembly asm stream))
          (format t "Generated ~A.il successfully.~%" assembly-name)
          (il:ilasm asm))))))

(compile-and-run '(let ((x 10))
                    (let ((f (lambda (y) x)))
                      (f 20))))

