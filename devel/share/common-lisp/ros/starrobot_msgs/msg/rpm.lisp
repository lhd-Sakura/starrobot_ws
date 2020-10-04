; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude rpm.msg.html

(cl:defclass <rpm> (roslisp-msg-protocol:ros-message)
  ((MotorRpm1
    :reader MotorRpm1
    :initarg :MotorRpm1
    :type cl:integer
    :initform 0)
   (MotorRpm2
    :reader MotorRpm2
    :initarg :MotorRpm2
    :type cl:integer
    :initform 0)
   (MotorRpm3
    :reader MotorRpm3
    :initarg :MotorRpm3
    :type cl:integer
    :initform 0)
   (MotorRpm4
    :reader MotorRpm4
    :initarg :MotorRpm4
    :type cl:integer
    :initform 0))
)

(cl:defclass rpm (<rpm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rpm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rpm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<rpm> is deprecated: use starrobot_msgs-msg:rpm instead.")))

(cl:ensure-generic-function 'MotorRpm1-val :lambda-list '(m))
(cl:defmethod MotorRpm1-val ((m <rpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:MotorRpm1-val is deprecated.  Use starrobot_msgs-msg:MotorRpm1 instead.")
  (MotorRpm1 m))

(cl:ensure-generic-function 'MotorRpm2-val :lambda-list '(m))
(cl:defmethod MotorRpm2-val ((m <rpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:MotorRpm2-val is deprecated.  Use starrobot_msgs-msg:MotorRpm2 instead.")
  (MotorRpm2 m))

(cl:ensure-generic-function 'MotorRpm3-val :lambda-list '(m))
(cl:defmethod MotorRpm3-val ((m <rpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:MotorRpm3-val is deprecated.  Use starrobot_msgs-msg:MotorRpm3 instead.")
  (MotorRpm3 m))

(cl:ensure-generic-function 'MotorRpm4-val :lambda-list '(m))
(cl:defmethod MotorRpm4-val ((m <rpm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:MotorRpm4-val is deprecated.  Use starrobot_msgs-msg:MotorRpm4 instead.")
  (MotorRpm4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rpm>) ostream)
  "Serializes a message object of type '<rpm>"
  (cl:let* ((signed (cl:slot-value msg 'MotorRpm1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'MotorRpm2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'MotorRpm3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'MotorRpm4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rpm>) istream)
  "Deserializes a message object of type '<rpm>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotorRpm1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotorRpm2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotorRpm3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'MotorRpm4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rpm>)))
  "Returns string type for a message object of type '<rpm>"
  "starrobot_msgs/rpm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rpm)))
  "Returns string type for a message object of type 'rpm"
  "starrobot_msgs/rpm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rpm>)))
  "Returns md5sum for a message object of type '<rpm>"
  "73b53ebe68c9f903353f1f4c0eba54e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rpm)))
  "Returns md5sum for a message object of type 'rpm"
  "73b53ebe68c9f903353f1f4c0eba54e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rpm>)))
  "Returns full string definition for message of type '<rpm>"
  (cl:format cl:nil "int32 MotorRpm1~%int32 MotorRpm2~%int32 MotorRpm3~%int32 MotorRpm4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rpm)))
  "Returns full string definition for message of type 'rpm"
  (cl:format cl:nil "int32 MotorRpm1~%int32 MotorRpm2~%int32 MotorRpm3~%int32 MotorRpm4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rpm>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rpm>))
  "Converts a ROS message object to a list"
  (cl:list 'rpm
    (cl:cons ':MotorRpm1 (MotorRpm1 msg))
    (cl:cons ':MotorRpm2 (MotorRpm2 msg))
    (cl:cons ':MotorRpm3 (MotorRpm3 msg))
    (cl:cons ':MotorRpm4 (MotorRpm4 msg))
))
