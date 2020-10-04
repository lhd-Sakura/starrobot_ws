;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Sonar)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Sonar (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::SONAR")
  (make-package "STARROBOT_MSGS::SONAR"))

(in-package "ROS")
;;//! \htmlinclude Sonar.msg.html


(defclass starrobot_msgs::Sonar
  :super ros::object
  :slots (_sonar1 _sonar2 _sonar3 _sonar4 ))

(defmethod starrobot_msgs::Sonar
  (:init
   (&key
    ((:sonar1 __sonar1) 0.0)
    ((:sonar2 __sonar2) 0.0)
    ((:sonar3 __sonar3) 0.0)
    ((:sonar4 __sonar4) 0.0)
    )
   (send-super :init)
   (setq _sonar1 (float __sonar1))
   (setq _sonar2 (float __sonar2))
   (setq _sonar3 (float __sonar3))
   (setq _sonar4 (float __sonar4))
   self)
  (:sonar1
   (&optional __sonar1)
   (if __sonar1 (setq _sonar1 __sonar1)) _sonar1)
  (:sonar2
   (&optional __sonar2)
   (if __sonar2 (setq _sonar2 __sonar2)) _sonar2)
  (:sonar3
   (&optional __sonar3)
   (if __sonar3 (setq _sonar3 __sonar3)) _sonar3)
  (:sonar4
   (&optional __sonar4)
   (if __sonar4 (setq _sonar4 __sonar4)) _sonar4)
  (:serialization-length
   ()
   (+
    ;; float32 _sonar1
    4
    ;; float32 _sonar2
    4
    ;; float32 _sonar3
    4
    ;; float32 _sonar4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _sonar1
       (sys::poke _sonar1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sonar2
       (sys::poke _sonar2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sonar3
       (sys::poke _sonar3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sonar4
       (sys::poke _sonar4 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _sonar1
     (setq _sonar1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sonar2
     (setq _sonar2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sonar3
     (setq _sonar3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sonar4
     (setq _sonar4 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get starrobot_msgs::Sonar :md5sum-) "2f513f8756037fca86f700a692eb93b6")
(setf (get starrobot_msgs::Sonar :datatype-) "starrobot_msgs/Sonar")
(setf (get starrobot_msgs::Sonar :definition-)
      "float32 sonar1
float32 sonar2
float32 sonar3
float32 sonar4
")



(provide :starrobot_msgs/Sonar "2f513f8756037fca86f700a692eb93b6")


