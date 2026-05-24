(in-package "CLRHACK")

(defun return-two (a b)
  (values a b))

(defun test-corruption ()
  (multiple-value-bind (v1 v2 v3 v4)
      (values 1
              2
              (progn (return-two 'interloper-1 'interloper-2) 3)
              4)
    (print v1)
    (print v2)
    (print v3)
    (print v4)
    (if (and (eq v1 1) (eq v2 2) (eq v3 3) (eq v4 4))
        (print "SUCCESS")
        (progn
          (print "FAILURE")
          (%break)))))

(test-corruption)
