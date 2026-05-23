#include "convolutie_2d.h"

void filter_afbeelding(
    unsigned char* invoer_pixels,
    unsigned char* uitvoer_pixels,
    int breedte,
    int hoogte,
    int kanalen
) {
    // AXI Lite Slave interface voor de besturing en parameters
    #pragma HLS INTERFACE s_axilite port=return bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=breedte bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=hoogte bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=kanalen bundle=vitis_control

    // Master AXI poorten met expliciete offsets en diepte-indicatie voor stabiele geheugenoverdracht
    #pragma HLS INTERFACE m_axi port=invoer_pixels  offset=slave bundle=gmem_invoer  depth=65536
    #pragma HLS INTERFACE m_axi port=uitvoer_pixels offset=slave bundle=gmem_uitvoer depth=65536
    #pragma HLS INTERFACE s_axilite port=invoer_pixels  bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=uitvoer_pixels bundle=vitis_control

    // Onze 2D-convolutie kernel matrix (Scherp- of randscherpteprofiel)
    const float filter_kernel[3][3] = {
        {-1.0f, 0.0f, 1.0f},
        {-1.0f, 0.0f, 1.0f},
        {-1.0f, 0.0f, 1.0f}
    };

    // Doorloop alle pixels van de afbeelding (kanalen-bewust)
    Lus_Y: for (int y = 0; y < hoogte; y++) {
        Lus_X: for (int x = 0; x < breedte; x++) {
            #pragma HLS PIPELINE II=2
            
            float kleur_som[3] = {0.0f, 0.0f, 0.0f};

            // Convolutie venster (3x3) over de kleurkanalen
            Venster_Y: for (int ky = -1; ky <= 1; ky++) {
                Venster_X: for (int kx = -1; kx <= 1; kx++) {
                    int pixel_x = x + kx;
                    int pixel_y = y + ky;

                    // Randafhandeling (clamping / zero-padding controle)
                    if (pixel_x >= 0 && pixel_x < breedte && pixel_y >= 0 && pixel_y < hoogte) {
                        int basis_index = (pixel_y * breedte + pixel_x) * kanalen;
                        
                        // Bereken de convolutie enkel voor de eerste 3 kanalen (RGB)
                        Kanalen_Berekening: for (int ch = 0; ch < 3; ch++) {
                            if (ch < kanalen) {
                                float pixel_waarde = static_cast<float>(invoer_pixels[basis_index + ch]);
                                kleur_som[ch] += filter_kernel[ky + 1][kx + 1] * pixel_waarde;
                            }
                        }
                    }
                }
            }

            // Schrijf de berekende pixelwaarden terug naar de uitgangsmatrix
            int doel_index = (y * breedte + x) * kanalen;
            Kanalen_Wegschrijven: for (int ch = 0; ch < kanalen; ch++) {
                if (ch < 3) {
                    int afgeronde_waarde = static_cast<int>(kleur_som[ch]);
                    
                    // Saturation / Clipping logic tegen overflow
                    if (afgeronde_waarde > 255) afgeronde_waarde = 255;
                    if (afgeronde_waarde < 0)   afgeronde_waarde = 0;
                    
                    uitvoer_pixels[doel_index + ch] = static_cast<unsigned char>(afgeronde_waarde);
                } else {
                    // Behoud het Alpha (transparantie) kanaal indien aanwezig
                    uitvoer_pixels[doel_index + ch] = invoer_pixels[doel_index + ch];
                }
            }
        }
    }
}