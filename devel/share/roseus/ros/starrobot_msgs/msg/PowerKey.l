;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::PowerKey)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'PowerKey (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::POWERKEY")
  (make-package "STARROBOT_MSGS::POWERKEY"))

(in-package "ROS")
;;//! \htmlinclude PowerKey.msg.html


(defclass starrobot_msgs::PowerKey
  :super ros::object
  :slots (_powerkey1 _powerkey2 _powerkey3 _powerkey4 ))

(defmethod starrobot_msgs::PowerKey
  (:init
   (&key
    ((:powerkey1 __powerkey1) nil)
    ((:powerkey2 __powerkey2) nil)
    ((:powerkey3 __powerkey3) nil)
    ((:powerkey4 __powerkey4) nil)
    )
   (send-super :init)
   (setq _powerkey1 __powerkey1)
   (setq _powerkey2 __powerkey2)
   (setq _powerkey3 __powerkey3)
   (setq _powerkey4 __powerkey4)
   self)
  (:powerkey1
   (&optional __powerkey1)
   (if __powerkey1 (setq _powerkey1 __powerkey1)) _powerkey1)
  (:powerkey2
   (&optional __powerkey2)
   (if __powerkey2 (setq _powerkey2 __powerkey2)) _powerkey2)
  (:powerkey3
   (&optional __powerkey3)
   (if __powerkey3 (setq _powerkey3 __powerkey3)) _powerkey3)
  (:powerkey4
   (&optional __powerkey4)
   (if __powerkey4 (setq _powerkey4 __powerkey4)) _powerkey4)
  (:serialization-length
   ()
   (+
    ;; bool _powerkey1
    1
    ;; bool _powerkey2
    1
    ;; bool _powerkey3
    1
    ;; bool _powerkey4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _powerkey1
       (if _powerkey1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _powerkey2
       (if _powerkey2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _powerkey3
       (if _powerkey3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _powerkey4
       (if _powerkey4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _powerkey1
     (setq _powerkey1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _powerkey2
     (setq _powerkey2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _powerkey3
     (setq _powerkey3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _powerkey4
     (setq _powerkey4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get starrobot_msgs::PowerKey :md5sum-) "b797b23d4e603a9d30a243a455a1cc76")
(setf (get starrobot_msgs::PowerKey :datatype-) "starrobot_msgs/PowerKey")
(setf (get starrobot_msgs::PowerKey :definition-)
      "bool powerkey1
bool powerkey2
bool powerkey3
bool powerkey4

")



(provide :starrobot_msgs/PowerKey "b797b23d4e603a9d30a243a455a1cc76")


