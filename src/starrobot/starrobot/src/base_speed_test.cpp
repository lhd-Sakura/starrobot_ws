#include <ros/ros.h>
#include <signal.h>
#include <geometry_msgs/Twist.h>
#include <time.h>
using namespace std;
timeval start, end;
ros::Publisher cmdVelPub;
geometry_msgs::Twist speed;
ros::Time last_vel_time_;
int k_s=0;
float add_time_ = 0.0;

void shutdown(int sig)
{
  cmdVelPub.publish(geometry_msgs::Twist());
  ROS_INFO("Robot speed test ended!");
  ros::shutdown();
}

void auto_shutdown(const ros::TimerEvent&)
{ 
  speed.linear.x = 0.0;
  speed.linear.y =0.0;
  speed.angular.z = 0.0;
  cmdVelPub.publish(speed);
  gettimeofday(&end, NULL);
  ROS_INFO("Time is up, ready to finish the robot speed test ...");
  add_time_ =  end.tv_sec - start.tv_sec;
  ROS_INFO("The actual running time of the node is:%f(s)",add_time_);
  ros::shutdown();
}
int main(int argc, char** argv)
{
  ros::init(argc, argv, "robot_speed_test_node");
  ros::NodeHandle private_nh;
  std::string topic_name_;
  float time_data_;
  float times_data_;
  float speed_x_;
  if(!private_nh.getParam("/base_speed_test_times",   time_data_))
      time_data_ = 5;
  if(!private_nh.getParam("/base_speed_test_pub_name",   topic_name_))
      topic_name_ = "cmd_vel";
  if(!private_nh.getParam("/base_speed_test_speed",   speed_x_))
      speed_x_ = 0.5;

  ros::NodeHandle node;
  cmdVelPub = node.advertise<geometry_msgs::Twist>(topic_name_, 1);
  //ros::Rate loopRate(10);
  signal(SIGINT, shutdown);
  ROS_INFO("The test time is %.2f second and the speed is %.2f(m/s)",time_data_,speed_x_);
  ROS_INFO("Robot speed test start...");
  ros::Timer timer1 = node.createTimer(ros::Duration(time_data_), auto_shutdown); 

  speed.linear.x = speed_x_;
  speed.linear.y =0.0;
  speed.angular.z = 0.0;
  gettimeofday(&start, NULL);
  while (ros::ok())
  { 
    cmdVelPub.publish(speed);
    ros::spinOnce();  
    //loopRate.sleep();
  }
  return 0;
}


