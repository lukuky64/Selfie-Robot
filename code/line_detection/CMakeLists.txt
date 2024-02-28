# Create a library target for line_detection
add_library(line_detection line_detection.cpp)

# Specify include directories for line_detection
target_include_directories(line_detection INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
