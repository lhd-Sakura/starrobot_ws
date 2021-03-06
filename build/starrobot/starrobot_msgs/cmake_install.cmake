# Install script for directory: /home/star/starrobot_ws/src/starrobot/starrobot_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/star/starrobot_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/starrobot_msgs/msg" TYPE FILE FILES
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
    "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/starrobot_msgs/cmake" TYPE FILE FILES "/home/star/starrobot_ws/build/starrobot/starrobot_msgs/catkin_generated/installspace/starrobot_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/star/starrobot_ws/devel/include/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/star/starrobot_ws/devel/share/roseus/ros/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/star/starrobot_ws/devel/share/common-lisp/ros/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/star/starrobot_ws/devel/share/gennodejs/ros/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/star/starrobot_ws/devel/lib/python2.7/dist-packages/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/star/starrobot_ws/devel/lib/python2.7/dist-packages/starrobot_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/star/starrobot_ws/build/starrobot/starrobot_msgs/catkin_generated/installspace/starrobot_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/starrobot_msgs/cmake" TYPE FILE FILES "/home/star/starrobot_ws/build/starrobot/starrobot_msgs/catkin_generated/installspace/starrobot_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/starrobot_msgs/cmake" TYPE FILE FILES
    "/home/star/starrobot_ws/build/starrobot/starrobot_msgs/catkin_generated/installspace/starrobot_msgsConfig.cmake"
    "/home/star/starrobot_ws/build/starrobot/starrobot_msgs/catkin_generated/installspace/starrobot_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/starrobot_msgs" TYPE FILE FILES "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/package.xml")
endif()

