#ifndef AILIBOT_BASE_H
#define AILIBOT_BASE_H

#include <ros/ros.h>
#include <starrobot_msgs/Velocities.h>
#include <tf2_ros/transform_broadcaster.h>
#include <nav_msgs/Odometry.h>
#include <tf2/LinearMath/Quaternion.h>
#include <geometry_msgs/TransformStamped.h>

class starrobotBase
{
public:
    starrobotBase();
    void velCallback(const starrobot_msgs::Velocities& vel);

private:
    ros::NodeHandle nh_;

    std::string sub_name_;
    std::string pub_name_;

    std::string tf_frame_id_name_;
    std::string tf_child_frame_id_name_;

    std::string odom_frame_id_name_;
    std::string odom_child_frame_id_name_;
    
    ros::Publisher odom_publisher_;
    ros::Subscriber velocity_subscriber_;
    tf2_ros::TransformBroadcaster odom_broadcaster_;
    tf2::Quaternion odom_quat;
    geometry_msgs::TransformStamped odom_trans;
    nav_msgs::Odometry odom;
    
    float steering_angle_;
    float linear_velocity_x_;
    float linear_velocity_y_;
    float angular_velocity_z_;
    float linear_scale_correction_;
    float angular_scale_wheel_;
    ros::Time last_vel_time_;
    float vel_dt_;
    float x_pos_;
    float y_pos_;
    float heading_;
		bool pub_encoder_odom_tf_;
    bool is_sub_node_;
};

#endif
