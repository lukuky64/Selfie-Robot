cmake_minimum_required(VERSION 3.10)
project(MyProject VERSION 1.0)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Include the subdirectories
add_subdirectory(GUI)
add_subdirectory(line_detection)
add_subdirectory(stroke_planner)
add_subdirectory(motion_planner)
add_subdirectory(end_effector)

# Add executable for the main program
add_executable(main_run main.cpp)

# Link the modules with the main executable
target_link_libraries(main_run PRIVATE GUI line_detection stroke_planner end_effector)
