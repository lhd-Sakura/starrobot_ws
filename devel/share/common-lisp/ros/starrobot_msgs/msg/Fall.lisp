; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude Fall.msg.html

(cl:defclass <Fall> (roslisp-msg-protocol:ros-message)
  ((fall1
    :reader fall1
    :initarg :fall1
    :type cl:boolean
    :initform cl:nil)
   (fall2
    :reader fall2
    :initarg :fall2
    :type cl:boolean
    :initform cl:nil)
   (fall3
    :reader fall3
    :initarg :fall3
    :type cl:boolean
    :initform cl:nil)
   (fall4
    :reader fall4
    :initarg :fall4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Fall (<Fall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Fall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Fall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<Fall> is deprecated: use starrobot_msgs-msg:Fall instead.")))

(cl:ensure-generic-function 'fall1-val :lambda-list '(m))
(cl:defmethod fall1-val ((m <Fall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:fall1-val is deprecated.  Use starrobot_msgs-msg:fall1 instead.")
  (fall1 m))

(cl:ensure-generic-function 'fall2-val :lambda-list '(m))
(cl:defmethod fall2-val ((m <Fall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:fall2-val is deprecated.  Use starrobot_msgs-msg:fall2 instead.")
  (fall2 m))

(cl:ensure-generic-function 'fall3-val :lambda-list '(m))
(cl:defmethod fall3-val ((m <Fall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:fall3-val is deprecated.  Use starrobot_msgs-msg:fall3 instead.")
  (fall3 m))

(cl:ensure-generic-function 'fall4-val :lambda-list '(m))
(cl:defmethod fall4-val ((m <Fall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:fall4-val is deprecated.  Use starrobot_msgs-msg:fall4 instead.")
  (fall4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Fall>) ostream)
  "Serializes a message object of type '<Fall>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fall4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Fall>) istream)
  "Deserializes a message object of type '<Fall>"
    (cl:setf (cl:slot-value msg 'fall1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fall4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Fall>)))
  "Returns string type for a message object of type '<Fall>"
  "starrobot_msgs/Fall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Fall)))
  "Returns string type for a message object of type 'Fall"
  "starrobot_msgs/Fall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Fall>)))
  "Returns md5sum for a message object of type '<Fall>"
  "ec4daf7144d18cc51c5e99829b72588d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Fall)))
  "Returns md5sum for a message object of type 'Fall"
  "ec4daf7144d18cc51c5e99829b72588d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Fall>)))
  "Returns full string definition for message of type '<Fall>"
  (cl:format cl:nil "bool fall1~%bool fall2~%bool fall3~%bool fall4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Fall)))
  "Returns full string definition for message of type 'Fall"
  (cl:format cl:nil "bool fall1~%bool fall2~%bool fall3~%bool fall4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Fall>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Fall>))
  "Converts a ROS message object to a list"
  (cl:list 'Fall
    (cl:cons ':fall1 (fall1 msg))
    (cl:cons ':fall2 (fall2 msg))
    (cl:cons ':fall3 (fall3 msg))
    (cl:cons ':fall4 (fall4 msg))
))
