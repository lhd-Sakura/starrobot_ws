#ifndef SR_starrobot_pid_CORE_H
#define SR_starrobot_pid_CORE_H

#include "ros/ros.h"
#include "ros/time.h"

// Custom message includes. Auto-generated from msg/ directory.
#include <starrobot_msgs/PID.h>

// Dynamic reconfigure includes.
#include <dynamic_reconfigure/server.h>
// Auto-generated from cfg/ directory.
#include <starrobot_pid/starrobotPIDConfig.h>

class starrobotPID
{
public:
  starrobotPID();
  ~starrobotPID();
  void configCallback(starrobot_pid::starrobotPIDConfig &config, double level);
  void publishMessage(ros::Publisher *pub_message);
  void messageCallback(const starrobot_msgs::PID::ConstPtr &msg);

  double p_;
  double d_;
  double i_;

};
#endif
