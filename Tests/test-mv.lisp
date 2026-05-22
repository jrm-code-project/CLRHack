(in-package "CLRHACK")

(defun mv-producer (n)
  (cond
    ((= n 0) (values))
    ((= n 1) (values 10))
    ((= n 2) (values 10 20))
    ((= n 3) (values 10 20 30))
    (t (values 1 2 3 4 5))))

(defun test-mv-bind-2 ()
  (multiple-value-bind (a b) (mv-producer 2)
    (list a b)))

(defun test-mv-bind-3 ()
  (multiple-value-bind (a b c) (mv-producer 3)
    (list a b c)))

(defun test-mv-bind-1-from-2 ()
  (multiple-value-bind (a) (mv-producer 2)
    a))

(defun test-mv-bind-3-from-2 ()
  (multiple-value-bind (a b c) (mv-producer 2)
    (list a b c)))

(defun test-mv-bind-0 ()
  (multiple-value-bind (a b) (mv-producer 0)
    (list a b)))

(defun test-mv-bind-normal ()
  (multiple-value-bind (a b) (+ 1 2)
    (list a b)))

(defun test-mv-prog1 ()
  (let ((x 0))
    (list (multiple-value-prog1 (values 1 2) (setq x 10))
          x)))

(defun test-mv-call ()
  (multiple-value-call (lambda (a b c d e f) (+ a (+ b (+ c (+ d (+ e f)))))) (values 1 2) (values 3 4 5) 6))

(defun test-mv-call-rest ()
  (multiple-value-call (lambda (&rest args) args) (values 1 2) (values 3 4 5) 6))

(defun run-mv-tests ()
  (let ((results (list 
                  (test-mv-bind-2)
                  (test-mv-bind-3)
                  (test-mv-bind-1-from-2)
                  (test-mv-bind-3-from-2)
                  (test-mv-bind-0)
                  (test-mv-bind-normal)
                  (test-mv-prog1)
                  (test-mv-call)
                  (test-mv-call-rest))))
    (dolist (res results)
      (print res))))

(run-mv-tests)
