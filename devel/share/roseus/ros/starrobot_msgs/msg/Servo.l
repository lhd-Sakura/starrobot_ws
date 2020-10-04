;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Servo)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Servo (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::SERVO")
  (make-package "STARROBOT_MSGS::SERVO"))

(in-package "ROS")
;;//! \htmlinclude Servo.msg.html


(defclass starrobot_msgs::Servo
  :super ros::object
  :slots (_servo1 _servo2 _servo3 _servo4 ))

(defmethod starrobot_msgs::Servo
  (:init
   (&key
    ((:servo1 __servo1) 0.0)
    ((:servo2 __servo2) 0.0)
    ((:servo3 __servo3) 0.0)
    ((:servo4 __servo4) 0.0)
    )
   (send-super :init)
   (setq _servo1 (float __servo1))
   (setq _servo2 (float __servo2))
   (setq _servo3 (float __servo3))
   (setq _servo4 (float __servo4))
   self)
  (:servo1
   (&optional __servo1)
   (if __servo1 (setq _servo1 __servo1)) _servo1)
  (:servo2
   (&optional __servo2)
   (if __servo2 (setq _servo2 __servo2)) _servo2)
  (:servo3
   (&optional __servo3)
   (if __servo3 (setq _servo3 __servo3)) _servo3)
  (:servo4
   (&optional __servo4)
   (if __servo4 (setq _servo4 __servo4)) _servo4)
  (:serialization-length
   ()
   (+
    ;; float32 _servo1
    4
    ;; float32 _servo2
    4
    ;; float32 _servo3
    4
    ;; float32 _servo4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _servo1
       (sys::poke _servo1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servo2
       (sys::poke _servo2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servo3
       (sys::poke _servo3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servo4
       (sys::poke _servo4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _servo1
     (setq _servo1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servo2
     (setq _servo2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servo3
     (setq _servo3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servo4
     (setq _servo4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get starrobot_msgs::Servo :md5sum-) "e8a9ccaa500241e3aac1566f1f2857aa")
(setf (get starrobot_msgs::Servo :datatype-) "starrobot_msgs/Servo")
(setf (get starrobot_msgs::Servo :definition-)
      "float32 servo1
float32 servo2
float32 servo3
float32 servo4
")



(provide :starrobot_msgs/Servo "e8a9ccaa500241e3aac1566f1f2857aa")


