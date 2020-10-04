;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Fall)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Fall (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::FALL")
  (make-package "STARROBOT_MSGS::FALL"))

(in-package "ROS")
;;//! \htmlinclude Fall.msg.html


(defclass starrobot_msgs::Fall
  :super ros::object
  :slots (_fall1 _fall2 _fall3 _fall4 ))

(defmethod starrobot_msgs::Fall
  (:init
   (&key
    ((:fall1 __fall1) nil)
    ((:fall2 __fall2) nil)
    ((:fall3 __fall3) nil)
    ((:fall4 __fall4) nil)
    )
   (send-super :init)
   (setq _fall1 __fall1)
   (setq _fall2 __fall2)
   (setq _fall3 __fall3)
   (setq _fall4 __fall4)
   self)
  (:fall1
   (&optional __fall1)
   (if __fall1 (setq _fall1 __fall1)) _fall1)
  (:fall2
   (&optional __fall2)
   (if __fall2 (setq _fall2 __fall2)) _fall2)
  (:fall3
   (&optional __fall3)
   (if __fall3 (setq _fall3 __fall3)) _fall3)
  (:fall4
   (&optional __fall4)
   (if __fall4 (setq _fall4 __fall4)) _fall4)
  (:serialization-length
   ()
   (+
    ;; bool _fall1
    1
    ;; bool _fall2
    1
    ;; bool _fall3
    1
    ;; bool _fall4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _fall1
       (if _fall1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall2
       (if _fall2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall3
       (if _fall3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _fall4
       (if _fall4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _fall1
     (setq _fall1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall2
     (setq _fall2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall3
     (setq _fall3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fall4
     (setq _fall4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get starrobot_msgs::Fall :md5sum-) "ec4daf7144d18cc51c5e99829b72588d")
(setf (get starrobot_msgs::Fall :datatype-) "starrobot_msgs/Fall")
(setf (get starrobot_msgs::Fall :definition-)
      "bool fall1
bool fall2
bool fall3
bool fall4
")



(provide :starrobot_msgs/Fall "ec4daf7144d18cc51c5e99829b72588d")


