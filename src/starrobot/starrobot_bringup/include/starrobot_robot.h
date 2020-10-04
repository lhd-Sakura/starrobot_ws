
#ifndef __HUANYU_ROBOT_H_
#define __HUANYU_ROBOT_H_
// sudo apt-get install ros-kinetic-serial ->kinetic
// sudo apt-get install ros-melodic-serial ->melodic
// rostopic pub -r 10 /cmd_vel geometry_msgs/Twist '{linear: {x: 0.1, y: 0, z: 0}, angular: {x: 0, y: 0, z: -0.5}}'
// sudo usermod -aG　dialout wsh

#include "ros/ros.h"
#include <iostream>
#include <string.h>
#include <string> 
#include <iostream>
#include <math.h>
#include <stdlib.h>       
#include <unistd.h>      
#include <sys/types.h>
#include <sys/stat.h>
#include <serial/serial.h>
#include <fcntl.h>          
#include <stdbool.h>
#include <tf/transform_broadcaster.h>

#include <std_msgs/String.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>

#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Twist.h>
#include <starrobot_msgs/Battery.h>
#include <starrobot_msgs/Crash.h>
#include <starrobot_msgs/Fall.h>
#include <starrobot_msgs/Imu.h>
#include <starrobot_msgs/Infrared.h>
#include <starrobot_msgs/Key.h>
#include <starrobot_msgs/PID.h>
#include <starrobot_msgs/PowerKey.h>
#include <starrobot_msgs/Servo.h>
#include <starrobot_msgs/Sonar.h>
#include <starrobot_msgs/Velocities.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Int16.h>
#include <boost/thread/mutex.hpp>
#include <chrono>
#include <ros/callback_queue.h>
#include <ros/time.h>
using namespace std;

#define PROTOCOL_HEADER		0XFEFEFEFE	
#define PROTOCOL_END		  0XEE
#define PROTOCL_DATA_SIZE 229

#define PI 			          3.1415926f	
#define GYROSCOPE_RADIAN	0.001064f	// gyro_x/(16.40*57.30)=gyro_x*0.001064 单位为弧度每秒
#define GYROSCOPE_DEGREE 	16.40f		// Accelerometer_Xdata/16.40=61度每秒
#define ACCELEROMETER 		16384.0f  	// 1000/2048=0.49g。g为加速度的单位，重力加速度定义为1g, 等于9.8米每平方秒。

#define sampleFreq	      20.0f				// sample frequency in Hz
#define twoKpDef	        1.0f				// (2.0f * 0.5f)	// 2 * proportional gain
#define twoKiDef	        0.0f				// (2.0f * 0.0f)	// 2 * integral gain

#define OFFSET_COUNT 	    40

const double odom_pose_covariance[36] = {1e-3, 0, 0, 0, 0, 0, 
										0, 1e-3, 0, 0, 0, 0,
										0, 0, 1e6, 0, 0, 0,
										0, 0, 0, 1e6, 0, 0,
										0, 0, 0, 0, 1e6, 0,
										0, 0, 0, 0, 0, 1e3};
const double odom_pose_covariance2[36] = {1e-9, 0, 0, 0, 0, 0, 
										0, 1e-3, 1e-9, 0, 0, 0,
										0, 0, 1e6, 0, 0, 0,
										0, 0, 0, 1e6, 0, 0,
										0, 0, 0, 0, 1e6, 0,
										0, 0, 0, 0, 0, 1e-9};
 
const double odom_twist_covariance[36] = {1e-3, 0, 0, 0, 0, 0, 
										0, 1e-3, 0, 0, 0, 0,
										0, 0, 1e6, 0, 0, 0,
										0, 0, 0, 1e6, 0, 0,
										0, 0, 0, 0, 1e6, 0,
										0, 0, 0, 0, 0, 1e3};
const double odom_twist_covariance2[36] = {1e-9, 0, 0, 0, 0, 0, 
										0, 1e-3, 1e-9, 0, 0, 0,
										0, 0, 1e6, 0, 0, 0,
										0, 0, 0, 1e6, 0, 0,
										0, 0, 0, 0, 1e6, 0,
										0, 0, 0, 0, 0, 1e-9};

#pragma pack(1)

typedef struct _IMU_Data_
{
	float x;
	float y;
	float z;
}imu_data;
//32位编译器：
//char ：1个字节
//char*（即指针变量）: 4个字节（32位的寻址空间是2^32, 即32个bit，也就是4个字节。同理64位编译器）
//short int : 2个字节
// int： 4个字节
//unsigned int : 4个字节
//float: 4个字节
//double: 8个字节
//long: 4个字节
//long long: 8个字节
//unsigned long: 4个字节

typedef union _Upload_Data_   
{
	unsigned char buffer[PROTOCL_DATA_SIZE];
	struct _Sensor_Str_
	{ 
		unsigned int Header;
		int InitParameter;                       //参数初始化标志位
		int Base_Type;                           //车子类型
		int Motor_Drive_Type;                    //电机驱动类型
		int Pwm_Max;                             //PWM最大值			
		int Pwm_Min;                             //PWM最大值
		int Max_Rpm;                             //电机最大转速
		int Pwm_Bits;                            //PWM分辨率		
		int Motor_Reduction_Ratio;             	 //电机减速比
		int Encoder_Line_Number;                 //编码器分辨率
		int Counts_Per_Rev;                      //编码器转动一周的计数值
		int DebunMotor;                          //电机调试标志位
		float Kp_;                               //PID的p参数			
		float Ki_;                               //PID的i参数
		int   Kd_;                               //PID的i参数
		int   PID_Debug_Enable;                  //PID动态调参使能标准位 
		float Wheel_Diameter;                    //轮子直径
		float Lr_Wheels_Distance;                //机器人左右轮子距离
		float Fr_Wheels_Distance;                //机器人前后轮子距离 
		int Direction_Motor1_Rotation;           //电机转动方向标志位
		int Direction_Motor2_Rotation;           //电机转动方向标志位
		int Direction_Motor3_Rotation;           //电机转动方向标志位
		int Direction_Motor4_Rotation;           //电机转动方向标志位
		int Direction_Encoder1_Value;            //编码器计数方向标志位
		int Direction_Encoder2_Value;            //编码器计数方向标志位
		int Direction_Encoder3_Value;            //编码器计数方向标志位
		int Direction_Encoder4_Value;            //编码器计数方向标志位
		long long Encoder1_Value;            	 	 //编码器计数值
		long long Encoder2_Value;            	   //编码器计数值
		long long Encoder3_Value;            	   //编码器计数值
		long long Encoder4_Value;            	   //编码器计数值
		float X_Speed;                           //右手坐标系的正解速度信息X
		float Y_Speed;                           //右手坐标系的正解速度信息Y
		float Z_Speed;                           //右手坐标系的正解速度信息Z
		float Voltage;                           //电池当前电压			
		float Electricity;                       //电池输出电流
		int Employ_Electricity;                  //已经使用电量
		int Dump_Energy;                         //剩余电量
		float Battery_Voltage_Used;              //使用的电池电压值12或者24		
		int IMU_Type;                            //使用的IMU类型	
		imu_data Link_Accelerometer;             //IMU的三轴加速度原始数据
		imu_data Link_Gyroscope;                 //IMU的三轴角速度原始数据
		imu_data Link_Magnetometer;              //IMU的三轴磁力计原始数据
    int check_Acc;                           //IMU
    int check_Gyr;
    int check_Magne; 		
		int   Emergency_Stop_Enable;             //急停按钮使能标志位
		unsigned char End_flag;                  //包尾结束标志
	}Sensor_Str; 
}Upload_Data;

#pragma pack(4)

typedef boost::shared_ptr<geometry_msgs::Twist const> CmdConstPtr;
typedef boost::shared_ptr<starrobot_msgs::PID const> PidConstPtr;

class starrobot_robot_object
{
	public:
		starrobot_robot_object();
		~starrobot_robot_object();
		void base_InitParam();  		
		serial::Serial Robot_Serial; //声明串口对象 
	private:
	  boost::mutex write_mutex_;
	  boost::mutex read_mutex_;
		void cmd_velCallback(const CmdConstPtr&twist_aux);
		void pid_velCallback(const PidConstPtr& pid);
		
		void PublisherRawVel();
		void PublisherRawImu();
		void PublisherBattery();
		void PublisherSonar();
    void DebugEncoderDataShow();
    void ReadFormUart(const ros::TimerEvent& e);
		int baud_data;
		string usart_port,cmd_vel_sub_name_;
		string swerve_sub_name_,pid_sub_name_,servo_sub_name_;
		string raw_vel_pub_name_,raw_imu_pub_name_,battery_pub_name_,sonar_pub_name_;
		string starrobot_motor_drive_,starrobot_base_,imu_type_;
		// Ros node define
		ros::NodeHandle nh_;
		ros::Time current_time, last_time;
    ros::Timer timer_RawVel,timer_RawImu,timer_Battery,timer_Sonar;
    ros::Timer timer_Debug,timer_Send,timer_Read;
		ros::Subscriber swerve_sub,pid_sub,servo_sub,cmd_vel_sub;
		ros::Publisher  raw_vel_pub,raw_imu_pub,battery_pub,sonar_pub;
		
		starrobot_msgs::Imu        raw_imu_msg;
		starrobot_msgs::Velocities raw_vel_msg;
		starrobot_msgs::Battery    raw_bat_msg;
		starrobot_msgs::Sonar      raw_sonar_msg;
		
		tf::TransformBroadcaster odom_broadcaster;
		Upload_Data Reciver_Str, Send_Str;         
    //init base parameter 
		float lr_wheels_distance_,fr_wheels_distance_,wheel_diameter_;
		
		//init motor parameter
		int max_rpm_,pwm_bits_,pwm_max_,pwm_min_;
    int motor_reduction_ratio_,encoder_line_number_,counts_per_rev_;
    int Direction_motor1_rotation_,Direction_motor2_rotation_;
    int Direction_motor3_rotation_,Direction_motor4_rotation_;
    int Direction_encoder1_value_,Direction_encoder2_value_;
    int Direction_encoder3_value_,Direction_encoder4_value_;
    
    //init ultrasonic parameter
    int ultrasonic1_Enable_,ultrasonic2_Enable_,ultrasonic3_Enable_;
    
    //init servo parameter
    int servo1_Enable_,servo2_Enable_,servo3_Enable_,servo4_Enable_;
    int initial_turning_angle_,max_steering_angle_;
    int esc_median_value_,a2_encoder_;
    // init emergency stop parameter
    int emergency_stop_;
    
    //init PID parameter
    float k_p_,k_i_,k_d_;
    int check_Acc_;                           //IMU
    int check_Gyr_;
    int check_Magne_; 	
    //  debug parameter
    int debug_message_,debug_base_;
		//
		int base_data_num,imu_data_num,motor_data_num,wheel_num;
		bool is_pid,is_servo,is_swerve,is_cmd;
};


#endif


