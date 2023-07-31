(defsystem "krypt/keyutils"
  :author "ellis <ellis@rwest.io>"
  :maintainer "ellis <ellis@rwest.io>"
  :description "key management"
  :homepage "https://rwest.io/krypt"
  :bug-tracker "https://lab.rwest.io/ellis/krypt/issues"
  :source-control "https://lab.rwest.io/ellis/krypt"
  :license "WTF"
  :version "0.1.0"
  :components ((:file "keyutils")))

(defsystem "krypt"
  :version "0.1.0"
  :author "ellis <ellis@rwest.io>"
  :maintainer "ellis <ellis@rwest.io>"
  :description "key management"
  :homepage "https://rwest.io/krypt"
  :bug-tracker "https://lab.rwest.io/ellis/krypt/issues"
  :source-control "https://lab.rwest.io/ellis/krypt"
  :license "WTF"
  :depends-on ("krypt/keyutils")
  :components ((:file "pkg")
	       (:file "proto")
	       (:file "krypt")))
  
(defmethod perform :after ((op load-op) (c (eql (find-system :sxp))))
  (pushnew :krypt *features*))
