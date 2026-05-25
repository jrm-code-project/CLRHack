(in-package "CLRHACK")

(defun test-lexical-non-local-return-simple ()
  (print "Lexical return simple closure...")
  (let ((result
          (block done
            (let ((k (lambda ()
                       (return-from done "escaped-simple"))))
              (funcall k)
              "Should NOT print simple path"))))
    (print "Simple result:")
    (print result)))

(defun test-lexical-non-local-return-nested ()
  (print "Lexical return nested closures...")
  (let ((result
          (block done
            (let ((k1 (lambda ()
                        (let ((k2 (lambda ()
                                    (return-from done "escaped-nested"))))
                          (funcall k2)
                          "Should NOT print nested inner"))))
              (funcall k1)
              "Should NOT print nested outer"))))
    (print "Nested result:")
    (print result)))

(defun test-lexical-return-multiple-values ()
  (print "Lexical return with multiple values...")
  (multiple-value-bind (a b c)
      (block done
        (let ((k (lambda ()
                   (return-from done (values "mv-primary" 22 33)))))
          (funcall k)
          (values "Should NOT print mv path" nil nil)))
    (print "MV primary:")
    (print a)
    (print "MV second:")
    (print b)
    (print "MV third:")
    (print c)))

(defun test-lexical-return-with-unwind-protect ()
  (print "Lexical return with unwind-protect...")
  (let ((cleanup-ran nil)
        (result nil))
    (setq result
          (block done
            (unwind-protect
                (let ((k (lambda ()
                           (return-from done "escaped-uwp"))))
                  (funcall k)
                  "Should NOT print uwp path")
              (setq cleanup-ran t)
              (print "Cleanup from lexical unwind-protect"))))
    (print "UWP result:")
    (print result)
    (print "Cleanup flag:")
    (print cleanup-ran)))

(defun main ()
  (test-lexical-non-local-return-simple)
  (test-lexical-non-local-return-nested)
  (test-lexical-return-with-unwind-protect)
  (test-lexical-return-multiple-values))

(main)
