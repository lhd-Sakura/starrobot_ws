#include "starrobot_pid/starrobot_pid_core.h"

int main(int argc, char **argv)
{

  ros::init(argc, argv, "pid_configure");
  ros::NodeHandle nh;

  starrobotPID *starrobot_pid = new starrobotPID();

  dynamic_reconfigure::Server<starrobot_pid::starrobotPIDConfig> dr_srv;
  dynamic_reconfigure::Server<starrobot_pid::starrobotPIDConfig>::CallbackType cb;
  cb = boost::bind(&starrobotPID::configCallback, starrobot_pid, _1, _2);
  dr_srv.setCallback(cb);

  double p;
  double d;
  double i;
  int rate;

  ros::NodeHandle pnh("~");
  pnh.param("p", p, 0.6);
  pnh.param("d", d, 0.3);
  pnh.param("i", i, 0.5);
  pnh.param("rate", rate, 1);

  ros::Publisher pub_message = nh.advertise<starrobot_msgs::PID>("pid", 10);
  ROS_INFO("Start adjusting the PID parameters");
  ros::Rate r(rate);

  while (nh.ok())
  {
    starrobot_pid->publishMessage(&pub_message);
    ros::spinOnce();
    r.sleep();
  }

  return 0;
}
