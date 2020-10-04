;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::rpm)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'rpm (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::RPM")
  (make-package "STARROBOT_MSGS::RPM"))

(in-package "ROS")
;;//! \htmlinclude rpm.msg.html


(defclass starrobot_msgs::rpm
  :super ros::object
  :slots (_MotorRpm1 _MotorRpm2 _MotorRpm3 _MotorRpm4 ))

(defmethod starrobot_msgs::rpm
  (:init
   (&key
    ((:MotorRpm1 __MotorRpm1) 0)
    ((:MotorRpm2 __MotorRpm2) 0)
    ((:MotorRpm3 __MotorRpm3) 0)
    ((:MotorRpm4 __MotorRpm4) 0)
    )
   (send-super :init)
   (setq _MotorRpm1 (round __MotorRpm1))
   (setq _MotorRpm2 (round __MotorRpm2))
   (setq _MotorRpm3 (round __MotorRpm3))
   (setq _MotorRpm4 (round __MotorRpm4))
   self)
  (:MotorRpm1
   (&optional __MotorRpm1)
   (if __MotorRpm1 (setq _MotorRpm1 __MotorRpm1)) _MotorRpm1)
  (:MotorRpm2
   (&optional __MotorRpm2)
   (if __MotorRpm2 (setq _MotorRpm2 __MotorRpm2)) _MotorRpm2)
  (:MotorRpm3
   (&optional __MotorRpm3)
   (if __MotorRpm3 (setq _MotorRpm3 __MotorRpm3)) _MotorRpm3)
  (:MotorRpm4
   (&optional __MotorRpm4)
   (if __MotorRpm4 (setq _MotorRpm4 __MotorRpm4)) _MotorRpm4)
  (:serialization-length
   ()
   (+
    ;; int32 _MotorRpm1
    4
    ;; int32 _MotorRpm2
    4
    ;; int32 _MotorRpm3
    4
    ;; int32 _MotorRpm4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _MotorRpm1
       (write-long _MotorRpm1 s)
     ;; int32 _MotorRpm2
       (write-long _MotorRpm2 s)
     ;; int32 _MotorRpm3
       (write-long _MotorRpm3 s)
     ;; int32 _MotorRpm4
       (write-long _MotorRpm4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _MotorRpm1
     (setq _MotorRpm1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _MotorRpm2
     (setq _MotorRpm2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _MotorRpm3
     (setq _MotorRpm3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _MotorRpm4
     (setq _MotorRpm4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get starrobot_msgs::rpm :md5sum-) "73b53ebe68c9f903353f1f4c0eba54e4")
(setf (get starrobot_msgs::rpm :datatype-) "starrobot_msgs/rpm")
(setf (get starrobot_msgs::rpm :definition-)
      "int32 MotorRpm1
int32 MotorRpm2
int32 MotorRpm3
int32 MotorRpm4
")



(provide :starrobot_msgs/rpm "73b53ebe68c9f903353f1f4c0eba54e4")


