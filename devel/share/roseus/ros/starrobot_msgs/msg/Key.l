;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Key)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Key (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::KEY")
  (make-package "STARROBOT_MSGS::KEY"))

(in-package "ROS")
;;//! \htmlinclude Key.msg.html


(defclass starrobot_msgs::Key
  :super ros::object
  :slots (_key1 _key2 _key3 _key4 ))

(defmethod starrobot_msgs::Key
  (:init
   (&key
    ((:key1 __key1) nil)
    ((:key2 __key2) nil)
    ((:key3 __key3) nil)
    ((:key4 __key4) nil)
    )
   (send-super :init)
   (setq _key1 __key1)
   (setq _key2 __key2)
   (setq _key3 __key3)
   (setq _key4 __key4)
   self)
  (:key1
   (&optional __key1)
   (if __key1 (setq _key1 __key1)) _key1)
  (:key2
   (&optional __key2)
   (if __key2 (setq _key2 __key2)) _key2)
  (:key3
   (&optional __key3)
   (if __key3 (setq _key3 __key3)) _key3)
  (:key4
   (&optional __key4)
   (if __key4 (setq _key4 __key4)) _key4)
  (:serialization-length
   ()
   (+
    ;; bool _key1
    1
    ;; bool _key2
    1
    ;; bool _key3
    1
    ;; bool _key4
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _key1
       (if _key1 (write-byte -1 s) (write-byte 0 s))
     ;; bool _key2
       (if _key2 (write-byte -1 s) (write-byte 0 s))
     ;; bool _key3
       (if _key3 (write-byte -1 s) (write-byte 0 s))
     ;; bool _key4
       (if _key4 (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _key1
     (setq _key1 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key2
     (setq _key2 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key3
     (setq _key3 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key4
     (setq _key4 (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get starrobot_msgs::Key :md5sum-) "3171c264b80fece5877bbb1adde04ad3")
(setf (get starrobot_msgs::Key :datatype-) "starrobot_msgs/Key")
(setf (get starrobot_msgs::Key :definition-)
      "bool key1
bool key2
bool key3
bool key4
")



(provide :starrobot_msgs/Key "3171c264b80fece5877bbb1adde04ad3")


