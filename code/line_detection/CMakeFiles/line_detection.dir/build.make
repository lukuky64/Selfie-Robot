# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/lukuky64/catkin_ws/src/Selfie-Robot/code

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lukuky64/catkin_ws/src/Selfie-Robot/code

# Include any dependencies generated for this target.
include line_detection/CMakeFiles/line_detection.dir/depend.make

# Include the progress variables for this target.
include line_detection/CMakeFiles/line_detection.dir/progress.make

# Include the compile flags for this target's objects.
include line_detection/CMakeFiles/line_detection.dir/flags.make

line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.o: line_detection/CMakeFiles/line_detection.dir/flags.make
line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.o: line_detection/line_detection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.o"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/line_detection.dir/line_detection.cpp.o -c /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection/line_detection.cpp

line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/line_detection.dir/line_detection.cpp.i"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection/line_detection.cpp > CMakeFiles/line_detection.dir/line_detection.cpp.i

line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/line_detection.dir/line_detection.cpp.s"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection/line_detection.cpp -o CMakeFiles/line_detection.dir/line_detection.cpp.s

# Object files for target line_detection
line_detection_OBJECTS = \
"CMakeFiles/line_detection.dir/line_detection.cpp.o"

# External object files for target line_detection
line_detection_EXTERNAL_OBJECTS =

line_detection/libline_detection.a: line_detection/CMakeFiles/line_detection.dir/line_detection.cpp.o
line_detection/libline_detection.a: line_detection/CMakeFiles/line_detection.dir/build.make
line_detection/libline_detection.a: line_detection/CMakeFiles/line_detection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libline_detection.a"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && $(CMAKE_COMMAND) -P CMakeFiles/line_detection.dir/cmake_clean_target.cmake
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/line_detection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
line_detection/CMakeFiles/line_detection.dir/build: line_detection/libline_detection.a

.PHONY : line_detection/CMakeFiles/line_detection.dir/build

line_detection/CMakeFiles/line_detection.dir/clean:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection && $(CMAKE_COMMAND) -P CMakeFiles/line_detection.dir/cmake_clean.cmake
.PHONY : line_detection/CMakeFiles/line_detection.dir/clean

line_detection/CMakeFiles/line_detection.dir/depend:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection /home/lukuky64/catkin_ws/src/Selfie-Robot/code/line_detection/CMakeFiles/line_detection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : line_detection/CMakeFiles/line_detection.dir/depend

