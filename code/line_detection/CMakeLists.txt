# Create a library target for line_detection
add_library(line_detection line_detection.cpp)

# Link the OpenCV libraries to your line_detection library
target_link_libraries(line_detection PRIVATE ${OpenCV_LIBS})
