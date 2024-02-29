// line_detection.h

#include <opencv2/opencv.hpp>

#ifndef LINE_DETECTION_H
#define LINE_DETECTION_H

class Line_detection {
private:
    int value;
    cv::Mat input_image;

public:
    Line_detection(int initialValue); // Constructor
    cv::Mat edgeDetection(cv::Mat input_image);
    void displayValue() const;
    void begin(void);
};

#endif // LINE_DETECTION_H
