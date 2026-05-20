(in-package "CLRHACK")

(defun cadr (x) (car (cdr x)))
(defun caddr (x) (car (cdr (cdr x))))
(defun list2 (a b) (cons a (cons b nil)))
(defun list3 (a b c) (cons a (cons b (cons c nil))))
(defun list4 (a b c d) (cons a (cons b (cons c (cons d nil)))))

(defun mapcar-deriv (lst)
  (if (null lst)
      nil
      (cons (deriv (car lst))
            (mapcar-deriv (cdr lst)))))

(defun mapcar-deriv-div (lst)
  (if (null lst)
      nil
      (cons (list3 '/ (deriv (car lst)) (car lst))
            (mapcar-deriv-div (cdr lst)))))

(defun deriv (a)
  (cond
    ((not (consp a))
     (cond ((eq a 'x) 1) (t 0)))
    ((eq (car a) '+)
     (cons '+ (mapcar-deriv (cdr a))))
    ((eq (car a) '-)
     (cons '- (mapcar-deriv (cdr a))))
    ((eq (car a) '*)
     (list3 '*
            a
            (cons '+ (mapcar-deriv-div (cdr a)))))
    ((eq (car a) '/)
     (list3 '-
            (list3 '/
                  (deriv (cadr a))
                  (caddr a))
            (list3 '/
                  (cadr a)
                  (list4 '*
                        (caddr a)
                        (caddr a)
                        (deriv (caddr a))))))
    (t "error")))

(defun run-deriv (n)
  (if (eq n 0)
      "Done"
      (progn
        (deriv '(+ (* 3 x x) (* a x x) (* b x) 5))
        (run-deriv (- n 1)))))

(defun main ()
  (let ((term '(+ (* 3 x x) (* a x x) (* b x) 5)))
    (print "Differentiating:")
    (print term)
    (print "Result:")
    (print (deriv term))
    (print "Running benchmark 100 times...")
    (print (run-deriv 100))))

(main)
