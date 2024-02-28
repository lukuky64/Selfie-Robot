// stroke_planner.h

#ifndef STROKE_PLANNER_H
#define STROKE_PLANNER_H

class Stroke_planner {
private:
    int value;

public:
    Stroke_planner(int initialValue); // Constructor
    void setValue(int newValue);
    void displayValue() const;
};

#endif // STROKE_PLANNER_H
