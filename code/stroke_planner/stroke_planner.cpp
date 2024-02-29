// stroke_planner.cpp

#include "stroke_planner.h"
#include <iostream>

// Constructor implementation
Stroke_planner::Stroke_planner(int initialValue) : value(initialValue)
{
    std::cout << "Stroke_planner constructor called" << std::endl;
}

// Method to set the value
void Stroke_planner::setValue(int newValue) {
    value = newValue;
}

// Method to display the value
void Stroke_planner::displayValue() const {
    std::cout << "Value: " << value << std::endl;
}
