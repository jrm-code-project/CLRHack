(in-package "CLRHACK")

(defun getprop (sym indicator)
  (if (null sym) nil
      (clr-call-virt (clr-call "castclass" "[LispBase]Lisp.Symbol" sym) "[LispBase]Lisp.Symbol" "Get" "object" indicator)))

(defun putprop (sym indicator val)
  (if (null sym) nil
      (progn
        (clr-call-virt (clr-call "castclass" "[LispBase]Lisp.Symbol" sym) "[LispBase]Lisp.Symbol" "Put" "void" indicator val)
        val)))

(defun cadr (x) (car (cdr x)))
(defun caddr (x) (car (cdr (cdr x))))
(defun list2 (a b) (cons a (cons b nil)))
(defun list3 (a b c) (cons a (cons b (cons c nil))))
(defun list4 (a b c d) (cons a (cons b (cons c (cons d nil)))))

(defun dderiv (a)
  (cond
    ((not (consp a))
     (cond ((eq a 'x) 1) (t 0)))
    (t (let ((deriv-fn (getprop (car a) 'dderiv)))
         (if deriv-fn
             (funcall deriv-fn a)
             "error")))))

(defun mapcar-dderiv (lst)
  (if (null lst)
      nil
      (cons (dderiv (car lst))
            (mapcar-dderiv (cdr lst)))))

(defun mapcar-dderiv-div (lst)
  (if (null lst)
      nil
      (cons (list3 '/ (dderiv (car lst)) (car lst))
            (mapcar-dderiv-div (cdr lst)))))

(defun setup-dderiv ()
  (putprop '+ 'dderiv (lambda (a) (cons '+ (mapcar-dderiv (cdr a)))))
  (putprop '- 'dderiv (lambda (a) (cons '- (mapcar-dderiv (cdr a)))))
  (putprop '* 'dderiv (lambda (a) (list3 '* a (cons '+ (mapcar-dderiv-div (cdr a))))))
  (putprop '/ 'dderiv (lambda (a)
                        (list3 '-
                               (list3 '/ (dderiv (cadr a)) (caddr a))
                               (list3 '/ (cadr a) (list4 '* (caddr a) (caddr a) (dderiv (caddr a))))))))

(defun run-dderiv (n)
  (if (eq n 0)
      "Done"
      (progn
        (dderiv '(+ (* 3 x x) (* a x x) (* b x) 5))
        (run-dderiv (- n 1)))))

(defun main ()
  (setup-dderiv)
  (let ((term '(+ (* 3 x x) (* a x x) (* b x) 5)))
    (print "Differentiating (dderiv):")
    (print term)
    (print "Result:")
    (print (dderiv term))
    (print "Running benchmark 100 times...")
    (print (run-dderiv 100))))

(main)
