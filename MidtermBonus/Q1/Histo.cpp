#include <stdio.h>
#include <string>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;

int histSize = 256;

void showAndWriteHistogram(Mat& image, string name, string outputPath){
    float range[] = { 0, 256 };
    const float *ranges[] = { range };

    // Calculate histogram
    MatND hist;
    calcHist(&image, 1, 0, Mat(), hist, 1, &histSize, ranges, true, false);

    // Show histo in terminal
    cout << endl;
    for (int i=0; i<histSize; i++){
        float binVal = hist.at<float>(i);
        cout << " " << binVal;
    }
    cout << endl;

    // Plot histo
    int hist_w = 256;
    int hist_h = 256;
    int bin_w = cvRound((double)hist_w/histSize);
    Mat histImage(hist_h, hist_w, CV_8UC1, Scalar(0,0,0));
    normalize(hist, hist, 0, histImage.rows, NORM_MINMAX, -1, Mat());

    for (int i=1; i<histSize; i++){
        line(histImage,
             Point(bin_w*(i-1), hist_h - cvRound(hist.at<float>(i-1))),
             Point(bin_w*(i), hist_h - cvRound(hist.at<float>(i))),
             Scalar(255, 0, 0), 2, 8, 0);
    }

    namedWindow(name, 1);
    imshow(name, histImage);
    imwrite(outputPath, histImage);

}

int main(int argc, char const *argv[]){
    if (argc != 5){
        cout << "Usage: " << argv[0] << " <Input_Image_Path> <Output_Average> <Output_Original_Histo> <Output_Average_Histo>" << endl;
        return -1;
    }

    // Load & display original image
    string imageName = argv[1];
    string outputAveragePath = argv[2];
    string outputOriginalHistoPath = argv[3];
    string outputAverageHistoPath = argv[4];

    Mat image = imread(imageName, 0);

    if (!image.data){
        cout << "No image data" << endl;
        return -1;
    }

    showAndWriteHistogram(image, "Orginal", outputOriginalHistoPath);

    // Define an output image and our kernel for the following spatial filtering
    Mat output;
    Mat kernel = (Mat_<float>(3,3) <<  1, 1, 1,
                                       1, 1, 1,
                                       1, 1, 1 ) / 9.0;

    filter2D(image, output, image.depth(), kernel);
    imwrite(outputAveragePath, output);
    showAndWriteHistogram(output, "Averaged", outputAverageHistoPath);

    waitKey(0);
    return 0;
}