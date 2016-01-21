//http://docs.opencv.org/2.4/doc/tutorials/core/mat-mask-operations/mat-mask-operations.html#maskoperationsfilter
#include <stdio.h>
#include <string>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;

// The tutorial shows how to manually do this, we later use filter2D
void Sharpen(const Mat& inputImage, Mat& result){
    CV_Assert(inputImage.depth() == CV_8U);  // accept only uchar images

    // Create an output image the same size and type as input, save the number of channels
    result.create(inputImage.size(), inputImage.type());
    const int nChannels = inputImage.channels();

    // For each row in image
    for (int j = 1; j < inputImage.rows - 1; j++){
        // Get pointers to the previous, current and next row of pixels
        const uchar* previous = inputImage.ptr<uchar>(j - 1);
        const uchar* current  = inputImage.ptr<uchar>(j    );
        const uchar* next     = inputImage.ptr<uchar>(j + 1);
        // Get a pointer to the output row
        uchar* output = result.ptr<uchar>(j);
        // For each column in image
        for (int i = nChannels; i < nChannels * (inputImage.cols - 1); i++){
            // Saturate? then increase output column
            *output++ = saturate_cast<uchar>(5 * current[i] - current[i - nChannels] - current[i + nChannels] - previous[i] - next[i]);
        }
    }
    // Zero out the borders and out of range pixels
    result.row(0).setTo(Scalar(0));
    result.row(result.rows - 1).setTo(Scalar(0));
    result.col(0).setTo(Scalar(0));
    result.col(result.cols - 1).setTo(Scalar(0));
}

int main(int argc, char const *argv[]){
    if (argc != 2){
        cout << "Usage: Filter.o <Image_Path>" << endl;
        return -1;
    }

    string imageName = argv[1];

    Mat image;
    image = imread(imageName, 1);

    if (!image.data){
        cout << "No image data" << endl;
        return -1;
    }

    namedWindow(imageName, WINDOW_AUTOSIZE);
    imshow(imageName, image);

    // Manually Sharpened
    Mat sharpenedImage;
    Sharpen(image, sharpenedImage);

    namedWindow("Sharpened", WINDOW_AUTOSIZE);
    imshow("Sharpened", sharpenedImage);

    // Sharpened
    Mat kernel = (Mat_<char>(3,3) <<  0, -1,  0,
                                     -1,  5, -1,
                                      0, -1,  0 );
    Mat sharpenedByKernel;
    filter2D(image, sharpenedByKernel, image.depth(), kernel);

    namedWindow("Sharpened by filter2D", WINDOW_AUTOSIZE);
    imshow("Sharpened by filter2D", sharpenedByKernel);

    // Averaged
    kernel = (Mat_<float>(3,3) <<  1, 1, 1,
                                   1, 1, 1,
                                   1, 1, 1 ) / 9.0;

    Mat average;
    filter2D(image, average, image.depth(), kernel);

    namedWindow("Average", WINDOW_AUTOSIZE);
    imshow("Average", average);

    // Weighted Average
    kernel = (Mat_<float>(3,3) <<  1, 2, 1,
                                   2, 4, 2,
                                   1, 2, 1 ) / 16.0;

    Mat weightedAverage;
    filter2D(image, weightedAverage, image.depth(), kernel);

    namedWindow("Weighted Average", WINDOW_AUTOSIZE);
    imshow("Weighted Average", weightedAverage);

    // Laplacian no diagonal
    kernel = (Mat_<float>(3,3) <<  0,  1, 0,
                                   1, -4, 1,
                                   0,  1, 0 );

    Mat laplacianNoD;
    filter2D(image, laplacianNoD, image.depth(), kernel);

    namedWindow("Laplacian no Diagonal", WINDOW_AUTOSIZE);
    imshow("Laplacian no Diagonal", laplacianNoD);

    // Laplacian with diagonal
    kernel = (Mat_<float>(3,3) <<  1,  1, 1,
                                   1, -8, 1,
                                   1,  1, 1 );

    Mat laplacianWithD;
    filter2D(image, laplacianWithD, image.depth(), kernel);

    namedWindow("Laplacian with Diagonal", WINDOW_AUTOSIZE);
    imshow("Laplacian with Diagonal", laplacianWithD);

    waitKey(0);
    return 0;
}