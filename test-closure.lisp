(in-package "CLRHACK")

(compile-and-run
 '(let ((make-greeter
         (lambda (greeting)
           (let ((g greeting))
             (lambda (name)
               (%write-line g)
               (%write-line name))))))
    (let ((greet-hello (make-greeter "Hello"))
          (greet-bonjour (make-greeter "Bonjour")))
      (greet-hello "Alice")
      (greet-bonjour "Bob")))
 "ClosureTest")
