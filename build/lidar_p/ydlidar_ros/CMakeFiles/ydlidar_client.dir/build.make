# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/star/starrobot_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/star/starrobot_ws/build

# Include any dependencies generated for this target.
include lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/depend.make

# Include the progress variables for this target.
include lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/progress.make

# Include the compile flags for this target's objects.
include lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/flags.make

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/flags.make
lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o: /home/star/starrobot_ws/src/lidar_p/ydlidar_ros/src/ydlidar_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o"
	cd /home/star/starrobot_ws/build/lidar_p/ydlidar_ros && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o -c /home/star/starrobot_ws/src/lidar_p/ydlidar_ros/src/ydlidar_client.cpp

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i"
	cd /home/star/starrobot_ws/build/lidar_p/ydlidar_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/lidar_p/ydlidar_ros/src/ydlidar_client.cpp > CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.i

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s"
	cd /home/star/starrobot_ws/build/lidar_p/ydlidar_ros && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/lidar_p/ydlidar_ros/src/ydlidar_client.cpp -o CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.s

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires:

.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires
	$(MAKE) -f lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/build.make lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides.build
.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.provides.build: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o


# Object files for target ydlidar_client
ydlidar_client_OBJECTS = \
"CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o"

# External object files for target ydlidar_client
ydlidar_client_EXTERNAL_OBJECTS =

/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/build.make
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/libroscpp.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/librosconsole.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/librostime.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /opt/ros/kinetic/lib/libcpp_common.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client"
	cd /home/star/starrobot_ws/build/lidar_p/ydlidar_ros && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ydlidar_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/build: /home/star/starrobot_ws/devel/lib/ydlidar_ros/ydlidar_client

.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/build

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/requires: lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/src/ydlidar_client.cpp.o.requires

.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/requires

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/clean:
	cd /home/star/starrobot_ws/build/lidar_p/ydlidar_ros && $(CMAKE_COMMAND) -P CMakeFiles/ydlidar_client.dir/cmake_clean.cmake
.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/clean

lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/depend:
	cd /home/star/starrobot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/star/starrobot_ws/src /home/star/starrobot_ws/src/lidar_p/ydlidar_ros /home/star/starrobot_ws/build /home/star/starrobot_ws/build/lidar_p/ydlidar_ros /home/star/starrobot_ws/build/lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lidar_p/ydlidar_ros/CMakeFiles/ydlidar_client.dir/depend

