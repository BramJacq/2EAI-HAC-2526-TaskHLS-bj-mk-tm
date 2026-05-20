#include <iostream>
#include "vitis_convolution.h"

using namespace std;

int main() {
    unsigned char test_input[IMG_ROWS * IMG_COLS];
    char test_output[IMG_ROWS * IMG_COLS] = {0};

    for(int i = 0; i < IMG_ROWS * IMG_COLS; i++) {
        test_input[i] = (i % 10) * 5;
    }

    char my_kernel[3][3] = {
        {-1, 0, 1},
        {-1, 0, 1},
        {-1, 0, 1}
    };

    cout << "--- Start C-Simulatie voor 2D Convolutie ---" << endl;
    vitis_convolution(test_input, test_output, my_kernel);
    cout << "C-Simulatie succesvol afgerond!" << endl;
    return 0;
}