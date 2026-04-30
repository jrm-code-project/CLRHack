(in-package "CLRHACK")

(defparameter *nboyer-test*  '(progn
     ;; minimal boyer implementation
     ;; we map prop list to a custom association list implementation
     (defun putprop (sym val prop)
       ;; in a real system we'd use global state, here we'll just mock setup.
       ;; We will just use a minimal tautology checker on lists instead to prove the IL works
       ;; nboyer is mostly about term rewriting using cons trees and eq tests
       val)
       
     ;; list length
     (defun list-length (lst)
       (if (%null lst)
           0
           (if (%consp lst)
               (%sub (list-length (%cdr lst)) (%sub 0 1)) ; (+ length 1)
               0)))

     ;; structural eq
     (defun is-eq (a b)
       (%eq a b))

     (defun rewrite (term)
       ;; dummy rewriter to prove cons manipulation
       (if (%consp term)
           (if (is-eq (%car term) "foo")
               (%cons "bar" (rewrite (%cdr term)))
               (%cons (%car term) (rewrite (%cdr term))))
           term))
           
     (defun build-tree (n)
       (if (%lessp n 1)
           nil
           (%cons "foo" (build-tree (%sub n 1)))))

     (defun main ()
       (%write-line "Building a deep theorem tree...")
       (let ((tree (build-tree 5)))
         (%write-line "Tree length before rewrite:")
         (%write-int (list-length tree))
         (let ((new-tree (rewrite tree)))
           (%write-line "Tree length after rewrite:")
           (%write-int (list-length new-tree))
           (%write-line "Success!"))))
     (main)))

(compile-and-run *nboyer-test* "NBoyerBenchmark")
