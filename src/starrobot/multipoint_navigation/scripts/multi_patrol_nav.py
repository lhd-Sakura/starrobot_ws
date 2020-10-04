# Embedded file name: multi_goals_loop.py
from visualization_msgs.msg import Marker
from visualization_msgs.msg import MarkerArray
import rospy
import math
from geometry_msgs.msg import PointStamped, PoseStamped
import actionlib
from actionlib_msgs.msg import *
from move_base_msgs.msg import *
import json_file

def status_callback(msg):
    global count
    global index
    global markerArray
    global goal_pub
    global try_again
    if msg.status.status == 3:
        try_again = 1
        print 'Goal reached'
        if index == count:
            index = 0
        pose = PoseStamped()
        pose.header.frame_id = '/map'
        pose.header.stamp = rospy.Time.now()
        pose.pose.position.x = markerArray.markers[index].pose.position.x
        pose.pose.position.y = markerArray.markers[index].pose.position.y
        pose.pose.orientation.w = 1
        goal_pub.publish(pose)
        index += 1
    else:
        if try_again == 1:
            print 'Goal cannot reached has some error :', msg.status.status, ' try again!!!!'
            index = index - 1
            try_again = 0
        else:
            print 'Goal cannot reached has some error :', msg.status.status, ' again , now go to next goal!!!!'
            if index == len(markerArray.markers):
                index = 0
        pose = PoseStamped()
        pose.header.frame_id = '/map'
        pose.header.stamp = rospy.Time.now()
        pose.pose.position.x = markerArray.markers[index].pose.position.x
        pose.pose.position.y = markerArray.markers[index].pose.position.y
        pose.pose.orientation.w = 1
        goal_pub.publish(pose)
        index += 1


def click_callback(msg):
    global count
    global index
    marker = Marker()
    marker.header.frame_id = '/map'
    marker.type = marker.TEXT_VIEW_FACING
    marker.action = marker.ADD
    marker.scale.x = 1
    marker.scale.y = 1
    marker.scale.z = 1
    marker.color.a = 1.0
    marker.color.r = 1.0
    marker.color.g = 0.0
    marker.color.b = 0.0
    marker.pose.orientation.w = 1.0
    marker.pose.position.x = msg.point.x
    marker.pose.position.y = msg.point.y
    marker.pose.position.z = msg.point.z
    marker.text = str(count)
    marker.id = len(markerArray.markers)
    markerArray.markers.append(marker)
    mark_pub.publish(markerArray)
    if count == 0:
        pose = PoseStamped()
        pose.header.frame_id = '/map'
        pose.header.stamp = rospy.Time.now()
        pose.pose.position.x = msg.point.x
        pose.pose.position.y = msg.point.y
        pose.pose.orientation.w = 1
        goal_pub.publish(pose)
        index += 1
    count += 1
    goal = {'position': {'x': msg.point.x,
                  'y': msg.point.y,
                  'z': msg.point.z},
     'quaternion': {'x': 0.0,
                    'y': 0.0,
                    'z': 0.0,
                    'w': 1.0}}
    file_name = 'multi_goals'
    json_file.json_append(goal, file_name)
    print 'add a path goal point'


markerArray = MarkerArray()
count = 0
index = 0
try_again = 1
rospy.init_node('path_point_loop')
mark_pub = rospy.Publisher('/path_point', MarkerArray, queue_size=100)
click_sub = rospy.Subscriber('/clicked_point', PointStamped, click_callback)
goal_pub = rospy.Publisher('/move_base_simple/goal', PoseStamped, queue_size=1)
goal_status_sub = rospy.Subscriber('/move_base/result', MoveBaseActionResult, status_callback)
file_name = 'multi_goals'
json_file.json_clear(file_name)
rospy.spin()
