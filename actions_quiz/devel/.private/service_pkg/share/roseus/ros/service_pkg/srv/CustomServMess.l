;; Auto-generated. Do not edit!


(when (boundp 'service_pkg::CustomServMess)
  (if (not (find-package "SERVICE_PKG"))
    (make-package "SERVICE_PKG"))
  (shadow 'CustomServMess (find-package "SERVICE_PKG")))
(unless (find-package "SERVICE_PKG::CUSTOMSERVMESS")
  (make-package "SERVICE_PKG::CUSTOMSERVMESS"))
(unless (find-package "SERVICE_PKG::CUSTOMSERVMESSREQUEST")
  (make-package "SERVICE_PKG::CUSTOMSERVMESSREQUEST"))
(unless (find-package "SERVICE_PKG::CUSTOMSERVMESSRESPONSE")
  (make-package "SERVICE_PKG::CUSTOMSERVMESSRESPONSE"))

(in-package "ROS")





(defclass service_pkg::CustomServMessRequest
  :super ros::object
  :slots (_duration ))

(defmethod service_pkg::CustomServMessRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass service_pkg::CustomServMessResponse
  :super ros::object
  :slots (_success ))

(defmethod service_pkg::CustomServMessResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass service_pkg::CustomServMess
  :super ros::object
  :slots ())

(setf (get service_pkg::CustomServMess :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get service_pkg::CustomServMess :datatype-) "service_pkg/CustomServMess")
(setf (get service_pkg::CustomServMess :request) service_pkg::CustomServMessRequest)
(setf (get service_pkg::CustomServMess :response) service_pkg::CustomServMessResponse)

(defmethod service_pkg::CustomServMessRequest
  (:response () (instance service_pkg::CustomServMessResponse :init)))

(setf (get service_pkg::CustomServMessRequest :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get service_pkg::CustomServMessRequest :datatype-) "service_pkg/CustomServMessRequest")
(setf (get service_pkg::CustomServMessRequest :definition-)
      "int32 duration
---
bool success


")

(setf (get service_pkg::CustomServMessResponse :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get service_pkg::CustomServMessResponse :datatype-) "service_pkg/CustomServMessResponse")
(setf (get service_pkg::CustomServMessResponse :definition-)
      "int32 duration
---
bool success


")



(provide :service_pkg/CustomServMess "b92c952a9248b3029cefe45f52f6ffde")


