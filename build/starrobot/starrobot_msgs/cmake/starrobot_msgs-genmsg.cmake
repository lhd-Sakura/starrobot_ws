# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "starrobot_msgs: 13 messages, 0 services")

set(MSG_I_FLAGS "-Istarrobot_msgs:/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(starrobot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" ""
)

get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_custom_target(_starrobot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "starrobot_msgs" "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_cpp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(starrobot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(starrobot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(starrobot_msgs_generate_messages starrobot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_cpp _starrobot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(starrobot_msgs_gencpp)
add_dependencies(starrobot_msgs_gencpp starrobot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS starrobot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_eus(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(starrobot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(starrobot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(starrobot_msgs_generate_messages starrobot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_eus _starrobot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(starrobot_msgs_geneus)
add_dependencies(starrobot_msgs_geneus starrobot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS starrobot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_lisp(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(starrobot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(starrobot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(starrobot_msgs_generate_messages starrobot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_lisp _starrobot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(starrobot_msgs_genlisp)
add_dependencies(starrobot_msgs_genlisp starrobot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS starrobot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_nodejs(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(starrobot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(starrobot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(starrobot_msgs_generate_messages starrobot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_nodejs _starrobot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(starrobot_msgs_gennodejs)
add_dependencies(starrobot_msgs_gennodejs starrobot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS starrobot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)
_generate_msg_py(starrobot_msgs
  "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(starrobot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(starrobot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(starrobot_msgs_generate_messages starrobot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Encoder.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/rpm.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Key.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PowerKey.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Servo.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Sonar.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Infrared.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/PID.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Battery.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Crash.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Fall.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/star/starrobot_ws/src/starrobot/starrobot_msgs/msg/Velocities.msg" NAME_WE)
add_dependencies(starrobot_msgs_generate_messages_py _starrobot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(starrobot_msgs_genpy)
add_dependencies(starrobot_msgs_genpy starrobot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS starrobot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/starrobot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(starrobot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(starrobot_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/starrobot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(starrobot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(starrobot_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/starrobot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(starrobot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(starrobot_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/starrobot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(starrobot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(starrobot_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/starrobot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(starrobot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(starrobot_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
