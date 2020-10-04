#include "starrobot_base.h"

starrobotBase::starrobotBase():
    linear_velocity_x_(0),pub_encoder_odom_tf_(false),
    linear_velocity_y_(0),angular_velocity_z_(0),
    last_vel_time_(0),vel_dt_(0),x_pos_(0),
    y_pos_(0),heading_(0),is_sub_node_(true),
    linear_scale_correction_(1.0),angular_scale_wheel_(1.0)
{
    ros::NodeHandle nh_get("~");
    nh_get.getParam("/starrobot_base_sub_mane", sub_name_);
    nh_get.getParam("/starrobot_base_pub_mane", pub_name_);
    nh_get.getParam("/pub_encoder_odom_tf", pub_encoder_odom_tf_);

    nh_get.getParam("/starrobot_base_tf_frame_id_name", tf_frame_id_name_);
    nh_get.getParam("/starrobot_base_tf_child_frame_id_name", tf_child_frame_id_name_);
    nh_get.getParam("/starrobot_base_odom_frame_id_name", odom_frame_id_name_);
    nh_get.getParam("/starrobot_base_odom_child_frame_id_name", odom_child_frame_id_name_);

    odom_publisher_ = nh_.advertise<nav_msgs::Odometry>(pub_name_, 50);
    velocity_subscriber_ = nh_.subscribe(sub_name_, 50, &starrobotBase::velCallback, this);

    nh_get.getParam("linear_scale_correction", linear_scale_correction_);
    nh_get.getParam("angular_scale_wheel", angular_scale_wheel_);
    if(pub_encoder_odom_tf_)
	{
		ROS_INFO("publisher encoder odom tf ");
	}
    if(!pub_encoder_odom_tf_)
	{
		ROS_INFO("No publisher encoder odom tf ");
	}
	ROS_INFO("linear_scale_correction:%f",linear_scale_correction_);
	ROS_INFO("angular_scale_wheel:%f",angular_scale_wheel_);
}

void starrobotBase::velCallback(const starrobot_msgs::Velocities& vel)
{
    ros::Time current_time = ros::Time::now();

    linear_velocity_x_ = vel.linear_x * linear_scale_correction_;
    linear_velocity_y_ = vel.linear_y * linear_scale_correction_;
    angular_velocity_z_ = vel.angular_z * angular_scale_wheel_;

    vel_dt_ = (current_time - last_vel_time_).toSec();
    last_vel_time_ = current_time;

    double delta_heading = angular_velocity_z_ * vel_dt_; //radians
    double delta_x = (linear_velocity_x_ * cos(heading_) - linear_velocity_y_ * sin(heading_)) * vel_dt_; //m
    double delta_y = (linear_velocity_x_ * sin(heading_) + linear_velocity_y_ * cos(heading_)) * vel_dt_; //m

    //calculate current position of the robot
    x_pos_ += delta_x;
    y_pos_ += delta_y;
    heading_ += delta_heading;

    //calculate robot's heading in quaternion angle
    //ROS has a function to calculate yaw in quaternion angle
    odom_quat.setRPY(0,0,heading_);
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = tf_frame_id_name_;
    odom_trans.child_frame_id = tf_child_frame_id_name_;
    //robot's position in x,y, and z
    odom_trans.transform.translation.x = x_pos_;
    odom_trans.transform.translation.y = y_pos_;
    odom_trans.transform.translation.z = 0.0;
    //robot's heading in quaternion
    odom_trans.transform.rotation.x = odom_quat.x();
    odom_trans.transform.rotation.y = odom_quat.y();
    odom_trans.transform.rotation.z = odom_quat.z();
    odom_trans.transform.rotation.w = odom_quat.w();
    odom_trans.header.stamp = current_time;
    //publish robot's tf using odom_trans object
    if(pub_encoder_odom_tf_)
    {
		odom_broadcaster_.sendTransform(odom_trans);
	  }
    odom.header.stamp = current_time;
    odom.header.frame_id = odom_frame_id_name_;
    odom.child_frame_id = tf_child_frame_id_name_;

    //robot's position in x,y, and z
    odom.pose.pose.position.x = x_pos_;
    odom.pose.pose.position.y = y_pos_;
    odom.pose.pose.position.z = 0.0;
    //robot's heading in quaternion
    odom.pose.pose.orientation.x = odom_quat.x();
    odom.pose.pose.orientation.y = odom_quat.y();
    odom.pose.pose.orientation.z = odom_quat.z();
    odom.pose.pose.orientation.w = odom_quat.w();
    odom.pose.covariance[0] = 0.001;
    odom.pose.covariance[7] = 0.001;
    odom.pose.covariance[35] = 0.001;

    //linear speed from encoders
    odom.twist.twist.linear.x = linear_velocity_x_;
    odom.twist.twist.linear.y = linear_velocity_y_;
    odom.twist.twist.linear.z = 0.0;

    odom.twist.twist.angular.x = 0.0;
    odom.twist.twist.angular.y = 0.0;
    //angular speed from encoders
    odom.twist.twist.angular.z = angular_velocity_z_;
    odom.twist.covariance[0] = 0.0001;
    odom.twist.covariance[7] = 0.0001;
    odom.twist.covariance[35] = 0.0001;

    odom_publisher_.publish(odom);
		if(is_sub_node_)
		{
			ROS_INFO("Subscribe wheel node data successful");
	  	is_sub_node_ = false;
		}
}
