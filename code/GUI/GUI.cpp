// GUI.cpp

#include "GUI.h"
#include <iostream>

// Constructor implementation
GUI::GUI(int initialValue) : value(initialValue) 
{
    std::cout << "GUI constructor called" << std::endl;
}

// Method to set the value
void GUI::setValue(int newValue) {
    value = newValue;
}

// Method to display the value
void GUI::displayValue() const {
    std::cout << "Value: " << value << std::endl;
}
