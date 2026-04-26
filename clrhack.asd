(defsystem "clrhack"
  :author "Joe Marshall"
  :version "0.1"
  :license "MIT"
  :depends-on ()
  :components ((:file "data"      :depends-on ("package"))
               (:file "package")
               (:module "CLSymbols" :components ((:file "write-symbols")))))
