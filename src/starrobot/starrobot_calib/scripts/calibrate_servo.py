#!/usr/bin/env python

""" calibrate_servo.py - Version 1.1 2013-12-20

    Move the robot 1.0 meter to check on the PID parameters of the base controller.

    Created for the Pi Robot Project: http://www.pirobot.org
    Copyright (c) 2012 Patrick Goebel.  All rights reserved.

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.5
    
    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details at:
    
    http://www.gnu.org/licenses/gpl.html
      
"""

import rospy
from starrobot_msgs.msg import Servo
from math import copysign, sqrt, pow
from dynamic_reconfigure.server import Server
import dynamic_reconfigure.client
from starrobot_calib.cfg import CalibrateServoConfig

class CalibrateServo():
    def __init__(self):
        # Give the node a name
        rospy.init_node('calibrate_servo', anonymous=False)
        
        # Set rospy to execute a shutdown function when terminating the script
        rospy.on_shutdown(self.shutdown)
        
        # How fast will we check the odometry values?
        self.rate = rospy.get_param('~rate', 20)
        r = rospy.Rate(self.rate)
        
        # Set the distance to travel
        self.servo1 = rospy.get_param('~servo1', True) # meters
	self.servo2 = rospy.get_param('~servo2', True) # meters
	self.servo3 = rospy.get_param('~servo3', True) # meters
	self.servo4 = rospy.get_param('~servo4', True) # meters
	self.angle = rospy.get_param('~angle', 5)    # meters
        rospy.loginfo("start servo tets ... ")
        # Publisher to control the robot'servo 
        self.servo_angle_pub = rospy.Publisher('/servo', Servo, queue_size=5)
        # Fire up the dynamic_reconfigure server
        dyn_server = Server(CalibrateServoConfig, self.dynamic_reconfigure_callback)
        
        # Connect to the dynamic_reconfigure server
        dyn_client = dynamic_reconfigure.client.Client("calibrate_servo", timeout=60)
        
        # Give tf some time to fill its buffer
        rospy.sleep(2)
        rospy.loginfo("please run rqt_reconfigure for the servo test") 
        servo_msg = Servo()
        while not rospy.is_shutdown():
            # Stop the robot by default
            servo_msg = Servo()
            if self.servo1:
                servo_msg.servo1 = self.angle
            if self.servo2:
                servo_msg.servo2 = self.angle
	    if self.servo3:
		servo_msg.servo3 = self.angle
	    if self.servo4:
		servo_msg.servo4 = self.angle
            #dyn_client.update_configuration(params)
            self.servo_angle_pub.publish(servo_msg)
            r.sleep()
    def dynamic_reconfigure_callback(self, config, level):
	self.servo1 = config['servo1']
	self.servo2 = config['servo2']
	self.servo3 = config['servo3']
	self.servo4 = config['servo4']
	self.angle = config['angle']
        return config
       
    def shutdown(self):
        # Always stop the robot when shutting down the node
        rospy.loginfo("Ready to quit servo tets ... ")
	self.servo_angle_pub.publish(Servo())
        rospy.sleep(1)
 
if __name__ == '__main__':
    try:
        CalibrateServo()
        rospy.spin()
    except:
        rospy.loginfo("test terminated.")

