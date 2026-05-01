(in-package "CLRHACK")

;; Helper functions for the benchmark
(defun equal (x y)
  (cond ((eq x y) t)
        ((and (consp x) (consp y))
         (and (equal (car x) (car y))
              (equal (cdr x) (cdr y))))
        (t (clr-call "[mscorlib]System.Object" "Equals" "bool" x y))))

(defun member (x lst)
  (cond ((null lst) nil)
        ((equal x (car lst)) lst)
        (t (member x (cdr lst)))))

(defun assoc (x alist)
  (cond ((null alist) nil)
        ((equal x (caar alist)) (car alist))
        (t (assoc x (cdr alist)))))

;; Property list emulation via LispBase.Symbol
(defun getprop (sym indicator)
  (if (null sym) nil
      (clr-call-virt sym "[LispBase]Lisp.Symbol" "Get" "object" indicator)))

(defun putprop (sym indicator val)
  (if (null sym) nil
      (progn
        (clr-call-virt sym "[LispBase]Lisp.Symbol" "Put" "void" indicator val)
        val)))

;; --- NBoyer Benchmark ---

(defun add-lemma (term)
  (cond ((and (consp term)
              (eq (car term) 'equal)
              (consp (second term)))
         (let ((sym (car (second term))))
           (putprop sym 'lemmas (cons term (getprop sym 'lemmas)))))
        (t (print "Invalid lemma:") (print term))))

(defun add-lemmas (lst)
  (if (null lst)
      nil
      (progn
        (add-lemma (car lst))
        (add-lemmas (cdr lst)))))

(defun apply-subst (alist term)
  (cond ((atom term)
         (let ((pair (assoc term alist)))
           (if pair (cdr pair) term)))
        ((eq (car term) 'quote) term)
        (t (cons (car term)
                 (apply-subst-lst alist (cdr term))))))

(defun apply-subst-lst (alist lst)
  (if (null lst)
      nil
      (cons (apply-subst alist (car lst))
            (apply-subst-lst alist (cdr lst)))))

(defun tautologyp (x true-lst false-lst)
  (cond ((truep x true-lst) t)
        ((falsep x false-lst) nil)
        ((atom x) nil)
        ((eq (car x) 'if)
         (cond ((truep (second x) true-lst)
                (tautologyp (third x) true-lst false-lst))
               ((falsep (second x) false-lst)
                (tautologyp (fourth x) true-lst false-lst))
               (t (and (tautologyp (third x) (cons (second x) true-lst) false-lst)
                       (tautologyp (fourth x) true-lst (cons (second x) false-lst))))))
        (t nil)))

(defun truep (x lst)
  (or (eq x t) (member x lst)))

(defun falsep (x lst)
  (or (eq x nil) (member x lst)))

(defun rewrite (term)
  (cond ((atom term) term)
        ((eq (car term) 'quote) term)
        (t (let ((rewritten (rewrite-with-lemmas (cons (car term) (rewrite-args (cdr term))))))
             (if (and (consp rewritten)
                      (eq (car rewritten) 'equal)
                      (equal (second rewritten) (third rewritten)))
                 t
                 rewritten)))))

(defun rewrite-args (lst)
  (if (null lst)
      nil
      (cons (rewrite (car lst)) (rewrite-args (cdr lst)))))

(defun rewrite-with-lemmas (term)
  (if (atom term)
      term
      (let ((lemmas (getprop (car term) 'lemmas)))
        (loop-lemmas term lemmas))))

(defun loop-lemmas (term lemmas)
  (if (null lemmas)
      term
      (let ((alist (unify term (second (car lemmas)) '((win . win)))))
        (if alist
            (rewrite (apply-subst alist (third (car lemmas))))
            (loop-lemmas term (cdr lemmas))))))

(defun unify (x y alist)
  (cond ((equal x y) alist)
        ((atom y) ; y is the pattern variable
         (let ((pair (assoc y alist)))
           (if pair
               (if (equal (cdr pair) x) alist nil)
               (cons (cons y x) alist))))
        ((atom x) nil)
        ((eq (car x) (car y))
         (unify-lst (cdr x) (cdr y) alist))
        (t nil)))

(defun unify-lst (x y alist)
  (cond ((null x) (if (null y) alist nil))
        ((null y) nil)
        (t (let ((new-alist (unify (car x) (car y) alist)))
             (if new-alist
                 (unify-lst (cdr x) (cdr y) new-alist)
                 nil)))))

(defun setup ()
  (add-lemmas
   '((equal (append (append x y) z) (append x (append y z)))
     (equal (reverse (append x y)) (append (reverse y) (reverse x)))
     (equal (length (reverse x)) (length x))
     (equal (reverse (reverse x)) x)
     (equal (member x (append y z)) (or (member x y) (member x z)))
     (equal (member x (reverse y)) (member x y))
     (equal (length (append x y)) (plus (length x) (length y)))
     (equal (plus (plus x y) z) (plus x (plus y z)))
     )))

(defun test-term ()
  '(if (equal (append (append x y) (append z w))
              (append x (append y (append z w))))
       (equal (plus (plus a b) (plus c d))
              (plus a (plus b (plus c d))))
       (equal (reverse (append (append v u) (append s r)))
              (append (reverse r) (append (reverse s) (append (reverse u) (reverse v)))))))

(defun main ()
  (setup)
  (print "Lemmas loaded.")
  (let ((term (test-term)))
    (print "Rewriting term...")
    (let ((rewritten (rewrite term)))
      (print "Tautology check...")
      (if (tautologyp rewritten nil nil)
          (print "SUCCESS: Term is a tautology!")
          (print "FAILURE: Term is NOT a tautology!")))))

(main)
