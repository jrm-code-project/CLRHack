(in-package "CLRHACK")

(defparameter *bank-test*  '(progn
     (defun add (x y) (%sub x (%sub 0 y)))
     (defun sub (x y) (%sub x y))

     (defun make-bank (initial-reserve)
       (let ((reserve initial-reserve)
             (total-accounts 0))
         (lambda (action)
           (if (%eq action 'create-account)
               (lambda (initial-deposit)
                 (setq reserve (add reserve initial-deposit))
                 (setq total-accounts (add total-accounts 1))
                 (let ((balance initial-deposit))
                   (lambda (acc-action amount)
                     (if (%eq acc-action 'deposit)
                         (progn
                           (setq balance (add balance amount))
                           (setq reserve (add reserve amount))
                           balance)
                         (if (%eq acc-action 'withdraw)
                             (progn
                               (setq balance (sub balance amount))
                               (setq reserve (sub reserve amount))
                               balance)
                             balance)))))
               (if (%eq action 'get-reserve)
                   reserve
                   total-accounts)))))
                   
     (defun main ()
       (let ((bank (make-bank 1000)))
         (let ((create-acc (bank 'create-account)))
           (let ((alice (create-acc 500))
                 (bob (create-acc 200)))
             (%write-line "Initial Reserve:")
             (%write-int (bank 'get-reserve))
             
             (%write-line "Alice deposits 100:")
             (%write-int (alice 'deposit 100))
             
             (%write-line "Bob withdraws 50:")
             (%write-int (bob 'withdraw 50))
             
             (%write-line "Total accounts:")
             (%write-int (bank 'get-accounts))
             
             (%write-line "Final Reserve:")
             (%write-int (bank 'get-reserve))
             nil))))
     (main)))

(compile-and-run *bank-test* "BankTest")
