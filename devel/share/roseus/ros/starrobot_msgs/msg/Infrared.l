;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Infrared)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Infrared (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::INFRARED")
  (make-package "STARROBOT_MSGS::INFRARED"))

(in-package "ROS")
;;//! \htmlinclude Infrared.msg.html


(defclass starrobot_msgs::Infrared
  :super ros::object
  :slots (_infrared1 _infrared2 _infrared3 _infrared4 ))

(defmethod starrobot_msgs::Infrared
  (:init
   (&key
    ((:infrared1 __infrared1) nil)
    ((:infrared2 __infrared2) nil)
    ((:infrared3 __infrared3) nil)
    ((:infrared4 __infrared4) nil)
    )
   (send-super :init)
   (setq _infrared1 __infrared1)
   (setq _infrared2 __infrared2)
   (setq _infrared3 __infrared3)
   (setq _infrared4 __infrared4)
   self)
  (:infrared1
   (&optional __infrared1)
   (if __infrared1 (setq _infrared1 __infrared1)) _infrared1)
  (:infrared2
   (&optional __infrared2)
   (if __infrared2 (setq _infrared2 __infrared2)) _infrared2)
  (:infrared3
   (&optional __infrared3)
   (if __infrared3 (setq _infrared3 __infrared3)) _infrared3)
  (:infrared4
   (&optional __infrared4)
   (if __infrared4 (setq _infrared4 __infrared4)) _infrared4)
  (:serialization-length
   ()
   (+
    ;; bool _infrared1
    1
    ;; bool _infrared2
    1
    ;; bool _infrared3
    1
    ;; bool _infrared4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _infrared1
       (if _infrared1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _infrared2
       (if _infrared2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _infrared3
       (if _infrared3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _infrared4
       (if _infrared4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _infrared1
     (setq _infrared1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _infrared2
     (setq _infrared2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _infrared3
     (setq _infrared3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _infrared4
     (setq _infrared4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get starrobot_msgs::Infrared :md5sum-) "4686eff1b895a48c46b472d5af75db05")
(setf (get starrobot_msgs::Infrared :datatype-) "starrobot_msgs/Infrared")
(setf (get starrobot_msgs::Infrared :definition-)
      "bool infrared1
bool infrared2
bool infrared3
bool infrared4
")



(provide :starrobot_msgs/Infrared "4686eff1b895a48c46b472d5af75db05")


