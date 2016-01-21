//http://docs.opencv.org/2.4/doc/tutorials/core/mat-mask-operations/mat-mask-operations.html#maskoperationsfilter
#include <stdio.h>
#include <string>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;

// The tutorial shows how to manually do this, we later use filter2D
void sharpen(const Mat& inputImage, Mat& result){
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
        cout << "Usage: " << argv[0] << " <Image_Path>" << endl;
        return -1;
    }

    // Load & display original image
    string imageName = argv[1];

    Mat image = imread(imageName, 1);

    if (!image.data){
        cout << "No image data" << endl;
        return -1;
    }

    namedWindow(imageName, WINDOW_AUTOSIZE);
    imshow(imageName, image);


    // Define an output image and our kernel for the following spatial filtering
    Mat output;
    Mat kernel;


    // Manually Sharpened
    // Mat output;
    // sharpen(image, output);
    // namedWindow("Sharpened manually", WINDOW_AUTOSIZE);
    // imshow("Sharpened manually", output);


    // Sharpened
    kernel = (Mat_<char>(3,3) <<  0, -1,  0,
                                 -1,  5, -1,
                                  0, -1,  0 );
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Sharpened", WINDOW_AUTOSIZE);
    imshow("Sharpened", output);


    // Averaged
    kernel = (Mat_<float>(3,3) <<  1, 1, 1,
                                   1, 1, 1,
                                   1, 1, 1 ) / 9.0;
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Average", WINDOW_AUTOSIZE);
    imshow("Average", output);


    // Weighted Average
    kernel = (Mat_<float>(3,3) <<  1, 2, 1,
                                   2, 4, 2,
                                   1, 2, 1 ) / 16.0;
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Weighted Average", WINDOW_AUTOSIZE);
    imshow("Weighted Average", output);


    // Laplacian no diagonal
    kernel = (Mat_<float>(3,3) <<  0,  1, 0,
                                   1, -4, 1,
                                   0,  1, 0 );
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Laplacian no Diagonal", WINDOW_AUTOSIZE);
    imshow("Laplacian no Diagonal", output);


    // Laplacian with diagonal
    kernel = (Mat_<float>(3,3) <<  1,  1, 1,
                                   1, -8, 1,
                                   1,  1, 1 );
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Laplacian with Diagonal", WINDOW_AUTOSIZE);
    imshow("Laplacian with Diagonal", output);


    // Sobol x no div
    kernel = (Mat_<float>(3,3) << -1, 0, 1,
                                  -2, 0, 2,
                                  -1, 0, 1 );
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Sobol x", WINDOW_AUTOSIZE);
    imshow("Sobol x", output);


    // Sobol x with div
    kernel = (Mat_<float>(3,3) << -1, 0, 1,
                                  -2, 0, 2,
                                  -1, 0, 1 ) / 8.0;
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Sobol x with div", WINDOW_AUTOSIZE);
    imshow("Sobol x with div", output);


    // Sobol y no div
    kernel = (Mat_<float>(3,3) <<  1,  2,  1,
                                   0,  0,  0,
                                  -1, -2, -1 );
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Sobol y", WINDOW_AUTOSIZE);
    imshow("Sobol y", output);


    // Sobol x with div
    kernel = (Mat_<float>(3,3) <<  1,  2,  1,
                                   0,  0,  0,
                                  -1, -2, -1 ) / 8.0;
    filter2D(image, output, image.depth(), kernel);
    namedWindow("Sobol y with div", WINDOW_AUTOSIZE);
    imshow("Sobol y with div", output);

    waitKey(0);
    return 0;
}