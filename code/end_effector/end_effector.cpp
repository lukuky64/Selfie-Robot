// starter.cpp

#include "end_effector.h"
#include <iostream>

// Constructor implementation
End_effector::End_effector(int initialValue) : value(initialValue) {}

// Method to set the value
void End_effector::setValue(int newValue) {
    value = newValue;
}

// Method to display the value
void End_effector::displayValue() const {
    std::cout << "Value: " << value << std::endl;
}
