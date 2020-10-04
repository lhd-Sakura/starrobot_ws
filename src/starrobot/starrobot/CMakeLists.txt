cmake_minimum_required(VERSION 2.8.3)
project(starrobot)
## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
)
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES racebot
#  CATKIN_DEPENDS roscpp rospy std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)
add_executable(base_speed_test src/base_speed_test.cpp)
target_link_libraries(base_speed_test ${catkin_LIBRARIES})


add_executable(base_turnaround_test src/base_turnaround_test.cpp)
target_link_libraries(base_turnaround_test ${catkin_LIBRARIES})
