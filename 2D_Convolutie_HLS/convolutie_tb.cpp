#include <iostream>
#include <vector>
#include "convolutie_2d.h" // <--- Gefixt: Verwijst nu naar .h in plaats van .hpp

int main() {
    const int t_breedte = 128;
    const int t_hoogte  = 128;
    const int t_kanalen = 3;
    const int totale_omvang = t_breedte * t_hoogte * t_kanalen;

    std::vector<unsigned char> simulatie_invoer(totale_omvang);
    std::vector<unsigned char> simulatie_uitvoer(totale_omvang, 0);

    // Vul de invoermatrix met een herhalend testpatroon
    for (int i = 0; i < totale_omvang; i++) {
        simulatie_invoer[i] = static_cast<unsigned char>((i % 16) * 15);
    }

    std::cout << "--- Start HLS C-Simulatie voor 2D Convolutie (C++) ---" << std::endl;
    
    // Roep de top-level hardware functie aan
    filter_afbeelding(
        simulatie_invoer.data(), 
        simulatie_uitvoer.data(), 
        t_breedte, 
        t_hoogte, 
        t_kanalen
    );

    std::cout << "-> C-Simulatie succesvol afgerond! Output gegenereerd." << std::endl;
    return 0;
}