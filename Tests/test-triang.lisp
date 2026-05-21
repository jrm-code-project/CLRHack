(in-package "CLRHACK")

(defvar *board* (make-array 16))
(defvar *sequence* (make-array 14))
(defvar *a* (make-array 37))
(defvar *b* (make-array 37))
(defvar *c* (make-array 37))

(defun list-to-array (lst arr idx)
  (if (null lst)
      arr
      (progn
        (aset arr idx (car lst))
        (list-to-array (cdr lst) arr (+ idx 1)))))

(defun init-arrays ()
  (list-to-array '(1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1) *board* 0)
  (list-to-array '(0 0 0 0 0 0 0 0 0 0 0 0 0 0) *sequence* 0)
  (list-to-array '(1 2 4 3 5 6 1 3 6 2 5 4 11 12 13 7 8 4 4 7 11 8 12 13 6 10 15 9 14 13 13 14 15 9 10 6 6) *a* 0)
  (list-to-array '(2 4 7 5 8 9 3 6 10 5 9 8 12 13 14 8 9 5 2 4 7 5 8 9 3 6 10 5 9 8 12 13 14 8 9 5 5) *b* 0)
  (list-to-array '(4 7 11 8 12 13 6 10 15 9 14 13 13 14 15 9 10 6 1 2 4 3 5 6 1 3 6 2 5 4 11 12 13 7 8 4 4) *c* 0))

(defvar *answer* '())

(defun array-to-list (arr start end)
  (if (eq start end)
      '()
      (cons (aref arr start) (array-to-list arr (+ start 1) end))))

(defun attempt (i depth)
  (if (eq depth 14)
      (progn
        (setq *answer* (cons (array-to-list *sequence* 1 14) *answer*))
        t)
      (if (and (eq 1 (aref *board* (aref *a* i)))
               (and (eq 1 (aref *board* (aref *b* i)))
                    (eq 0 (aref *board* (aref *c* i)))))
          (progn
            (aset *board* (aref *a* i) 0)
            (aset *board* (aref *b* i) 0)
            (aset *board* (aref *c* i) 1)
            (aset *sequence* depth i)
            (let ((j 0)
                  (next-depth (+ depth 1))
                  (found nil))
              (tagbody
               loop
                 (if (eq j 36)
                     (go done)
                     nil)
                 (if (attempt j next-depth)
                     (progn (setq found t) (go done))
                     nil)
                 (setq j (+ j 1))
                 (go loop)
               done)
              (aset *board* (aref *a* i) 1)
              (aset *board* (aref *b* i) 1)
              (aset *board* (aref *c* i) 0)
              nil))
          nil)))

(defun triang-test (i depth)
  (setq *answer* '())
  (attempt i depth)
  (car *answer*))

(defun main ()
  (init-arrays)
  (print "Running triang benchmark...")
  (let ((result (triang-test 22 1)))
    (print "Result:")
    (print result)))

(main)
