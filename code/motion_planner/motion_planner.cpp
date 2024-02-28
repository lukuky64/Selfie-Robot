// motion_planner.cpp

#include "motion_planner.h"
#include <iostream>

// Constructor implementation
Motion_planner::Motion_planner(int initialValue) : value(initialValue) {}

// Method to set the value
void Motion_planner::setValue(int newValue) {
    value = newValue;
}

// Method to display the value
void Motion_planner::displayValue() const {
    std::cout << "Value: " << value << std::endl;
}
