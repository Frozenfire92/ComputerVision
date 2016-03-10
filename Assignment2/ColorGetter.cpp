// http://docs.opencv.org/2.4/doc/tutorials/introduction/linux_gcc_cmake/linux_gcc_cmake.html#linux-gcc-usage
// http://docs.opencv.org/2.4/doc/tutorials/introduction/load_save_image/load_save_image.html#load-save-image
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <sstream>
#include <map>

#include <opencv2/opencv.hpp>
#include <highgui.h>

using namespace std;
using namespace cv;


int main(int argc, char const *argv[]){
    if (argc != 3){
        cout << "Usage: " << argv[0] << " <Image_Path> <outputfile>" << endl;
        return -1;
    }

    string imageName = argv[1];
    string outputFileName = argv[2];

    Mat image;
    image = imread(imageName, 1);

    if (!image.data){
        cout << "No image data" << endl;
        return -1;
    }

    map<string,int> theMap;
    stringstream ss;
    ofstream outfile;
    Vec3b colour;
    for (int y = 0; y < image.rows; ++y)
    {
        for (int x = 0; x < image.cols; ++x)
        {
            colour = image.at<Vec3b>(Point(x,y));
            ss << "#" << hex << setfill('0') << setw(2) << (int)colour[2] << setw(2) << (int)colour[1] << setw(2) << (int)colour[0];
            theMap[ss.str()] += 1;
            ss.str("");
            // cout << "Row: " << y << "\tCol: " << x << endl;
            // cout << "Blue: " << (int)colour[0] << " Green: " << (int)colour[1] << " Red: " << (int)colour[2] << endl;
            // cout << "Hex: #" << hex << (int)colour[2] << (int)colour[1] << (int)colour[0] << dec << endl << endl;
            // outfile << "Row: " << y << "\tCol: " << x << "\t";
            // outfile << "Hex: #" << hex << setfill('0') << setw(2) << (int)colour[2] << setw(2) << (int)colour[1] << setw(2) << (int)colour[0] << dec << "\n";
        }
    }

    outfile.open (outputFileName);
    outfile << "{\n";
    bool first = true;
    for( const auto &entry : theMap ){
        if (first){
            outfile << "  \"" << entry.first << "\" : " << entry.second;
            first = false;
        }
        else {
            outfile << ",\n  \"" << entry.first << "\" : " << entry.second;
        }
    }
    outfile << "\n}";
    outfile.close();

    // waitKey(0);s
    return 0;
}
