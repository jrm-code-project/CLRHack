(in-package "CLRHACK")

(let ((make-greeter
       (lambda (greeting)
         (let ((g greeting))
           (lambda (name)
             (print g)
             (print name))))))
  (let ((greet-hello (make-greeter "Hello"))
        (greet-bonjour (make-greeter "Bonjour")))
    (greet-hello "Alice")
    (greet-bonjour "Bob")))
