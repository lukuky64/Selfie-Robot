# Create a library target for stroke_planner
add_library(stroke_planner stroke_planner.cpp)

# Specify include directories for stroke_planner
target_include_directories(stroke_planner INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
