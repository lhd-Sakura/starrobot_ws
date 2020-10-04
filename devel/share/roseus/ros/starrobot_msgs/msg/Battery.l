;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Battery)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Battery (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::BATTERY")
  (make-package "STARROBOT_MSGS::BATTERY"))

(in-package "ROS")
;;//! \htmlinclude Battery.msg.html


(defclass starrobot_msgs::Battery
  :super ros::object
  :slots (_voltage _electricity ))

(defmethod starrobot_msgs::Battery
  (:init
   (&key
    ((:voltage __voltage) 0.0)
    ((:electricity __electricity) 0.0)
    )
   (send-super :init)
   (setq _voltage (float __voltage))
   (setq _electricity (float __electricity))
   self)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:electricity
   (&optional __electricity)
   (if __electricity (setq _electricity __electricity)) _electricity)
  (:serialization-length
   ()
   (+
    ;; float32 _voltage
    4
    ;; float32 _electricity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _electricity
       (sys::poke _electricity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _electricity
     (setq _electricity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get starrobot_msgs::Battery :md5sum-) "d34fbd3d575d58d32a3790ef4eab2aca")
(setf (get starrobot_msgs::Battery :datatype-) "starrobot_msgs/Battery")
(setf (get starrobot_msgs::Battery :definition-)
      "float32 voltage
float32 electricity
")



(provide :starrobot_msgs/Battery "d34fbd3d575d58d32a3790ef4eab2aca")


