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
include GUI/CMakeFiles/GUI.dir/depend.make

# Include the progress variables for this target.
include GUI/CMakeFiles/GUI.dir/progress.make

# Include the compile flags for this target's objects.
include GUI/CMakeFiles/GUI.dir/flags.make

GUI/CMakeFiles/GUI.dir/GUI.cpp.o: GUI/CMakeFiles/GUI.dir/flags.make
GUI/CMakeFiles/GUI.dir/GUI.cpp.o: GUI/GUI.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GUI/CMakeFiles/GUI.dir/GUI.cpp.o"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GUI.dir/GUI.cpp.o -c /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI/GUI.cpp

GUI/CMakeFiles/GUI.dir/GUI.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GUI.dir/GUI.cpp.i"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI/GUI.cpp > CMakeFiles/GUI.dir/GUI.cpp.i

GUI/CMakeFiles/GUI.dir/GUI.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GUI.dir/GUI.cpp.s"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI/GUI.cpp -o CMakeFiles/GUI.dir/GUI.cpp.s

# Object files for target GUI
GUI_OBJECTS = \
"CMakeFiles/GUI.dir/GUI.cpp.o"

# External object files for target GUI
GUI_EXTERNAL_OBJECTS =

GUI/libGUI.a: GUI/CMakeFiles/GUI.dir/GUI.cpp.o
GUI/libGUI.a: GUI/CMakeFiles/GUI.dir/build.make
GUI/libGUI.a: GUI/CMakeFiles/GUI.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lukuky64/catkin_ws/src/Selfie-Robot/code/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libGUI.a"
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && $(CMAKE_COMMAND) -P CMakeFiles/GUI.dir/cmake_clean_target.cmake
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GUI.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
GUI/CMakeFiles/GUI.dir/build: GUI/libGUI.a

.PHONY : GUI/CMakeFiles/GUI.dir/build

GUI/CMakeFiles/GUI.dir/clean:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI && $(CMAKE_COMMAND) -P CMakeFiles/GUI.dir/cmake_clean.cmake
.PHONY : GUI/CMakeFiles/GUI.dir/clean

GUI/CMakeFiles/GUI.dir/depend:
	cd /home/lukuky64/catkin_ws/src/Selfie-Robot/code && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI /home/lukuky64/catkin_ws/src/Selfie-Robot/code /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI /home/lukuky64/catkin_ws/src/Selfie-Robot/code/GUI/CMakeFiles/GUI.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : GUI/CMakeFiles/GUI.dir/depend

