// line_detection.h

#ifndef LINE_DETECTION_H
#define LINE_DETECTION_H

class Line_detection {
private:
    int value;

public:
    Line_detection(int initialValue); // Constructor
    void setValue(int newValue);
    void displayValue() const;
};

#endif // LINE_DETECTION_H
