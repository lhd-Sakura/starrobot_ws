#!/usr/bin/env python
import roslib; roslib.load_manifest('teleop_twist_keyboard')
import rospy

from starrobot_msgs.msg import Servo
import sys, select, termios, tty

msg = """
Reading from the keyboard  and Publishing to Servo!
---------------------------
Moving around:
       w    
       s    
       x    

t : up (+z)
b : down (-z)

anything else : stop

q/z : increase/decrease max speeds by 10%
w/x : increase/decrease only linear speed by 10%
e/c : increase/decrease only angular speed by 10%

CTRL-C to quit
"""

moveBindings = {
		'i':(1,0,0,0),
		'o':(1,0,0,-1),
		'j':(0,0,0,1),
		'l':(0,0,0,-1),
		'u':(1,0,0,1),
		',':(-1,0,0,0),
		'.':(-1,0,0,1),
		'm':(-1,0,0,-1),
		'O':(1,-1,0,0),
		'I':(1,0,0,0),
		'J':(0,1,0,0),
		'L':(0,-1,0,0),
		'U':(1,1,0,0),
		'<':(-1,0,0,0),
		'>':(-1,-1,0,0),
		'M':(-1,1,0,0),
		't':(0,0,1,0),
		'b':(0,0,-1,0),
	       }

speedBindings={
		'q':(1.1,1.1),
		'z':(.9,.9),
		'w':(1.1,1),
		'x':(.9,1),
		'e':(1,1.1),
		'c':(1,.9),
	      }

def getKey():
	tty.setraw(sys.stdin.fileno())
	select.select([sys.stdin], [], [], 0)
	key = sys.stdin.read(1)
	termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
	return key

if __name__=="__main__":
    	settings = termios.tcgetattr(sys.stdin)
	
	pub = rospy.Publisher('servo', Servo, queue_size = 1)
	rospy.init_node('teleop_twist_servo')

	speed = rospy.get_param("~speed", 0.5)
        servo_angle = 0.0
	status = 0
	try:
		print msg
		while(1):
			key = getKey()
                        print key
			if key in moveBindings.keys():
				x = moveBindings[key][0]
			elif key in speedBindings.keys():
				speed = speed * speedBindings[key][0]
				print speed
				if (status == 14):
					print msg
				status = (status + 1) % 15
			else:
				if (key == '\x03'):
					break
			servo_msg = Servo()
			servo_msg.servo1 = 0.1
			pub.publish(servo_msg)

	finally:
		servo_msg = Servo()
		servo_msg.servo1 = 0.2
                servo_msg.servo1 = 0.2
                servo_msg.servo1 = 0.2
                servo_msg.servo1 = 0.2
		pub.publish(servo_msg)

    		termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)


