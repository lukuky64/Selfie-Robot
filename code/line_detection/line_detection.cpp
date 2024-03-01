// line_detection.cpp
#include "line_detection.h"
#include <iostream>
#include <filesystem>

// Constructor implementation
Line_detection::Line_detection(int initialValue) : value(initialValue)
{
    std::cout << "Line_detection constructor called" << std::endl;
}

void Line_detection::begin()
{
    // account for different image formats

    // find number of files inside data->faces folder
    int num_faces = std::distance(std::filesystem::directory_iterator("../data/faces"), std::filesystem::directory_iterator{});

    std::cout << "choose a value from 0 - " << (num_faces-1) << " to select a face: ";
    std::cin >> value;

    switch (value)
    {
    case 0:
        input_image = cv::imread("../data/faces/elon_portrait.jpg", cv::IMREAD_COLOR);
        break;
    case 1:
        input_image = cv::imread("../data/faces/huberman.jpg", cv::IMREAD_COLOR);
        break;
    case 2:
        input_image = cv::imread("../data/faces/lex.jpg", cv::IMREAD_COLOR);
        break;
    case 3:
        input_image = cv::imread("../data/faces/reeves.jpg", cv::IMREAD_COLOR);
        break;
    case 4:
        input_image = cv::imread("../data/faces/zuck_HD.webp", cv::IMREAD_COLOR);
        break;
    default:
        std::cout << "Invalid input" << std::endl;
        break;
    }

    if (input_image.empty())
    {
        std::cerr << "Could not open or find the image" << std::endl;
        return; // Exit or handle the error appropriately
    }

    // change the dimensions of the iamge
    // cv::resize(input_image, input_image, cv::Size(), 0.5, 0.5, cv::INTER_LINEAR);
    cv::Mat edgeImage = edgeDetection(input_image);

    cv::imshow("Image", edgeImage);
    cv::waitKey(0); // Wait indefinitely for a key press
}

// Method to set the value
cv::Mat Line_detection::edgeDetection(cv::Mat &input_image)
{
    // rescale image and maintain aspect ratio
    int rows = 800;
    int cols = static_cast<int>((static_cast<double>(input_image.cols) / input_image.rows) * rows);

    // Resize the image to the new dimensions
    cv::resize(input_image, input_image, cv::Size(cols, rows), 0, 0, cv::INTER_LINEAR);

    // remove background
    input_image = backgroundSubtraction(input_image);

    // blur image
    int kernal_size = 5;
    cv::Mat image_blurred;
    GaussianBlur(input_image, image_blurred, cv::Size(kernal_size, kernal_size), 0);

    cv::imshow("Image", image_blurred);
    cv::waitKey(0); // Wait indefinitely for a key press

    cv::Mat gray, edge, draw;
    cv::cvtColor(image_blurred, gray, cv::COLOR_BGR2GRAY);

    cv::Canny(gray, edge, 50, 150, 3);
    edge.convertTo(draw, CV_8U);

    return draw;
}

cv::Mat Line_detection::backgroundSubtraction(cv::Mat &input_image)
{
    cv::Mat mask;
    mask.create(input_image.size(), CV_8UC1);
    mask.setTo(cv::GC_BGD); // Background label

    // cv::Rect rectangle(100, 50, input_image.cols-200, input_image.rows-100);
    cv::Rect rectangle = FaceLocationDetection(input_image);

    // Apply GrabCut
    cv::Mat bgdModel, fgdModel;
    cv::grabCut(input_image, mask, rectangle, bgdModel, fgdModel, 5, cv::GC_INIT_WITH_RECT);

    // Modify the mask to create a binary mask of the foreground
    cv::compare(mask, cv::GC_PR_FGD, mask, cv::CMP_EQ);

    // Extract the foreground
    cv::Mat foreground(input_image.size(), CV_8UC3, cv::Scalar(0, 0, 0));
    input_image.copyTo(foreground, mask); // Copies only where mask is non-zero

    // Crop the image to the bounding box of the foreground
    cv::Rect boundedROI = rectangle & cv::Rect(0, 0, foreground.cols, foreground.rows);
    cv::Mat croppedImage = foreground(boundedROI).clone();

    return croppedImage;
}

cv::Rect Line_detection::FaceLocationDetection(cv::Mat &input_image)
{
    // Load the Haar Cascade file for facial detection
    cv::CascadeClassifier faceCascade;
    faceCascade.load("../data/haarcascade_frontalface_default.xml");

    // Check if the Haar Cascade file is loaded
    if (faceCascade.empty())
    {
        std::cout << "Failed to load Haar Cascade file." << std::endl;
        return cv::Rect(); // Return an empty rectangle
    }

    std::vector<cv::Rect> faces;

    // Detect faces
    faceCascade.detectMultiScale(input_image, faces);

    if (faces.size() > 1)
    {
        std::cout << "Multiple faces detected. Returning the first detected face." << std::endl;
    }

    cv::Rect expandedFaceRect = expandRectanglePercentage(input_image, faces[0], 20);

    return expandedFaceRect;
}

cv::Rect Line_detection::expandRectanglePercentage(cv::Mat &input_image, const cv::Rect &originalRect, int percentage)
{
    int expandByX = static_cast<int>(originalRect.width * percentage / 100.0);
    int expandByY = static_cast<int>(originalRect.height * percentage / 100.0);

    cv::Rect expandedRect = originalRect;

    // Adjust the rectangle origin and dimensions
    expandedRect.x -= expandByX;
    expandedRect.y -= expandByY;
    expandedRect.width += 2 * expandByX;
    expandedRect.height += 2 * expandByY;

    // ensure the expanded rectangle is within the image bounds
    expandedRect.x = std::max(expandedRect.x, 0);
    expandedRect.y = std::max(expandedRect.y, 0);
    expandedRect.width = std::min(expandedRect.width, input_image.cols - expandedRect.x);
    expandedRect.height = std::min(expandedRect.height, input_image.rows - expandedRect.y);

    return expandedRect;
}

// Method to display the value
void Line_detection::displayValue() const
{
    std::cout << "Value: " << value << std::endl;
}
