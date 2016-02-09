#include <stdio.h>
#include <string>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;

int main(int argc, char const *argv[]){
    // Ensure we have the proper arguments
        if (argc != 8){
            cout << "Usage: Hybridize.o <LPF_Image_Path> <HPF_Image_Path> pyramidDepth cutOff ksize sigma outputName" << endl;
            return -1;
        }
        string LPFImageName = argv[1];
        string HPFImageName = argv[2];
        int pyramidDepth = atoi(argv[3]);
        int cutOff = atoi(argv[4]);
        int ksize = atoi(argv[5]);
        double sigma = atof(argv[6]);
        string outputName = argv[7];

    // Load Images
        Mat LPFImage;
        LPFImage = imread(LPFImageName, 1);

        if (!LPFImage.data){
            cout << "No LPF image data" << endl;
            return -1;
        }

        Mat HPFImage;
        HPFImage = imread(HPFImageName, 1);

        if (!HPFImage.data){
            cout << "No LPF image data" << endl;
            return -1;
        }

    // Create pyramids
        Mat gaussFilter = getGaussianKernel(ksize, -1);
        // LPF image
            Mat LPFGaussians [pyramidDepth];
            Mat LPFLaplacians [pyramidDepth];

            filter2D(LPFImage, LPFGaussians[0], LPFImage.depth(), gaussFilter);
            LPFLaplacians[0] = LPFImage - LPFGaussians[0];
            for (int i = 1; i < pyramidDepth; ++i){
                filter2D(LPFGaussians[i-1], LPFGaussians[i], LPFGaussians[i-1].depth(), gaussFilter);
                LPFLaplacians[i] = LPFImage - LPFGaussians[i];
            }

        // HPF image
            Mat HPFGaussians [pyramidDepth];
            Mat HPFLaplacians [pyramidDepth];

            filter2D(HPFImage, HPFGaussians[0], HPFImage.depth(), gaussFilter);
            HPFLaplacians[0] = HPFImage - HPFGaussians[0];
            for (int i = 1; i < pyramidDepth; ++i){
                filter2D(HPFGaussians[i-1], HPFGaussians[i], HPFGaussians[i-1].depth(), gaussFilter);
                HPFLaplacians[i] = HPFImage - HPFGaussians[i];
            }

    // Show pyramids
        // for (int i = 0; i < pyramidDepth; ++i) {
            // namedWindow("LPF Gauss"+to_string(i), WINDOW_AUTOSIZE);
            // imshow("LPF Gauss"+to_string(i), LPFGaussians[i]);

            // namedWindow("LPF Lap["+to_string(i)+"]", WINDOW_AUTOSIZE);
            // imshow("LPF Lap["+to_string(i)+"]", LPFLaplacians[i]);


            // namedWindow("HPF Gauss["+to_string(i)+"]", WINDOW_AUTOSIZE);
            // imshow("HPF Gauss["+to_string(i)+"]", HPFGaussians[i]);

            // namedWindow("HPF Lap["+to_string(i)+"]", WINDOW_AUTOSIZE);
            // imshow("HPF Lap["+to_string(i)+"]", HPFLaplacians[i]);

            // Output to images for verification
            // string outD = "output/LPFG"+to_string(i)+".png";
            // imwrite(outD, LPFGaussians[i]);

            // outD = "output/LPFL"+to_string(i)+".png";
            // imwrite(outD, LPFLaplacians[i]);
        // }

    // Combine for the result
        // Add the last level of Gaussian pyramid (blurriest with low frequency) of I1 with
        // the first cutoff levels of the Laplacian pyramid for I2
        Mat output = LPFGaussians[pyramidDepth-1];
        int iterTo = pyramidDepth - 1 - cutOff;
        for (int i = 0; i <= iterTo; ++i){
            add(output, HPFLaplacians[i], output);
        }

    // Write Image
        string outputDirectory = "output/"+outputName+"_"+to_string(pyramidDepth)+"_"+to_string(cutOff)+"_"+to_string(ksize)+"+"+to_string(sigma).substr(0,4)+".png";
        imwrite(outputDirectory, output);

    return 0;
}