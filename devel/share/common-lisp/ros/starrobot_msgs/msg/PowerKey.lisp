; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude PowerKey.msg.html

(cl:defclass <PowerKey> (roslisp-msg-protocol:ros-message)
  ((powerkey1
    :reader powerkey1
    :initarg :powerkey1
    :type cl:boolean
    :initform cl:nil)
   (powerkey2
    :reader powerkey2
    :initarg :powerkey2
    :type cl:boolean
    :initform cl:nil)
   (powerkey3
    :reader powerkey3
    :initarg :powerkey3
    :type cl:boolean
    :initform cl:nil)
   (powerkey4
    :reader powerkey4
    :initarg :powerkey4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PowerKey (<PowerKey>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerKey>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerKey)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<PowerKey> is deprecated: use starrobot_msgs-msg:PowerKey instead.")))

(cl:ensure-generic-function 'powerkey1-val :lambda-list '(m))
(cl:defmethod powerkey1-val ((m <PowerKey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:powerkey1-val is deprecated.  Use starrobot_msgs-msg:powerkey1 instead.")
  (powerkey1 m))

(cl:ensure-generic-function 'powerkey2-val :lambda-list '(m))
(cl:defmethod powerkey2-val ((m <PowerKey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:powerkey2-val is deprecated.  Use starrobot_msgs-msg:powerkey2 instead.")
  (powerkey2 m))

(cl:ensure-generic-function 'powerkey3-val :lambda-list '(m))
(cl:defmethod powerkey3-val ((m <PowerKey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:powerkey3-val is deprecated.  Use starrobot_msgs-msg:powerkey3 instead.")
  (powerkey3 m))

(cl:ensure-generic-function 'powerkey4-val :lambda-list '(m))
(cl:defmethod powerkey4-val ((m <PowerKey>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:powerkey4-val is deprecated.  Use starrobot_msgs-msg:powerkey4 instead.")
  (powerkey4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerKey>) ostream)
  "Serializes a message object of type '<PowerKey>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'powerkey1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'powerkey2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'powerkey3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'powerkey4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerKey>) istream)
  "Deserializes a message object of type '<PowerKey>"
    (cl:setf (cl:slot-value msg 'powerkey1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'powerkey2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'powerkey3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'powerkey4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerKey>)))
  "Returns string type for a message object of type '<PowerKey>"
  "starrobot_msgs/PowerKey")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerKey)))
  "Returns string type for a message object of type 'PowerKey"
  "starrobot_msgs/PowerKey")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerKey>)))
  "Returns md5sum for a message object of type '<PowerKey>"
  "b797b23d4e603a9d30a243a455a1cc76")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerKey)))
  "Returns md5sum for a message object of type 'PowerKey"
  "b797b23d4e603a9d30a243a455a1cc76")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerKey>)))
  "Returns full string definition for message of type '<PowerKey>"
  (cl:format cl:nil "bool powerkey1~%bool powerkey2~%bool powerkey3~%bool powerkey4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerKey)))
  "Returns full string definition for message of type 'PowerKey"
  (cl:format cl:nil "bool powerkey1~%bool powerkey2~%bool powerkey3~%bool powerkey4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerKey>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerKey>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerKey
    (cl:cons ':powerkey1 (powerkey1 msg))
    (cl:cons ':powerkey2 (powerkey2 msg))
    (cl:cons ':powerkey3 (powerkey3 msg))
    (cl:cons ':powerkey4 (powerkey4 msg))
))
