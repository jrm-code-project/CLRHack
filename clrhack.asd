(defsystem "clrhack"
  :author "Joe Marshall"
  :version "0.1"
  :license "MIT"
  :depends-on ("alexandria" "series" "fold" "named-let" "function" "fiveam")
  :components ((:file "package")
               (:file "clr-read"  :depends-on ("package"))
               (:file "data"      :depends-on ("package"))
               (:file "ast"       :depends-on ("package" "clr-read"))
               (:file "ast-walker" :depends-on ("ast"))
               (:file "generate-pass1" :depends-on ("ast-walker" "data" "clr-read"))
               (:file "generate"  :depends-on ("generate-pass1"))
               (:module "CLSymbols" :components ((:file "write-symbols")))
               (:module "Tests" :depends-on ("package")
                        :components ((:file "test")))))
