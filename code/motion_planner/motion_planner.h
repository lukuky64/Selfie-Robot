// motion_planner.h

#ifndef MOTION_PLANNER_H
#define MOTION_PLANNER_H

class Motion_planner {
private:
    int value;

public:
    Motion_planner(int initialValue); // Constructor
    void setValue(int newValue);
    void displayValue() const;
};

#endif // MOTION_PLANNER_H
