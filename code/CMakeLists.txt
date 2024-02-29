cmake_minimum_required(VERSION 3.10)
project(SelfieRobot VERSION 1.0.0) # major.minor.patch update

find_package(OpenCV REQUIRED)  # Find the OpenCV package

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
add_executable(individual_run test_individual.cpp)


# Link the modules with the main executable
target_link_libraries(main_run PRIVATE GUI line_detection stroke_planner motion_planner end_effector ${OpenCV_LIBS})
target_link_libraries(individual_run PRIVATE GUI line_detection stroke_planner motion_planner end_effector ${OpenCV_LIBS})

