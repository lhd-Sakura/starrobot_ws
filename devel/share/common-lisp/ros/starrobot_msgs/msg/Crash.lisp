; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude Crash.msg.html

(cl:defclass <Crash> (roslisp-msg-protocol:ros-message)
  ((crash1
    :reader crash1
    :initarg :crash1
    :type cl:boolean
    :initform cl:nil)
   (crash2
    :reader crash2
    :initarg :crash2
    :type cl:boolean
    :initform cl:nil)
   (crash3
    :reader crash3
    :initarg :crash3
    :type cl:boolean
    :initform cl:nil)
   (crash4
    :reader crash4
    :initarg :crash4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Crash (<Crash>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Crash>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Crash)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<Crash> is deprecated: use starrobot_msgs-msg:Crash instead.")))

(cl:ensure-generic-function 'crash1-val :lambda-list '(m))
(cl:defmethod crash1-val ((m <Crash>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:crash1-val is deprecated.  Use starrobot_msgs-msg:crash1 instead.")
  (crash1 m))

(cl:ensure-generic-function 'crash2-val :lambda-list '(m))
(cl:defmethod crash2-val ((m <Crash>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:crash2-val is deprecated.  Use starrobot_msgs-msg:crash2 instead.")
  (crash2 m))

(cl:ensure-generic-function 'crash3-val :lambda-list '(m))
(cl:defmethod crash3-val ((m <Crash>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:crash3-val is deprecated.  Use starrobot_msgs-msg:crash3 instead.")
  (crash3 m))

(cl:ensure-generic-function 'crash4-val :lambda-list '(m))
(cl:defmethod crash4-val ((m <Crash>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:crash4-val is deprecated.  Use starrobot_msgs-msg:crash4 instead.")
  (crash4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Crash>) ostream)
  "Serializes a message object of type '<Crash>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crash1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crash2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crash3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'crash4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Crash>) istream)
  "Deserializes a message object of type '<Crash>"
    (cl:setf (cl:slot-value msg 'crash1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'crash2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'crash3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'crash4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Crash>)))
  "Returns string type for a message object of type '<Crash>"
  "starrobot_msgs/Crash")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Crash)))
  "Returns string type for a message object of type 'Crash"
  "starrobot_msgs/Crash")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Crash>)))
  "Returns md5sum for a message object of type '<Crash>"
  "02b77d6efd11009bfc24883f65767248")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Crash)))
  "Returns md5sum for a message object of type 'Crash"
  "02b77d6efd11009bfc24883f65767248")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Crash>)))
  "Returns full string definition for message of type '<Crash>"
  (cl:format cl:nil "bool crash1~%bool crash2~%bool crash3~%bool crash4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Crash)))
  "Returns full string definition for message of type 'Crash"
  (cl:format cl:nil "bool crash1~%bool crash2~%bool crash3~%bool crash4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Crash>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Crash>))
  "Converts a ROS message object to a list"
  (cl:list 'Crash
    (cl:cons ':crash1 (crash1 msg))
    (cl:cons ':crash2 (crash2 msg))
    (cl:cons ':crash3 (crash3 msg))
    (cl:cons ':crash4 (crash4 msg))
))
