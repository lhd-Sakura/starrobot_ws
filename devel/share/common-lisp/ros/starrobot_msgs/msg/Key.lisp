; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude Key.msg.html

(cl:defclass <Key> (roslisp-msg-protocol:ros-message)
  ((key1
    :reader key1
    :initarg :key1
    :type cl:boolean
    :initform cl:nil)
   (key2
    :reader key2
    :initarg :key2
    :type cl:boolean
    :initform cl:nil)
   (key3
    :reader key3
    :initarg :key3
    :type cl:boolean
    :initform cl:nil)
   (key4
    :reader key4
    :initarg :key4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Key (<Key>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Key>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Key)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<Key> is deprecated: use starrobot_msgs-msg:Key instead.")))

(cl:ensure-generic-function 'key1-val :lambda-list '(m))
(cl:defmethod key1-val ((m <Key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:key1-val is deprecated.  Use starrobot_msgs-msg:key1 instead.")
  (key1 m))

(cl:ensure-generic-function 'key2-val :lambda-list '(m))
(cl:defmethod key2-val ((m <Key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:key2-val is deprecated.  Use starrobot_msgs-msg:key2 instead.")
  (key2 m))

(cl:ensure-generic-function 'key3-val :lambda-list '(m))
(cl:defmethod key3-val ((m <Key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:key3-val is deprecated.  Use starrobot_msgs-msg:key3 instead.")
  (key3 m))

(cl:ensure-generic-function 'key4-val :lambda-list '(m))
(cl:defmethod key4-val ((m <Key>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:key4-val is deprecated.  Use starrobot_msgs-msg:key4 instead.")
  (key4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Key>) ostream)
  "Serializes a message object of type '<Key>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Key>) istream)
  "Deserializes a message object of type '<Key>"
    (cl:setf (cl:slot-value msg 'key1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Key>)))
  "Returns string type for a message object of type '<Key>"
  "starrobot_msgs/Key")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Key)))
  "Returns string type for a message object of type 'Key"
  "starrobot_msgs/Key")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Key>)))
  "Returns md5sum for a message object of type '<Key>"
  "3171c264b80fece5877bbb1adde04ad3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Key)))
  "Returns md5sum for a message object of type 'Key"
  "3171c264b80fece5877bbb1adde04ad3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Key>)))
  "Returns full string definition for message of type '<Key>"
  (cl:format cl:nil "bool key1~%bool key2~%bool key3~%bool key4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Key)))
  "Returns full string definition for message of type 'Key"
  (cl:format cl:nil "bool key1~%bool key2~%bool key3~%bool key4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Key>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Key>))
  "Converts a ROS message object to a list"
  (cl:list 'Key
    (cl:cons ':key1 (key1 msg))
    (cl:cons ':key2 (key2 msg))
    (cl:cons ':key3 (key3 msg))
    (cl:cons ':key4 (key4 msg))
))
