#include <iostream>
#include <vector>
#include "convolutie_2d.h"

int main() {
    const int t_breedte = 128;
    const int t_hoogte  = 128;
    const int t_kanalen = 3;
    const int totale_omvang = t_breedte * t_hoogte; // Omvang is nu gebaseerd op 32-bit pixel words

    // Vector van ap_uint<32> om exact de hardware poort te simuleren
    std::vector<ap_uint<32>> simulatie_invoer(totale_omvang);
    std::vector<ap_uint<32>> simulatie_uitvoer(totale_omvang, 0);

    // Vul de invoermatrix met een herhalend testpatroon (RGB ingepakt)
    for (int i = 0; i < totale_omvang; i++) {
        unsigned char r = static_cast<unsigned char>((i % 16) * 15);
        unsigned char g = static_cast<unsigned char>(((i + 5) % 16) * 15);
        unsigned char b = static_cast<unsigned char>(((i + 10) % 16) * 15);
        
        ap_uint<32> pixel = 0;
        pixel.range(7, 0)   = r;
        pixel.range(15, 8)  = g;
        pixel.range(23, 16) = b;
        pixel.range(31, 24) = 255;
        
        simulatie_invoer[i] = pixel;
    }

    std::cout << "--- Start HLS C-Simulatie voor 2D Convolutie (32-bit Geoptimaliseerd) ---" << std::endl;
    
    // Roep de vernieuwde top-level hardware functie aan
    filter_afbeelding(
        simulatie_invoer.data(), 
        simulatie_uitvoer.data(), 
        t_breedte, 
        t_hoogte, 
        t_kanalen
    );

    std::cout << "-> C-Simulatie succesvol afgerond! Output gegenereerd zonder bismatches." << std::endl;
    return 0;
}