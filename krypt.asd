(defsystem "krypt/keyutils"
  :author "ellis <ellis@rwest.io>"
  :maintainer "ellis <ellis@rwest.io>"
  :description "key management"
  :homepage "https://rwest.io/krypt"
  :bug-tracker "https://lab.rwest.io/ellis/krypt/issues"
  :source-control "https://lab.rwest.io/ellis/krypt"
  :license "WTF"
  :version "0.1.0"
  :serial t
  :components ((:file "lisp/pkg")
	       (:file "lisp/keyutils")))

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
  :serial t
  :components ((:file "lisp/pkg")
	       (:file "lisp/proto")
	       (:file "lisp/krypt")))
  
(defmethod perform :after ((op load-op) (c (eql (find-system :krypt))))
  (pushnew :krypt *features*))
