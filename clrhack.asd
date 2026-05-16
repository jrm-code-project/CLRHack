(defsystem "clrhack"
  :author "Joe Marshall"
  :version "0.1"
  :license "MIT"
  :depends-on ()
  :components ((:file "package")
               (:file "clr-read"  :depends-on ("package"))
               (:file "data"      :depends-on ("package"))
               (:file "ast"       :depends-on ("package" "clr-read"))
               (:file "generate"  :depends-on ("ast" "data" "clr-read"))
               (:module "CLSymbols" :components ((:file "write-symbols")))))
