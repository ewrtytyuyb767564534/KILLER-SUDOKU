; Auto-generated. Do not edit!


(cl:in-package service_pkg-srv)


;//! \htmlinclude CustomServMess-request.msg.html

(cl:defclass <CustomServMess-request> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass CustomServMess-request (<CustomServMess-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServMess-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServMess-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_pkg-srv:<CustomServMess-request> is deprecated: use service_pkg-srv:CustomServMess-request instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <CustomServMess-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_pkg-srv:duration-val is deprecated.  Use service_pkg-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServMess-request>) ostream)
  "Serializes a message object of type '<CustomServMess-request>"
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServMess-request>) istream)
  "Deserializes a message object of type '<CustomServMess-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServMess-request>)))
  "Returns string type for a service object of type '<CustomServMess-request>"
  "service_pkg/CustomServMessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServMess-request)))
  "Returns string type for a service object of type 'CustomServMess-request"
  "service_pkg/CustomServMessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServMess-request>)))
  "Returns md5sum for a message object of type '<CustomServMess-request>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServMess-request)))
  "Returns md5sum for a message object of type 'CustomServMess-request"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServMess-request>)))
  "Returns full string definition for message of type '<CustomServMess-request>"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServMess-request)))
  "Returns full string definition for message of type 'CustomServMess-request"
  (cl:format cl:nil "int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServMess-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServMess-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServMess-request
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude CustomServMess-response.msg.html

(cl:defclass <CustomServMess-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CustomServMess-response (<CustomServMess-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomServMess-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomServMess-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_pkg-srv:<CustomServMess-response> is deprecated: use service_pkg-srv:CustomServMess-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CustomServMess-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_pkg-srv:success-val is deprecated.  Use service_pkg-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomServMess-response>) ostream)
  "Serializes a message object of type '<CustomServMess-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomServMess-response>) istream)
  "Deserializes a message object of type '<CustomServMess-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomServMess-response>)))
  "Returns string type for a service object of type '<CustomServMess-response>"
  "service_pkg/CustomServMessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServMess-response)))
  "Returns string type for a service object of type 'CustomServMess-response"
  "service_pkg/CustomServMessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomServMess-response>)))
  "Returns md5sum for a message object of type '<CustomServMess-response>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomServMess-response)))
  "Returns md5sum for a message object of type 'CustomServMess-response"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomServMess-response>)))
  "Returns full string definition for message of type '<CustomServMess-response>"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomServMess-response)))
  "Returns full string definition for message of type 'CustomServMess-response"
  (cl:format cl:nil "bool success~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomServMess-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomServMess-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomServMess-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CustomServMess)))
  'CustomServMess-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CustomServMess)))
  'CustomServMess-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomServMess)))
  "Returns string type for a service object of type '<CustomServMess>"
  "service_pkg/CustomServMess")