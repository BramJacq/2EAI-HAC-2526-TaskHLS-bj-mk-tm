#include <iostream>
#include <cmath>
#include "vitis_convolution.h"

// Haal de globale kernel binnen die in vitis_convolution.cpp is gedefinieerd
extern char kernel[KERNEL_SIZE][KERNEL_SIZE];

int main() {
    // 1. Alloceren van buffers voor de simulatie (128x128 pixels)
    unsigned char *input_img = new unsigned char[IMG_ROWS * IMG_COLS];
    char *output_img = new char[IMG_ROWS * IMG_COLS];
    char *golden_output = new char[IMG_ROWS * IMG_COLS];

    // 2. Genereer een simpel testpatroon (bijvoorbeeld een vertikale streep in het midden)
    for (int r = 0; r < IMG_ROWS; r++) {
        for (int c = 0; c < IMG_COLS; c++) {
            if (c >= 32 && c < 96) {
                input_img[r * IMG_COLS + c] = 255; // Wit vlak
            } else {
                input_img[r * IMG_COLS + c] = 0;   // Zwart vlak
            }
            output_img[r * IMG_COLS + c] = 0;      // Output leegmaken
            golden_output[r * IMG_COLS + c] = 0;  // Golden leegmaken
        }
    }

    // 3. Definieer de HORIZONTALE randdetectie kernel (Rode kernel uit opgave)
    // We vullen direct de globale array
    kernel[0][0] = -1; kernel[0][1] = -1; kernel[0][2] = -1;
    kernel[1][0] =  0; kernel[1][1] =  0; kernel[1][2] =  0;
    kernel[2][0] =  1; kernel[2][1] =  1; kernel[2][2] =  1;

    // 4. Bereken de "Golden Output" op de CPU om de FPGA te kunnen controleren
    for (int r = 1; r < IMG_ROWS - 1; r++) {
        for (int c = 1; c < IMG_COLS - 1; c++) {
            int sum = 0;
            for (int kr = 0; kr < KERNEL_SIZE; kr++) {
                for (int kc = 0; kc < KERNEL_SIZE; kc++) {
                    int pixel = input_img[(r + kr - 1) * IMG_COLS + (c + kc - 1)];
                    sum += pixel * kernel[kr][kc];
                }
            }
            golden_output[r * IMG_COLS + c] = (char)sum;
        }
    }

    std::cout << ">> Start C-Simulatie van de HLS IP-Core..." << std::endl;

    // 5. ROEP DE HLS FUNCTIE AAN (Zonder kernel argument, dit lost de error op!)
    vitis_convolution(input_img, output_img);

    // 6. Controleer of het resultaat van de IP-core matcht met de CPU berekening
    int error_count = 0;
    for (int r = 1; r < IMG_ROWS - 1; r++) {
        for (int c = 1; c < IMG_COLS - 1; c++) {
            if (output_img[r * IMG_COLS + c] != golden_output[r * IMG_COLS + c]) {
                error_count++;
                if (error_count <= 5) { // Toon alleen de eerste 5 fouten
                    std::cout << "Mismatch op pixel [" << r << "][" << c << "]: "
                              << "FPGA = " << (int)output_img[r * IMG_COLS + c] << ", "
                              << "CPU = " << (int)golden_output[r * IMG_COLS + c] << std::endl;
                }
            }
        }
    }

    // Geheugen netjes vrijmaken
    delete[] input_img;
    delete[] output_img;
    delete[] golden_output;

    // 7. Eindbeoordeling van de testbench
    if (error_count == 0) {
        std::cout << ">> C-SIMULATIE SUCCESVOL! Geen fouten gevonden." << std::endl;
        return 0;
    } else {
        std::cout << ">> C-SIMULATIE GEFAALD! Totaal aantal fouten: " << error_count << std::endl;
        return 1;
    }
}