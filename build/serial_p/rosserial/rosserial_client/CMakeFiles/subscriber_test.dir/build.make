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
include serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend.make

# Include the progress variables for this target.
include serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/progress.make

# Include the compile flags for this target's objects.
include serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/flags.make
serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o: /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_client/test/subscriber_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o -c /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_client/test/subscriber_test.cpp

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_client/test/subscriber_test.cpp > CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.i

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_client/test/subscriber_test.cpp -o CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.s

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires:

.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires
	$(MAKE) -f serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build.make serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides.build
.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.provides.build: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o


# Object files for target subscriber_test
subscriber_test_OBJECTS = \
"CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o"

# External object files for target subscriber_test
subscriber_test_EXTERNAL_OBJECTS =

/home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o
/home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build.make
/home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test: gtest/gtest/libgtest.so
/home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/star/starrobot_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test"
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/subscriber_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build: /home/star/starrobot_ws/devel/lib/rosserial_client/subscriber_test

.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/build

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/requires: serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/test/subscriber_test.cpp.o.requires

.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/requires

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean:
	cd /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client && $(CMAKE_COMMAND) -P CMakeFiles/subscriber_test.dir/cmake_clean.cmake
.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/clean

serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend:
	cd /home/star/starrobot_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/star/starrobot_ws/src /home/star/starrobot_ws/src/serial_p/rosserial/rosserial_client /home/star/starrobot_ws/build /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client /home/star/starrobot_ws/build/serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : serial_p/rosserial/rosserial_client/CMakeFiles/subscriber_test.dir/depend
