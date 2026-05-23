(in-package "CLRHACK")

(defun test-restart-bind-simple ()
  (print "--- test-restart-bind-simple ---")
  (restart-bind ((my-restart (lambda () 42)))
    (let ((r (find-restart 'my-restart)))
      (if r
          (progn
            (print "Found restart: T")
            (print (invoke-restart 'my-restart)))
          (print "Found restart: NIL")))))

(defun test-restart-bind-args ()
  (print "--- test-restart-bind-args ---")
  (restart-bind ((add-restart (lambda (x y) (+ x y))))
    (print (invoke-restart 'add-restart 10 20))))

(defun test-restart-bind-shadowing ()
  (print "--- test-restart-bind-shadowing ---")
  (restart-bind ((shadow (lambda () "Outer")))
    (restart-bind ((shadow (lambda () "Inner")))
      (print (invoke-restart 'shadow))))
  (restart-bind ((shadow (lambda () "Outer")))
    (print (invoke-restart 'shadow))))

(defun test-restart-case-simple ()
  (print "--- test-restart-case-simple ---")
  (let ((val (restart-case (invoke-restart 'return-val 123)
               (return-val (x) x))))
    (print val)))

(defun choose-restart (n)
  (restart-case (if (= n 1) 
                    (invoke-restart 'one)
                    (invoke-restart 'two))
    (one () "First")
    (two () "Second")))

(defun test-restart-case-multiple ()
  (print "--- test-restart-case-multiple ---")
  (print (choose-restart 1))
  (print (choose-restart 2)))

(defun test-restart-case-complex-args ()
  (print "--- test-restart-case-complex-args ---")
  (let ((res (restart-case (invoke-restart 'compute 10 20 30)
               (compute (a b c)
                 (+ a (* b c))))))
    (print res)))

(defun test-restart-case-no-match ()
  (print "--- test-restart-case-no-match ---")
  (print (restart-case 42
           (not-reached () 0))))

(defun main ()
  (test-restart-bind-simple)
  (test-restart-bind-args)
  (test-restart-bind-shadowing)
  (test-restart-case-simple)
  (test-restart-case-multiple)
  (test-restart-case-complex-args)
  (test-restart-case-no-match))

(main)
