// GUI.h

#ifndef GUI_H
#define GUI_H

class GUI {
private:
    int value;

public:
    GUI(int initialValue); // Constructor
    void setValue(int newValue);
    void displayValue() const;
};

#endif // GUI_H
