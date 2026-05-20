(in-package "CLRHACK")

(defun main ()
  (let ((term '(+ (* 3 x x) (* a x x) (* b x) 5)))
    (print (car term))
    (print (car (cdr term)))
    (print (car (car (cdr term))))))
(main)
