cmake_minimum_required(VERSION 2.8.3)
project(starrobot_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
  DIRECTORY msg
  FILES
  Velocities.msg
  PID.msg
  Imu.msg
  Battery.msg
  Fall.msg
  Infrared.msg
  Crash.msg
  Servo.msg
  Sonar.msg
  PowerKey.msg
  Key.msg
  Encoder.msg
  rpm.msg
)

generate_messages(DEPENDENCIES std_msgs geometry_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs geometry_msgs)