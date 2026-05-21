(in-package "CLRHACK")

(defun create-n (n)
  (let ((l '()))
    (labels ((loop-k (i)
               (if (< i n)
                   (progn
                     (setq l (cons nil l))
                     (loop-k (+ i 1)))
                   l)))
      (loop-k 0))))

(defun iterative-div2 (l)
  (let ((l-ptr l)
        (a '()))
    (tagbody
     loop
       (if (null l-ptr)
           (go done)
           nil)
       (setq a (cons (car l-ptr) a))
       (setq l-ptr (cdr (cdr l-ptr)))
       (go loop)
     done)
    a))

(defun recursive-div2 (l)
  (if (null l)
      '()
      (cons (car l) (recursive-div2 (cdr (cdr l))))))

(defun test-1 (l)
  (let ((i 300))
    (tagbody
     loop
       (if (eq i 0)
           (go done)
           nil)
       (iterative-div2 l)
       (iterative-div2 l)
       (iterative-div2 l)
       (iterative-div2 l)
       (setq i (- i 1))
       (go loop)
     done)))

(defun test-2 (l)
  (let ((i 300))
    (tagbody
     loop
       (if (eq i 0)
           (go done)
           nil)
       (recursive-div2 l)
       (recursive-div2 l)
       (recursive-div2 l)
       (recursive-div2 l)
       (setq i (- i 1))
       (go loop)
     done)))

(defvar *l* (create-n 200))

(defun main ()
  (print "Testing iterative-div2...")
  (test-1 *l*)
  (print "Testing recursive-div2...")
  (test-2 *l*)
  (let ((res (iterative-div2 *l*)))
    (print "Length of div2 result should be 100:")
    (let ((count 0))
      (labels ((count-len (lst)
                 (if (null lst)
                     nil
                     (progn
                       (setq count (+ count 1))
                       (count-len (cdr lst))))))
        (count-len res))
      (print count)))
  (print "Done"))

(main)
