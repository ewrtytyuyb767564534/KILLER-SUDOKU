
(cl:in-package :asdf)

(defsystem "service_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CustomServMess" :depends-on ("_package_CustomServMess"))
    (:file "_package_CustomServMess" :depends-on ("_package"))
  ))