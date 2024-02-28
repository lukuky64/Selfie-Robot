// line_detection.cpp

#include "line_detection.h"
#include <iostream>

// Constructor implementation
Line_detection::Line_detection(int initialValue) : value(initialValue) {}

// Method to set the value
void Line_detection::setValue(int newValue) {
    value = newValue;
}

// Method to display the value
void Line_detection::displayValue() const {
    std::cout << "Value: " << value << std::endl;
}
