(in-package "CLRHACK")

(progn
  (defun count-down (n)
    (if (eq n 0)
        "Done"
        (count-down (- n 1))))

  (defun main ()
    (print "Starting countdown from 1,000,000...")
    (print (count-down 1000000)))

  (main))
