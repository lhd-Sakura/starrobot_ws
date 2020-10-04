#include "starrobot_robot.h"
starrobot_robot_object::starrobot_robot_object():
	baud_data(115200),lr_wheels_distance_(1.0),fr_wheels_distance_(1.0),wheel_diameter_(1.0),
	max_rpm_(366),pwm_bits_(8),pwm_max_(256),pwm_min_(-256),
    motor_reduction_ratio_(30),encoder_line_number_(13),counts_per_rev_(0),
    Direction_motor1_rotation_(1),Direction_motor2_rotation_(1),
    Direction_motor3_rotation_(1),Direction_motor4_rotation_(1),
    Direction_encoder1_value_(1),Direction_encoder2_value_(1),
    Direction_encoder3_value_(1),Direction_encoder4_value_(1),
    ultrasonic1_Enable_(0),ultrasonic2_Enable_(0),ultrasonic3_Enable_(0),
    servo1_Enable_(0),servo2_Enable_(0),servo3_Enable_(0),servo4_Enable_(0),
    initial_turning_angle_(0),max_steering_angle_(30),
    esc_median_value_(1500),a2_encoder_(0),emergency_stop_(0),
    k_p_(0.1),k_i_(0.1),k_d_(0.1),debug_message_(1),debug_base_(0),
    base_data_num(1),imu_data_num(1),motor_data_num(1),wheel_num(2),
    cmd_vel_sub_name_("cmd_vel"),swerve_sub_name_("initial_angle"),
    pid_sub_name_("pid"),servo_sub_name_("servo"),raw_vel_pub_name_("raw_vel"),
    raw_imu_pub_name_("raw_imu"),battery_pub_name_("battery"),sonar_pub_name_("sonar"),
    is_pid(true),is_servo(true),is_swerve(true),is_cmd(true),check_Acc_(1),check_Gyr_(1),
    check_Magne_(1)
{
	memset(&Reciver_Str, 0, sizeof(Reciver_Str));
	memset(&Send_Str, 0, sizeof(Send_Str));

	this->Send_Str.Sensor_Str.Header = PROTOCOL_HEADER;
	this->Send_Str.Sensor_Str.End_flag = PROTOCOL_END;

	// Get Luncher file define value 
  ros::NodeHandle nh_private("~");
  nh_private.param<std::string>("port", this->usart_port, "/dev/starrobot_base"); 
 	nh_private.param<int>("baud", this->baud_data, 115200); 
  nh_private.getParam("cmd_vel_sub_name",cmd_vel_sub_name_);
  nh_private.getParam("swerve_sub_name",swerve_sub_name_);
  nh_private.getParam("pid_sub_name",pid_sub_name_);
  nh_private.getParam("servo_sub_name",servo_sub_name_);
  nh_private.getParam("raw_vel_pub_name",raw_vel_pub_name_);
  nh_private.getParam("raw_imu_pub_name",raw_imu_pub_name_);
  nh_private.getParam("battery_pub_name",battery_pub_name_);
  nh_private.getParam("sonar_pub_name",sonar_pub_name_);

  raw_vel_pub = nh_.advertise<starrobot_msgs::Velocities>(raw_vel_pub_name_, 1);
  raw_imu_pub = nh_.advertise<starrobot_msgs::Imu>(raw_imu_pub_name_, 1);
  battery_pub = nh_.advertise<starrobot_msgs::Battery>(battery_pub_name_, 1);

	cmd_vel_sub = nh_.subscribe(cmd_vel_sub_name_, 10, &starrobot_robot_object::cmd_velCallback, this); 
	pid_sub     = nh_.subscribe(pid_sub_name_, 10, &starrobot_robot_object::pid_velCallback, this); 
	timer_Read = nh_private.createTimer(ros::Duration(1.0/70), &starrobot_robot_object::ReadFormUart, this);
	
	/**open seril device**/
	try{
		 Robot_Serial.setPort(this->usart_port);
		 Robot_Serial.setBaudrate(this->baud_data);
		 serial::Timeout to = serial::Timeout::simpleTimeout(2000);
		 Robot_Serial.setTimeout(to);
		 Robot_Serial.open();
  }
	catch (serial::IOException& e){
		 ROS_ERROR_STREAM("[starrobot] Unable to open serial port, please check device or permission");
	}
	if(Robot_Serial.isOpen())
  {
	 	 ROS_INFO_STREAM("[starrobot] Successful opening of the serial port, data transmission started");
	}
  else
  {
     ROS_ERROR_STREAM("[starrobot] Unable to open serial port, please check device or permission");
	}
}

starrobot_robot_object::~starrobot_robot_object()
{
	Robot_Serial.close();
}
/***
 @ Description	-> base init  function
 @ Param		-> NULL
 @ Author		-> ChenZhouFu
 @ Date			-> 2020-4-1
 @ Function     -> starrobot_robot_object::base_InitParam()
***/
void starrobot_robot_object::base_InitParam()
{
   ros::NodeHandle private_nh("~");
   private_nh.getParam("/starrobot_base",starrobot_base_);
   private_nh.getParam("/imu_type",imu_type_);
   private_nh.getParam("/starrobot_motor_drive",starrobot_motor_drive_);
   private_nh.getParam("/debug_message",debug_message_);
   private_nh.getParam("/debug_base",debug_base_);
   
   private_nh.getParam("/motor_in/pwm_max",pwm_max_);
   private_nh.getParam("/motor_in/pwm_min",pwm_min_);
   private_nh.getParam("/max_rpm",max_rpm_);
   private_nh.getParam("/pwm_bits",pwm_bits_);   
   private_nh.getParam("/motor_reduction_ratio",motor_reduction_ratio_);
   private_nh.getParam("/encoder_line_number",encoder_line_number_);
   private_nh.getParam("/counts_per_rev",counts_per_rev_);
              
   private_nh.getParam("/pid/k_p",k_p_);
   private_nh.getParam("/pid/k_i",k_i_);
   private_nh.getParam("/pid/k_d",k_d_);
   private_nh.getParam("/emergency_stop",emergency_stop_);
   
   private_nh.getParam("/wheel_diameter",wheel_diameter_);
   private_nh.getParam("/lr_wheels_distance",lr_wheels_distance_);
   private_nh.getParam("/fr_wheels_distance",fr_wheels_distance_);
   
   private_nh.getParam("/Direction_motor1_rotation",Direction_motor1_rotation_);   
   private_nh.getParam("/Direction_motor2_rotation",Direction_motor2_rotation_);
   private_nh.getParam("/Direction_motor3_rotation",Direction_motor3_rotation_);
   private_nh.getParam("/Direction_motor4_rotation",Direction_motor4_rotation_);

   private_nh.getParam("/Direction_encoder1_value",Direction_encoder1_value_);   
   private_nh.getParam("/Direction_encoder2_value",Direction_encoder2_value_);
   private_nh.getParam("/Direction_encoder3_value",Direction_encoder3_value_);
   private_nh.getParam("/Direction_encoder4_value",Direction_encoder4_value_); 

   private_nh.getParam("/ultrasonic/ultrasonic_1",ultrasonic1_Enable_); 
   private_nh.getParam("/ultrasonic/ultrasonic_2",ultrasonic2_Enable_); 
   private_nh.getParam("/ultrasonic/ultrasonic_3",ultrasonic3_Enable_); 

   private_nh.getParam("/servo/servo_1",servo1_Enable_);
   private_nh.getParam("/servo/servo_2",servo2_Enable_); 
   private_nh.getParam("/servo/servo_3",servo3_Enable_); 
   private_nh.getParam("/servo/servo_4",servo4_Enable_);
      
   private_nh.getParam("/initial_turning_angle",initial_turning_angle_); 
   private_nh.getParam("/max_steering_angle",max_steering_angle_); 
   private_nh.getParam("/esc_median_value",esc_median_value_);
   private_nh.getParam("/a2_encoder",a2_encoder_);
    
   private_nh.getParam("/emergency_stop",emergency_stop_); 
   
   Send_Str.Sensor_Str.Pwm_Max = pwm_max_;
   Send_Str.Sensor_Str.Pwm_Min = pwm_min_;
   Send_Str.Sensor_Str.Max_Rpm = max_rpm_;
   Send_Str.Sensor_Str.Pwm_Bits = pwm_bits_;
   Send_Str.Sensor_Str.Motor_Reduction_Ratio = motor_reduction_ratio_;
   Send_Str.Sensor_Str.Encoder_Line_Number = encoder_line_number_;
   Send_Str.Sensor_Str.Counts_Per_Rev = counts_per_rev_;
   if(starrobot_base_ == "a2")
   {
     Send_Str.Sensor_Str.Base_Type = 1; 
     wheel_num = 2;  
   }
   if(starrobot_base_ == "a2")
   {
     Send_Str.Sensor_Str.Base_Type = 2; 
     wheel_num = 1;  
   }
   if(starrobot_base_ == "d2")
   {
     Send_Str.Sensor_Str.Base_Type = 3; 
     wheel_num = 2;  
   }
   if(starrobot_base_ == "d4")
   {
     Send_Str.Sensor_Str.Base_Type = 4; 
     wheel_num = 4;  
   }
   if(starrobot_base_ == "o3")
   {
     Send_Str.Sensor_Str.Base_Type = 5; 
     wheel_num = 3;  
   }
   if(starrobot_base_ == "o4")
   {
     Send_Str.Sensor_Str.Base_Type = 6; 
     wheel_num = 4;  
   }
   if(starrobot_base_ == "m4")
   {
     Send_Str.Sensor_Str.Base_Type = 7; 
     wheel_num = 4;  
   };
   if(starrobot_base_ == "t2")
   {
     Send_Str.Sensor_Str.Base_Type = 8; 
     wheel_num = 2;  
   } 
   if(starrobot_base_ == "t4")
   {
     Send_Str.Sensor_Str.Base_Type = 9; 
     wheel_num = 4;  
   }
 
   if(imu_type_ == "GY85")
     Send_Str.Sensor_Str.IMU_Type = 1;
   if(imu_type_ == "MPU6050")
     Send_Str.Sensor_Str.IMU_Type = 2;
   if(imu_type_ == "MPU9250_N")
     Send_Str.Sensor_Str.IMU_Type = 3;
   if(imu_type_ == "MPU9250_W")
     Send_Str.Sensor_Str.IMU_Type = 4;
   if(imu_type_ == "MPU6500_N")
     Send_Str.Sensor_Str.IMU_Type = 5;
   if(imu_type_ == "MPU6500_W")
     Send_Str.Sensor_Str.IMU_Type = 6;
     
   if(starrobot_motor_drive_ == "A4950")
     Send_Str.Sensor_Str.Motor_Drive_Type = 1;
   if(starrobot_motor_drive_ == "BTN79xx")
     Send_Str.Sensor_Str.Motor_Drive_Type = 2;  
   if(starrobot_motor_drive_ == "ESC")
     Send_Str.Sensor_Str.Motor_Drive_Type = 3;            
   if(starrobot_motor_drive_ == "ESC_ENCODER")
     Send_Str.Sensor_Str.Motor_Drive_Type = 4; 
        
   Send_Str.Sensor_Str.Kp_ = k_p_;
   Send_Str.Sensor_Str.Ki_ = k_i_;
   Send_Str.Sensor_Str.Kd_ = k_d_;
   Send_Str.Sensor_Str.PID_Debug_Enable = 0;
   
   Send_Str.Sensor_Str.Wheel_Diameter = wheel_diameter_;
   Send_Str.Sensor_Str.Lr_Wheels_Distance = lr_wheels_distance_;
   Send_Str.Sensor_Str.Fr_Wheels_Distance = fr_wheels_distance_;
   
   Send_Str.Sensor_Str.Direction_Motor1_Rotation = Direction_motor1_rotation_;
   Send_Str.Sensor_Str.Direction_Motor2_Rotation = Direction_motor2_rotation_;
   Send_Str.Sensor_Str.Direction_Motor3_Rotation = Direction_motor3_rotation_;
   Send_Str.Sensor_Str.Direction_Motor4_Rotation = Direction_motor4_rotation_;
   
   Send_Str.Sensor_Str.Direction_Encoder1_Value = Direction_encoder1_value_;
   Send_Str.Sensor_Str.Direction_Encoder2_Value = Direction_encoder2_value_;
   Send_Str.Sensor_Str.Direction_Encoder3_Value = Direction_encoder3_value_;
   Send_Str.Sensor_Str.Direction_Encoder4_Value = Direction_encoder4_value_;

   Send_Str.Sensor_Str.Emergency_Stop_Enable = emergency_stop_; 
   Send_Str.Sensor_Str.InitParameter = 1;  
   Send_Str.Sensor_Str.DebunMotor = debug_base_; 
   ROS_INFO("starrobot_base:%s",starrobot_base_.c_str());
   ROS_INFO("imu_type      :%s",imu_type_.c_str());
   ROS_INFO("motor_drive   :%s",starrobot_motor_drive_.c_str()); 
   
   ROS_INFO("debug_message:%d debug_base:%d",debug_message_,debug_base_);
   ROS_INFO("pwm_max:%d pwm_min:%d max_rpm:%d",pwm_max_,pwm_min_,max_rpm_); 
   ROS_INFO("pwm_bits:%d motor_reduction_ratio:%d",pwm_bits_,motor_reduction_ratio_);
   ROS_INFO("encoder_line_number:%d counts_per_rev:%d",encoder_line_number_,counts_per_rev_);  
   ROS_INFO("k_p:%.3f k_i:%.3f k_d:%.3f",k_p_,k_i_,k_d_);
   
   ROS_INFO("wheel_diameter:%.3f",wheel_diameter_);
   ROS_INFO("lr_wheels_distance:%.3f",lr_wheels_distance_);  
   ROS_INFO("fr_wheels_distance:%.3f",fr_wheels_distance_);
   
   ROS_INFO("Direction_motor1:%d Direction_motor2:%d",
   	Direction_motor1_rotation_,Direction_motor2_rotation_);
   ROS_INFO("Direction_motor3:%d Direction_motor4:%d",
   	Direction_motor3_rotation_,Direction_motor4_rotation_);
   ROS_INFO("Direction_encoder1:%d Direction_encoder2:%d",
   	Direction_encoder1_value_,Direction_encoder2_value_);
   ROS_INFO("Direction_encoder3:%d Direction_encoder4:%d",
   	Direction_encoder3_value_,Direction_encoder4_value_); 
   ROS_INFO("emergency_stop:%d",emergency_stop_); 
   //boost::mutex::scoped_lock(write_mutex_);  
   Robot_Serial.write(Send_Str.buffer,PROTOCL_DATA_SIZE);	
}
/***
 @ Description	-> cmd_vel Callback function
 @ Param		-> const geometry_msgs::Twist &twist_aux 
 @ Author		-> ChenZhouFu
 @ Date			-> 2020-4-1
 @ Function     -> starrobot_robot_object::cmd_velCallback(const geometry_msgs::Twist &twist_aux)
***/
void starrobot_robot_object::cmd_velCallback(const CmdConstPtr &twist_aux)
{
	// process callback function msgs
	Send_Str.Sensor_Str.X_Speed = twist_aux->linear.x;
	Send_Str.Sensor_Str.Y_Speed = twist_aux->linear.y;
	Send_Str.Sensor_Str.Z_Speed = twist_aux->angular.z;
	//boost::mutex::scoped_lock(write_mutex_);
	Robot_Serial.write(Send_Str.buffer, PROTOCL_DATA_SIZE);
	//ROS_INFO("cmd_velCallback");
}

/***
 @ Description	-> pid Callback function
 @ Param		-> const const starrobot_msgs::PID& pid
 @ Author		-> ChenZhouFu
 @ Date			-> 2020-4-1
 @ Function     -> starrobot_robot_object::pid_velCallback(const starrobot_msgs::PID& pid)
***/
void starrobot_robot_object::pid_velCallback(const PidConstPtr& pid)
{
	// process callback function msgs
	Send_Str.Sensor_Str.Kp_              = pid->p;
	Send_Str.Sensor_Str.Ki_              = pid->i;
	Send_Str.Sensor_Str.Kd_              = pid->d;
  Send_Str.Sensor_Str.PID_Debug_Enable = 1;
  boost::mutex::scoped_lock(write_mutex_);
	Robot_Serial.write(Send_Str.buffer, PROTOCL_DATA_SIZE);
	//ROS_INFO("pid_velCallback");
	
}
/***
 @ Description	-> send and get stm32 board data
 @ Param		-> null
 @ Author		-> ChenZhouFu
 @ Date			-> 2019-03-10
 @ Function     -> bool starrobot_robot_object::ReadFormUart()
 @ return 		-> status
***/
void starrobot_robot_object::ReadFormUart(const ros::TimerEvent& e)
{	
  boost::unique_lock<boost::mutex> lock(read_mutex_);
	Robot_Serial.read(Reciver_Str.buffer,PROTOCL_DATA_SIZE);
	ROS_INFO("Header:%02x",Reciver_Str.Sensor_Str.Header);
	ROS_INFO("End_flag:%02x",Reciver_Str.Sensor_Str.End_flag);
	if (Reciver_Str.Sensor_Str.Header == PROTOCOL_HEADER)
	{   
		if (Reciver_Str.Sensor_Str.End_flag == PROTOCOL_END)
		{ 
		    PublisherBattery();
		    PublisherRawVel();
		    PublisherRawImu();
		    DebugEncoderDataShow();
		}
	}
	else
	{
	  ROS_ERROR("Starrobot Base Upload Data Error");
	} 
}

/***
 @ Description	-> Publisher RawVel
 @ Param		-> null
 @ Author		-> ChenZhouFu
 @ Date			-> 2019-03-10
 @ Function     -> starrobot_robot_object::PublisherRawVel(void)
 @ return 		-> NULL
***/
void starrobot_robot_object::PublisherRawVel()
{    
	raw_vel_msg.linear_y = 0.0;//Reciver_Str.Sensor_Str.X_Speed;
	raw_vel_msg.linear_x = 0.0;//Reciver_Str.Sensor_Str.Y_Speed;
	raw_vel_msg.angular_z = 0.0;//;Reciver_Str.Sensor_Str.Z_Speed;
	raw_vel_pub.publish(raw_vel_msg);	
}

/***
 @ Description	-> Publisher RawImu()
 @ Param		-> null
 @ Author		-> ChenZhouFu
 @ Date			-> 2020-04-1
 @ Function     -> starrobot_robot_object::PublisherRawImu()
 @ return 		-> null
***/
void starrobot_robot_object::PublisherRawImu()
{   
		
	check_Acc_   = Reciver_Str.Sensor_Str.Link_Accelerometer.x;
	check_Gyr_   = Reciver_Str.Sensor_Str.Link_Accelerometer.x;
	check_Magne_ = Reciver_Str.Sensor_Str.Link_Accelerometer.x;
	if(check_Acc_ || check_Gyr_ || check_Magne_)
	{
		ROS_WARN("Accelerometer NOT FOUND!");
		ROS_WARN("Gyroscope NOT FOUND!");
		ROS_WARN("Magnetometer NOT FOUND!");
		raw_imu_msg.linear_acceleration.x = 0.0;
		raw_imu_msg.linear_acceleration.y = 0.0;
		raw_imu_msg.linear_acceleration.z = 0.0;
		raw_imu_msg.angular_velocity.x = 0.0;
		raw_imu_msg.angular_velocity.y = 0.0;
		raw_imu_msg.angular_velocity.z = 0.0;
		raw_imu_msg.magnetic_field.x = 0.0;
		raw_imu_msg.magnetic_field.y = 0.0;
		raw_imu_msg.magnetic_field.z = 0.0;
	}
	else
	{
		raw_imu_msg.linear_acceleration.x = Reciver_Str.Sensor_Str.Link_Accelerometer.x;
		raw_imu_msg.linear_acceleration.y = Reciver_Str.Sensor_Str.Link_Accelerometer.y;
		raw_imu_msg.linear_acceleration.z = Reciver_Str.Sensor_Str.Link_Accelerometer.z;
		raw_imu_msg.angular_velocity.x = Reciver_Str.Sensor_Str.Link_Gyroscope.x;
		raw_imu_msg.angular_velocity.y = Reciver_Str.Sensor_Str.Link_Gyroscope.y;
		raw_imu_msg.angular_velocity.z = Reciver_Str.Sensor_Str.Link_Gyroscope.z;
		raw_imu_msg.magnetic_field.x = Reciver_Str.Sensor_Str.Link_Magnetometer.x;
		raw_imu_msg.magnetic_field.y = Reciver_Str.Sensor_Str.Link_Magnetometer.y;
		raw_imu_msg.magnetic_field.z = Reciver_Str.Sensor_Str.Link_Magnetometer.z;					
	}
	raw_imu_pub.publish(raw_imu_msg);
}

/***
 @ Description	-> Publisher Battery
 @ Param		-> null
 @ Author		-> ChenZhouFu
 @ Date			-> 2019-04-1
 @ Function     -> starrobot_robot_object::PublisherBattery()
 @ return 		-> NULL
***/
void starrobot_robot_object::PublisherBattery()
{   
		raw_bat_msg.voltage = Reciver_Str.Sensor_Str.Voltage;
		raw_bat_msg.electricity = Reciver_Str.Sensor_Str.Electricity;
		battery_pub.publish(raw_bat_msg);
}
/***
 @ Description	-> Debug Encoder Data Show
 @ Param		-> null
 @ Author		-> ChenZhouFu
 @ Date			-> 2020-4-1
 @ Function     -> starrobot_robot_object::DebugEncoderDataShow()
 @ return 		-> NULL
***/
void starrobot_robot_object::DebugEncoderDataShow()
{  	
    if(debug_base_)
		{
				switch(wheel_num)
				{
						case 1:
							if(a2_encoder_)
								ROS_INFO("A2 Encoder: %lld",Reciver_Str.Sensor_Str.Encoder1_Value);
							break;
						case 2:
							ROS_INFO("Encoder Left Front  1 : %lld",Reciver_Str.Sensor_Str.Encoder1_Value);
							ROS_INFO("Encoder Right Front 2 : %lld",Reciver_Str.Sensor_Str.Encoder2_Value);
								break;
						case 3:
							ROS_INFO("Encoder Front  1 : %lld",Reciver_Str.Sensor_Str.Encoder1_Value);
							ROS_INFO("Encoder Right  2 : %lld",Reciver_Str.Sensor_Str.Encoder2_Value);
							ROS_INFO("Encoder Left   3 : %lld",Reciver_Str.Sensor_Str.Encoder3_Value);
								break;
						case 4:
							ROS_INFO("Encoder Left Front  1 : %lld",Reciver_Str.Sensor_Str.Encoder1_Value);
							ROS_INFO("Encoder Right Front 2 : %lld",Reciver_Str.Sensor_Str.Encoder2_Value);
							ROS_INFO("Encoder Left Rear   3 : %lld",Reciver_Str.Sensor_Str.Encoder3_Value);
							ROS_INFO("Encoder Right Rear  4 : %lld",Reciver_Str.Sensor_Str.Encoder4_Value);
							break;
				}
		} 
}



