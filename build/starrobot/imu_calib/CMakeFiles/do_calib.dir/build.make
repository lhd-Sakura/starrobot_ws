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
include starrobot/imu_calib/CMakeFiles/do_calib.dir/depend.make

# Include the progress variables for this target.
include starrobot/imu_calib/CMakeFiles/do_calib.dir/progress.make

# Include the compile flags for this target's objects.
include starrobot/imu_calib/CMakeFiles/do_calib.dir/flags.make

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o: starrobot/imu_calib/CMakeFiles/do_calib.dir/flags.make
starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o: /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o -c /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib_node.cpp

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/do_calib.dir/src/do_calib_node.cpp.i"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib_node.cpp > CMakeFiles/do_calib.dir/src/do_calib_node.cpp.i

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/do_calib.dir/src/do_calib_node.cpp.s"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib_node.cpp -o CMakeFiles/do_calib.dir/src/do_calib_node.cpp.s

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.requires:

.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.requires

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.provides: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.requires
	$(MAKE) -f starrobot/imu_calib/CMakeFiles/do_calib.dir/build.make starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.provides.build
.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.provides

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.provides.build: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o


starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o: starrobot/imu_calib/CMakeFiles/do_calib.dir/flags.make
starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o: /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/do_calib.dir/src/do_calib.cpp.o -c /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib.cpp

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/do_calib.dir/src/do_calib.cpp.i"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib.cpp > CMakeFiles/do_calib.dir/src/do_calib.cpp.i

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/do_calib.dir/src/do_calib.cpp.s"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/starrobot/imu_calib/src/do_calib.cpp -o CMakeFiles/do_calib.dir/src/do_calib.cpp.s

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.requires:

.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.requires

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.provides: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.requires
	$(MAKE) -f starrobot/imu_calib/CMakeFiles/do_calib.dir/build.make starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.provides.build
.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.provides

starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.provides.build: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o


# Object files for target do_calib
do_calib_OBJECTS = \
"CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o" \
"CMakeFiles/do_calib.dir/src/do_calib.cpp.o"

# External object files for target do_calib
do_calib_EXTERNAL_OBJECTS =

/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: starrobot/imu_calib/CMakeFiles/do_calib.dir/build.make
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /home/star/starrobot_ws/devel/lib/libaccel_calib.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/libroscpp.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/librosconsole.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/librostime.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /opt/ros/kinetic/lib/libcpp_common.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/star/starrobot_ws/devel/lib/imu_calib/do_calib: starrobot/imu_calib/CMakeFiles/do_calib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/star/starrobot_ws/devel/lib/imu_calib/do_calib"
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/do_calib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
starrobot/imu_calib/CMakeFiles/do_calib.dir/build: /home/star/starrobot_ws/devel/lib/imu_calib/do_calib

.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/build

starrobot/imu_calib/CMakeFiles/do_calib.dir/requires: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib_node.cpp.o.requires
starrobot/imu_calib/CMakeFiles/do_calib.dir/requires: starrobot/imu_calib/CMakeFiles/do_calib.dir/src/do_calib.cpp.o.requires

.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/requires

starrobot/imu_calib/CMakeFiles/do_calib.dir/clean:
	cd /home/star/starrobot_ws/build/starrobot/imu_calib && $(CMAKE_COMMAND) -P CMakeFiles/do_calib.dir/cmake_clean.cmake
.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/clean

starrobot/imu_calib/CMakeFiles/do_calib.dir/depend:
	cd /home/star/starrobot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/star/starrobot_ws/src /home/star/starrobot_ws/src/starrobot/imu_calib /home/star/starrobot_ws/build /home/star/starrobot_ws/build/starrobot/imu_calib /home/star/starrobot_ws/build/starrobot/imu_calib/CMakeFiles/do_calib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : starrobot/imu_calib/CMakeFiles/do_calib.dir/depend

