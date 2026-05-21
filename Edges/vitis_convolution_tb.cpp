#include <iostream>
#include "vitis_convolution.h"

using namespace std;

int main() {
    unsigned char test_input[IMG_ROWS * IMG_COLS] = {0};
    char test_output[IMG_ROWS * IMG_COLS] = {0};

    // Genereer een horizontale overgang (bovenkant zwart=0, onderkant wit=255)
    for(int r = 0; r < IMG_ROWS; r++) {
        for(int c = 0; c < IMG_COLS; c++) {
            if(r >= 64) {
                test_input[r * IMG_COLS + c] = 255; 
            } else {
                test_input[r * IMG_COLS + c] = 0;
            }
        }
    }

    // De HORIZONTALE randdetectie kernel (Rode matrix uit de opgave)
    char horizontal_kernel[3][3] = {
        {-1, -1, -1},
        { 0,  0,  0},
        { 1,  1,  1}
    };

    cout << "--- Start C-Simulatie voor Edges (Horizontaal) ---" << endl;
    vitis_convolution(test_input, test_output, horizontal_kernel);
    cout << "C-Simulatie succesvol afgerond!" << endl;

    // Output controle in de console
    // Rond rij 64 (de overgang) moet de convolutie een hoge waarde opleveren!
    cout << "Output op de horizontale rand (rij 64, kol 50): " << (int)test_output[64 * IMG_COLS + 50] << " (Verwacht: Hoge waarde)" << endl;
    cout << "Output ver van de rand (rij 10, kol 50): " << (int)test_output[10 * IMG_COLS + 50] << " (Verwacht: 0)" << endl;

    return 0;
}