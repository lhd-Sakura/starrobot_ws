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
include starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/depend.make

# Include the progress variables for this target.
include starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/progress.make

# Include the compile flags for this target's objects.
include starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/flags.make

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/flags.make
starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o: /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/stateless_orientation_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o -c /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/stateless_orientation_test.cpp

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.i"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/stateless_orientation_test.cpp > CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.i

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.s"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/stateless_orientation_test.cpp -o CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.s

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.requires:

.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.requires

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.provides: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.requires
	$(MAKE) -f starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/build.make starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.provides.build
.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.provides

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.provides.build: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o


starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/flags.make
starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o: /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/madgwick_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o -c /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/madgwick_test.cpp

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.i"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/madgwick_test.cpp > CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.i

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.s"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick/test/madgwick_test.cpp -o CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.s

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.requires:

.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.requires

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.provides: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.requires
	$(MAKE) -f starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/build.make starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.provides.build
.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.provides

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.provides.build: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o


# Object files for target imu_filter_madgwick-madgwick_test
imu_filter_madgwick__madgwick_test_OBJECTS = \
"CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o" \
"CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o"

# External object files for target imu_filter_madgwick-madgwick_test
imu_filter_madgwick__madgwick_test_EXTERNAL_OBJECTS =

/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/build.make
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: gtest/gtest/libgtest.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /home/star/starrobot_ws/devel/lib/libimu_filter.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/liborocos-kdl.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/liborocos-kdl.so.1.3.2
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libtf2_ros.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libactionlib.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libtf2.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libnodeletlib.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libuuid.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libbondcpp.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libtinyxml2.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libclass_loader.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/libPocoFoundation.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libdl.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libroslib.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/librospack.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_program_options.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libtinyxml.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libmessage_filters.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libroscpp.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/librosconsole.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libdynamic_reconfigure_config_init_mutex.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/librostime.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /opt/ros/kinetic/lib/libcpp_common.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable /home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test"
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imu_filter_madgwick-madgwick_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/build: /home/star/starrobot_ws/devel/lib/imu_filter_madgwick/imu_filter_madgwick-madgwick_test

.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/build

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/requires: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/stateless_orientation_test.cpp.o.requires
starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/requires: starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/test/madgwick_test.cpp.o.requires

.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/requires

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/clean:
	cd /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick && $(CMAKE_COMMAND) -P CMakeFiles/imu_filter_madgwick-madgwick_test.dir/cmake_clean.cmake
.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/clean

starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/depend:
	cd /home/star/starrobot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/star/starrobot_ws/src /home/star/starrobot_ws/src/starrobot/imu_filter_madgwick /home/star/starrobot_ws/build /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick /home/star/starrobot_ws/build/starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : starrobot/imu_filter_madgwick/CMakeFiles/imu_filter_madgwick-madgwick_test.dir/depend
