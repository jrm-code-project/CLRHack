(in-package "CLRHACK")

(progn
  (defun make-bank (initial-reserve)
    (let ((reserve initial-reserve)
          (total-accounts 0))
      (lambda (action)
        (if (eq action 'create-account)
            (lambda (initial-deposit)
              (setq reserve (+ reserve initial-deposit))
              (setq total-accounts (+ total-accounts 1))
              (let ((balance initial-deposit))
                (lambda (acc-action amount)
                  (if (eq acc-action 'deposit)
                      (progn
                        (setq balance (+ balance amount))
                        (setq reserve (+ reserve amount))
                        balance)
                      (if (eq acc-action 'withdraw)
                          (progn
                            (setq balance (- balance amount))
                            (setq reserve (- reserve amount))
                            balance)
                          balance)))))
            (if (eq action 'get-reserve)
                reserve
                total-accounts)))))

  (defun main ()
    (let ((bank (make-bank 1000)))
      (let ((create-acc (bank 'create-account)))
        (let ((alice (create-acc 500))
              (bob (create-acc 200)))
          (print "Initial Reserve:")
          (print (bank 'get-reserve))

          (print "Alice deposits 100:")
          (print (alice 'deposit 100))

          (print "Bob withdraws 50:")
          (print (bob 'withdraw 50))

          (print "Total accounts:")
          (print (bank 'get-accounts))

          (print "Final Reserve:")
          (print (bank 'get-reserve))
          nil))))
  (main))
