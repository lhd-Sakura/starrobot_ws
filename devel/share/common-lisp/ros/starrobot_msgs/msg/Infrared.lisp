; Auto-generated. Do not edit!


(cl:in-package starrobot_msgs-msg)


;//! \htmlinclude Infrared.msg.html

(cl:defclass <Infrared> (roslisp-msg-protocol:ros-message)
  ((infrared1
    :reader infrared1
    :initarg :infrared1
    :type cl:boolean
    :initform cl:nil)
   (infrared2
    :reader infrared2
    :initarg :infrared2
    :type cl:boolean
    :initform cl:nil)
   (infrared3
    :reader infrared3
    :initarg :infrared3
    :type cl:boolean
    :initform cl:nil)
   (infrared4
    :reader infrared4
    :initarg :infrared4
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Infrared (<Infrared>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Infrared>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Infrared)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name starrobot_msgs-msg:<Infrared> is deprecated: use starrobot_msgs-msg:Infrared instead.")))

(cl:ensure-generic-function 'infrared1-val :lambda-list '(m))
(cl:defmethod infrared1-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:infrared1-val is deprecated.  Use starrobot_msgs-msg:infrared1 instead.")
  (infrared1 m))

(cl:ensure-generic-function 'infrared2-val :lambda-list '(m))
(cl:defmethod infrared2-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:infrared2-val is deprecated.  Use starrobot_msgs-msg:infrared2 instead.")
  (infrared2 m))

(cl:ensure-generic-function 'infrared3-val :lambda-list '(m))
(cl:defmethod infrared3-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:infrared3-val is deprecated.  Use starrobot_msgs-msg:infrared3 instead.")
  (infrared3 m))

(cl:ensure-generic-function 'infrared4-val :lambda-list '(m))
(cl:defmethod infrared4-val ((m <Infrared>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader starrobot_msgs-msg:infrared4-val is deprecated.  Use starrobot_msgs-msg:infrared4 instead.")
  (infrared4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Infrared>) ostream)
  "Serializes a message object of type '<Infrared>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'infrared1) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'infrared2) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'infrared3) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'infrared4) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Infrared>) istream)
  "Deserializes a message object of type '<Infrared>"
    (cl:setf (cl:slot-value msg 'infrared1) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'infrared2) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'infrared3) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'infrared4) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Infrared>)))
  "Returns string type for a message object of type '<Infrared>"
  "starrobot_msgs/Infrared")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Infrared)))
  "Returns string type for a message object of type 'Infrared"
  "starrobot_msgs/Infrared")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Infrared>)))
  "Returns md5sum for a message object of type '<Infrared>"
  "4686eff1b895a48c46b472d5af75db05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Infrared)))
  "Returns md5sum for a message object of type 'Infrared"
  "4686eff1b895a48c46b472d5af75db05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Infrared>)))
  "Returns full string definition for message of type '<Infrared>"
  (cl:format cl:nil "bool infrared1~%bool infrared2~%bool infrared3~%bool infrared4~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Infrared)))
  "Returns full string definition for message of type 'Infrared"
  (cl:format cl:nil "bool infrared1~%bool infrared2~%bool infrared3~%bool infrared4~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Infrared>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Infrared>))
  "Converts a ROS message object to a list"
  (cl:list 'Infrared
    (cl:cons ':infrared1 (infrared1 msg))
    (cl:cons ':infrared2 (infrared2 msg))
    (cl:cons ':infrared3 (infrared3 msg))
    (cl:cons ':infrared4 (infrared4 msg))
))
