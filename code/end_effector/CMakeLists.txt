# Create a library target for end_effector
add_library(end_effector end_effector.cpp)

# Specify include directories for end_effector
target_include_directories(end_effector INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
