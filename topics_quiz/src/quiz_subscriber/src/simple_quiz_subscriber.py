#!/usr/bin/env python

import rospy
from sensor_msgs.msg import LaserScan

def callback(msg):
	print (msg.data)

rospy.init_node('quiz_subscriber')
sub = rospy.Subscriber('/scan',LaserScan,callback)

rospy.spin()


