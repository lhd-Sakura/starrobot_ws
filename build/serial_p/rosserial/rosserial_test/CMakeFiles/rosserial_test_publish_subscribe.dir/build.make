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
include serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/depend.make

# Include the progress variables for this target.
include serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/progress.make

# Include the compile flags for this target's objects.
include serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/flags.make

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/flags.make
serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o: /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_test/src/publish_subscribe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o -c /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_test/src/publish_subscribe.cpp

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.i"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_test/src/publish_subscribe.cpp > CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.i

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.s"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_test/src/publish_subscribe.cpp -o CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.s

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.requires:

.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.requires

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.provides: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.requires
	$(MAKE) -f serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/build.make serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.provides.build
.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.provides

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.provides.build: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o


# Object files for target rosserial_test_publish_subscribe
rosserial_test_publish_subscribe_OBJECTS = \
"CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o"

# External object files for target rosserial_test_publish_subscribe
rosserial_test_publish_subscribe_EXTERNAL_OBJECTS =

/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/build.make
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: gtest/gtest/libgtest.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /home/star/starrobot_ws/devel/lib/librosserial_server_lookup.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/libtopic_tools.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/libroscpp.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_filesystem.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_signals.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/librosconsole.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/liblog4cxx.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_regex.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/librostime.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /opt/ros/kinetic/lib/libcpp_common.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_chrono.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_date_time.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libboost_atomic.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libconsole_bridge.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: /usr/lib/arm-linux-gnueabihf/libpython2.7.so
/home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rosserial_test_publish_subscribe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/build: /home/star/starrobot_ws/devel/lib/rosserial_test/rosserial_test_publish_subscribe

.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/build

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/requires: serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/src/publish_subscribe.cpp.o.requires

.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/requires

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/clean:
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test && $(CMAKE_COMMAND) -P CMakeFiles/rosserial_test_publish_subscribe.dir/cmake_clean.cmake
.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/clean

serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/depend:
	cd /home/star/starrobot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/star/starrobot_ws/src /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_test /home/star/starrobot_ws/build /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial_p/rosserial/rosserial_test/CMakeFiles/rosserial_test_publish_subscribe.dir/depend
