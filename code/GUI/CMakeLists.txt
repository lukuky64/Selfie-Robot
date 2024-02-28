# Create a library target for GUI
add_library(GUI GUI.cpp)

# Specify include directories for GUI
target_include_directories(GUI INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
