;; Auto-generated. Do not edit!


(when (boundp 'starrobot_msgs::Encoder)
  (if (not (find-package "STARROBOT_MSGS"))
    (make-package "STARROBOT_MSGS"))
  (shadow 'Encoder (find-package "STARROBOT_MSGS")))
(unless (find-package "STARROBOT_MSGS::ENCODER")
  (make-package "STARROBOT_MSGS::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html


(defclass starrobot_msgs::Encoder
  :super ros::object
  :slots (_MotorEncoder1 _MotorEncoder2 _MotorEncoder3 _MotorEncoder4 ))

(defmethod starrobot_msgs::Encoder
  (:init
   (&key
    ((:MotorEncoder1 __MotorEncoder1) 0)
    ((:MotorEncoder2 __MotorEncoder2) 0)
    ((:MotorEncoder3 __MotorEncoder3) 0)
    ((:MotorEncoder4 __MotorEncoder4) 0)
    )
   (send-super :init)
   (setq _MotorEncoder1 (round __MotorEncoder1))
   (setq _MotorEncoder2 (round __MotorEncoder2))
   (setq _MotorEncoder3 (round __MotorEncoder3))
   (setq _MotorEncoder4 (round __MotorEncoder4))
   self)
  (:MotorEncoder1
   (&optional __MotorEncoder1)
   (if __MotorEncoder1 (setq _MotorEncoder1 __MotorEncoder1)) _MotorEncoder1)
  (:MotorEncoder2
   (&optional __MotorEncoder2)
   (if __MotorEncoder2 (setq _MotorEncoder2 __MotorEncoder2)) _MotorEncoder2)
  (:MotorEncoder3
   (&optional __MotorEncoder3)
   (if __MotorEncoder3 (setq _MotorEncoder3 __MotorEncoder3)) _MotorEncoder3)
  (:MotorEncoder4
   (&optional __MotorEncoder4)
   (if __MotorEncoder4 (setq _MotorEncoder4 __MotorEncoder4)) _MotorEncoder4)
  (:serialization-length
   ()
   (+
    ;; int64 _MotorEncoder1
    8
    ;; int64 _MotorEncoder2
    8
    ;; int64 _MotorEncoder3
    8
    ;; int64 _MotorEncoder4
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _MotorEncoder1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _MotorEncoder1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _MotorEncoder1) (= (length (_MotorEncoder1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_MotorEncoder1 . bv) 0) 0) s)
              (write-long (ash (elt (_MotorEncoder1 . bv) 1) -1) s))
             ((and (class _MotorEncoder1) (= (length (_MotorEncoder1 . bv)) 1)) ;; big1
              (write-long (elt (_MotorEncoder1 . bv) 0) s)
              (write-long (if (>= _MotorEncoder1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _MotorEncoder1 s)(write-long (if (>= _MotorEncoder1 0) 0 #xffffffff) s)))
     ;; int64 _MotorEncoder2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _MotorEncoder2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _MotorEncoder2) (= (length (_MotorEncoder2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_MotorEncoder2 . bv) 0) 0) s)
              (write-long (ash (elt (_MotorEncoder2 . bv) 1) -1) s))
             ((and (class _MotorEncoder2) (= (length (_MotorEncoder2 . bv)) 1)) ;; big1
              (write-long (elt (_MotorEncoder2 . bv) 0) s)
              (write-long (if (>= _MotorEncoder2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _MotorEncoder2 s)(write-long (if (>= _MotorEncoder2 0) 0 #xffffffff) s)))
     ;; int64 _MotorEncoder3
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _MotorEncoder3 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _MotorEncoder3) (= (length (_MotorEncoder3 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_MotorEncoder3 . bv) 0) 0) s)
              (write-long (ash (elt (_MotorEncoder3 . bv) 1) -1) s))
             ((and (class _MotorEncoder3) (= (length (_MotorEncoder3 . bv)) 1)) ;; big1
              (write-long (elt (_MotorEncoder3 . bv) 0) s)
              (write-long (if (>= _MotorEncoder3 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _MotorEncoder3 s)(write-long (if (>= _MotorEncoder3 0) 0 #xffffffff) s)))
     ;; int64 _MotorEncoder4
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _MotorEncoder4 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _MotorEncoder4) (= (length (_MotorEncoder4 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_MotorEncoder4 . bv) 0) 0) s)
              (write-long (ash (elt (_MotorEncoder4 . bv) 1) -1) s))
             ((and (class _MotorEncoder4) (= (length (_MotorEncoder4 . bv)) 1)) ;; big1
              (write-long (elt (_MotorEncoder4 . bv) 0) s)
              (write-long (if (>= _MotorEncoder4 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _MotorEncoder4 s)(write-long (if (>= _MotorEncoder4 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _MotorEncoder1
#+(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _MotorEncoder2
#+(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _MotorEncoder3
#+(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder3 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder3 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _MotorEncoder4
#+(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder4 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _MotorEncoder4 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get starrobot_msgs::Encoder :md5sum-) "5fcb479f75c8295a0270fd74c95e7c94")
(setf (get starrobot_msgs::Encoder :datatype-) "starrobot_msgs/Encoder")
(setf (get starrobot_msgs::Encoder :definition-)
      "int64 MotorEncoder1
int64 MotorEncoder2
int64 MotorEncoder3
int64 MotorEncoder4
")



(provide :starrobot_msgs/Encoder "5fcb479f75c8295a0270fd74c95e7c94")


