#!/usr/bin/env python

import rospy
import actionlib
from ardrone_action_server.msg import ArdroneAction, ArdroneFeedback

class DroneActionServer:
    def _init_(self):
        self.server = actionlib.SimpleActionServer('ardrone_action', ardroneAction, self.execute, False)
        self.server.start()

    def execute(self, goal):
        feedback = ardroneFeedback()
        command = goal.command.upper()

        if command == "TAKEOFF":
            rospy.loginfo("Drone taking off...")
            feedback.current_action = "Taking off"
        elif command == "LAND":
            rospy.loginfo("Drone landing...")
            feedback.current_action = "Landing"
        else:
            rospy.logwarn("Unknown command")
            feedback.current_action = "Unknown"

        rate = rospy.Rate(1)
        for _ in range(5):  
            self.server.publish_feedback(feedback)
            rate.sleep()

        self.server.set_succeeded()  

if _name_ == '_main_':
    rospy.init_node('ardrone_action_server')
    server = DroneActionServer()
    rospy.spin()
