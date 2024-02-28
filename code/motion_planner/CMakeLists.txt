# Create a library target for motion_planner
add_library(motion_planner motion_planner.cpp)

# Specify include directories for motion_planner
target_include_directories(motion_planner INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
