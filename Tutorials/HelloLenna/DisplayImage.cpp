// http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_gcc_cmake/linux_gcc_cmake.html#linux-gcc-usage
// http://docs.opencv.org/2.4/doc/tutorials/introduction/load_save_image/load_save_image.html#load-save-image
#include <stdio.h>
#include <string>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;


int main(int argc, char const *argv[]){
    if (argc != 2){
        cout << "Usage: DisplayImage.o <Image_Path>" << endl;
        return -1;
    }

    string imageName = argv[1];

    Mat image;
    image = imread(imageName, 1);

    if (!image.data){
        cout << "No image data" << endl;
        return -1;
    }

    Mat greyImage;
    cvtColor(image, greyImage, CV_BGR2GRAY);

    imwrite("output/grey.png", greyImage);

    namedWindow(imageName, WINDOW_AUTOSIZE);
    imshow(imageName, image);

    namedWindow("Greyscale", WINDOW_AUTOSIZE);
    imshow("Greyscale", greyImage);

    waitKey(0);
    return 0;
}