;;; pkg.lisp --- krypt packages
(defpackage :keyutils
  (:use :cl :sb-alien :sb-c-call))

(defpackage :krypt
  (:use :cl :keyutils))
