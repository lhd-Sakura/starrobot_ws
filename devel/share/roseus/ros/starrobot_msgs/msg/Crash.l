;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Crash)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Crash (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::CRASH")
  (make-package "STARROBOT_MSGS::CRASH"))

(in-package "ROS")
;;//! \htmlinclude Crash.msg.html


(defclass starrobot_msgs::Crash
  :super ros::object
  :slots (_crash1 _crash2 _crash3 _crash4 ))

(defmethod starrobot_msgs::Crash
  (:init
   (&key
    ((:crash1 __crash1) nil)
    ((:crash2 __crash2) nil)
    ((:crash3 __crash3) nil)
    ((:crash4 __crash4) nil)
    )
   (send-super :init)
   (setq _crash1 __crash1)
   (setq _crash2 __crash2)
   (setq _crash3 __crash3)
   (setq _crash4 __crash4)
   self)
  (:crash1
   (&optional __crash1)
   (if __crash1 (setq _crash1 __crash1)) _crash1)
  (:crash2
   (&optional __crash2)
   (if __crash2 (setq _crash2 __crash2)) _crash2)
  (:crash3
   (&optional __crash3)
   (if __crash3 (setq _crash3 __crash3)) _crash3)
  (:crash4
   (&optional __crash4)
   (if __crash4 (setq _crash4 __crash4)) _crash4)
  (:serialization-length
   ()
   (+
    ;; bool _crash1
    1
    ;; bool _crash2
    1
    ;; bool _crash3
    1
    ;; bool _crash4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _crash1
       (if _crash1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _crash2
       (if _crash2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _crash3
       (if _crash3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _crash4
       (if _crash4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _crash1
     (setq _crash1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _crash2
     (setq _crash2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _crash3
     (setq _crash3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _crash4
     (setq _crash4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get starrobot_msgs::Crash :md5sum-) "02b77d6efd11009bfc24883f65767248")
(setf (get starrobot_msgs::Crash :datatype-) "starrobot_msgs/Crash")
(setf (get starrobot_msgs::Crash :definition-)
      "bool crash1
bool crash2
bool crash3
bool crash4
")



(provide :starrobot_msgs/Crash "02b77d6efd11009bfc24883f65767248")


