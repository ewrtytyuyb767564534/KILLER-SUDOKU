#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

def callback(msg):
	x=msg.ranges[]
	y=msg.ranges[]
	z=msg.ranges[]
	move=Twist()

	if x > 1.0:
		move.linear.x=0.5
	else:
		move.angular.z=0.5
	if y < 1.0:
		move.angular.z=-0.5
	if z < 1.0:
		move.angular.z=0.5
	pub.publsher(move)

rospy.init_node('cmd_write')
pub=rospy.Publisher('/cmd_vel',Twist,queue_size=1)
sub=rospy.Subscriber('/scan',LaserScan,callback)

rospy.spin()
