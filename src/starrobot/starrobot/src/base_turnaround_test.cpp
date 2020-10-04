#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
ros::Publisher cmdVelPub;

void shutdown(int sig)
{
  cmdVelPub.publish(geometry_msgs::Twist());
  ROS_INFO("Robot turnaround test ended!");
  ros::shutdown();
}

void auto_shutdown(const ros::TimerEvent&)
{
  cmdVelPub.publish(geometry_msgs::Twist());
  ROS_INFO("Robot turnaround test ended!");
  ros::shutdown();
}
int main(int argc, char** argv)
{
  ros::init(argc, argv, "robot_turnaround_test_node");
  ros::NodeHandle private_nh;
  std::string topic_name_;
  int time_data_;
  float speed_x_;
  float angular_z_;
  if(!private_nh.getParam("/base_turnaround_test_pub_name",   topic_name_))
      topic_name_ = "cmd_vel";
  if(!private_nh.getParam("/base_turnaround_test_speed",   speed_x_))
      speed_x_ = 0.5;
  if(!private_nh.getParam("/base_turnaround_test_angular",   angular_z_))
      angular_z_ = 5;        
  if(!private_nh.getParam("/base_turnaround＿test_times",   time_data_))
      time_data_ = 5;

  ros::NodeHandle node;
  cmdVelPub = node.advertise<geometry_msgs::Twist>(topic_name_, 1);
  ros::Rate loopRate(10);
  signal(SIGINT, shutdown);
  ROS_INFO("The test time is %d second and the speed is %f(m/s) the angular is %f(rad/s)",time_data_,speed_x_,angular_z_);
  ROS_INFO("Robot turnaround test start...");
  ros::Timer timer1 = node.createTimer(ros::Duration(time_data_), auto_shutdown);
  geometry_msgs::Twist speed;
  while (ros::ok())
  {
    speed.linear.x = speed_x_;
    speed.linear.y =0.0;
    speed.angular.z = 0.0;
    cmdVelPub.publish(speed);
    ros::spinOnce();  
    loopRate.sleep();
  }
  return 0;
}


