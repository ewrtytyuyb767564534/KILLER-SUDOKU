#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist

def move_square():
    rospy.init_node('move_square', anonymous=True)
    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    rate = rospy.Rate(1)

    move = Twist()
    forward_time = 2
    turn_time = 1.7

    for i in range(4):
        move.linear.x = 0.2
        move.angular.z = 0.0
        pub.publish(move)
        rospy.sleep(forward_time)

        move.linear.x = 0.0
        pub.publish(move)
        rospy.sleep(0.5)

        move.linear.x = 0.0
        move.angular.z = -1.0
        pub.publish(move)
        rospy.sleep(turn_time)


        move.angular.z = 0.0
        pub.publish(move)
        rospy.sleep(0.5)



if _name_ == '_main_':
    try:
        move_square()
    except rospy.ROSInterruptException:
        pass
