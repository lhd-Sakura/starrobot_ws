#include "starrobot_robot.h"
#include"ros/ros.h"
#include <chrono>
#include <ros/callback_queue.h>
int main(int argc, char *argv[])
{   
    ros::init(argc, argv, "starrobot_robot_node");
    starrobot_robot_object base_node;
    base_node.base_InitParam();
    ros::AsyncSpinner spinner(4); // Use 4 threads
    spinner.start();
    //ros::spin();
    ros::waitForShutdown();
    return 0;
}
