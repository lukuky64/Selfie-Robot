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
include stroke_planner/CMakeFiles/stroke_planner.dir/depend.make

# Include the progress variables for this target.
include stroke_planner/CMakeFiles/stroke_planner.dir/progress.make

# Include the compile flags for this target's objects.
include stroke_planner/CMakeFiles/stroke_planner.dir/flags.make

stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o: stroke_planner/CMakeFiles/stroke_planner.dir/flags.make
stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o: stroke_planner/stroke_planner.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o -c /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner/stroke_planner.cpp

stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stroke_planner.dir/stroke_planner.cpp.i"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner/stroke_planner.cpp > CMakeFiles/stroke_planner.dir/stroke_planner.cpp.i

stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stroke_planner.dir/stroke_planner.cpp.s"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner/stroke_planner.cpp -o CMakeFiles/stroke_planner.dir/stroke_planner.cpp.s

# Object files for target stroke_planner
stroke_planner_OBJECTS = \
"CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o"

# External object files for target stroke_planner
stroke_planner_EXTERNAL_OBJECTS =

stroke_planner/libstroke_planner.a: stroke_planner/CMakeFiles/stroke_planner.dir/stroke_planner.cpp.o
stroke_planner/libstroke_planner.a: stroke_planner/CMakeFiles/stroke_planner.dir/build.make
stroke_planner/libstroke_planner.a: stroke_planner/CMakeFiles/stroke_planner.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libstroke_planner.a"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && $(CMAKE_COMMAND) -P CMakeFiles/stroke_planner.dir/cmake_clean_target.cmake
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stroke_planner.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
stroke_planner/CMakeFiles/stroke_planner.dir/build: stroke_planner/libstroke_planner.a

.PHONY : stroke_planner/CMakeFiles/stroke_planner.dir/build

stroke_planner/CMakeFiles/stroke_planner.dir/clean:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner && $(CMAKE_COMMAND) -P CMakeFiles/stroke_planner.dir/cmake_clean.cmake
.PHONY : stroke_planner/CMakeFiles/stroke_planner.dir/clean

stroke_planner/CMakeFiles/stroke_planner.dir/depend:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner /home/lukuky64/catkin_ws/src/Selfie-Robot/code/stroke_planner/CMakeFiles/stroke_planner.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : stroke_planner/CMakeFiles/stroke_planner.dir/depend
