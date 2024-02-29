// line_detection.cpp
#include "line_detection.h"
#include <iostream>

// Constructor implementation
Line_detection::Line_detection(int initialValue) : value(initialValue)
{
    std::cout << "Line_detection constructor called" << std::endl;
}

void Line_detection::begin()
{
    // account for different image formats
    input_image = cv::imread("../data/test_image.jpg", cv::IMREAD_COLOR);

    if (input_image.empty())
    {
        std::cerr << "Could not open or find the image" << std::endl;
        return; // Exit or handle the error appropriately
    }

    // change the dimensions of the iamge
    cv::resize(input_image, input_image, cv::Size(), 0.5, 0.5, cv::INTER_LINEAR);
    cv::Mat edgeImage = edgeDetection(input_image);
}

// Method to set the value
cv::Mat Line_detection::edgeDetection(cv::Mat input_image)
{
    // remove background

    while (true)
    {
        int x;
        while (true)
        {
            std::cout << "Select kernal dimention: ";
            std::cin >> x;

            if (x % 2 == 0)
            {
                std::cout << "Kernal dimention must be odd" << std::endl;
            }
            else
            {
                break;
            }
        }

        // blur image
        cv::Mat image_blurred_with_5x5_kernel;
        GaussianBlur(input_image, image_blurred_with_5x5_kernel, cv::Size(3, 3), 0);

        cv::Mat gray, edge, draw;
        cv::cvtColor(image_blurred_with_5x5_kernel, gray, cv::COLOR_BGR2GRAY);

        cv::Canny(gray, edge, 50, 150, 3);
        edge.convertTo(draw, CV_8U);
        
        cv::imshow("Image", draw);
        cv::waitKey(0); // Wait indefinitely for a key press

        //return draw;
    }
}

// Method to display the value
void Line_detection::displayValue() const
{
    std::cout << "Value: " << value << std::endl;
}
