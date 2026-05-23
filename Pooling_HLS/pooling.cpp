#include "pooling.h"

void apply_hardware_pooling(
    ap_uint<32>* invoer_pixels,
    ap_uint<32>* uitvoer_pixels,
    int breedte,
    int hoogte,
    int mode
) {
    // Interfaces configureren conform de leerkracht-methode (Lab 2)
    #pragma HLS INTERFACE m_axi port=invoer_pixels  offset=slave bundle=gmem_in
    #pragma HLS INTERFACE m_axi port=uitvoer_pixels offset=slave bundle=gmem_out
    #pragma HLS INTERFACE s_axilite port=breedte bundle=CONTROL_BUS
    #pragma HLS INTERFACE s_axilite port=hoogte  bundle=CONTROL_BUS
    #pragma HLS INTERFACE s_axilite port=mode    bundle=CONTROL_BUS
    #pragma HLS INTERFACE s_axilite port=return  bundle=CONTROL_BUS

    // Lokale lijn-buffer om de data van 2 rijen dicht bij de rekenkern te houden
    ap_uint<32> rij_buffer_0[MAX_WIDTH];
    ap_uint<32> rij_buffer_1[MAX_WIDTH];

    int output_y = 0;

    // We lopen per 2 rijen door de afbeelding (2x2 pooling)
    Loop_Y: for (int y = 0; y < hoogte; y += 2) {
        
        // Stap A: Burst-read de twee rijen sequentieel naar BRAM cache
        Read_Rij0: for(int x = 0; x < breedte; x++) {
            #pragma HLS PIPELINE II=1
            rij_buffer_0[x] = invoer_pixels[y * breedte + x];
        }
        Read_Rij1: for(int x = 0; x < breedte; x++) {
            #pragma HLS PIPELINE II=1
            rij_buffer_1[x] = invoer_pixels[(y + 1) * breedte + x];
        }

        int output_x = 0;

        // Stap B: Bereken pooling over 2x2 blokken (kolomstappen van 2)
        Pool_X: for (int x = 0; x < breedte; x += 2) {
            #pragma HLS PIPELINE II=1

            // Haal de 4 verpakte 32-bit pixels op uit onze lokale BRAM
            ap_uint<32> p00 = rij_buffer_0[x];
            ap_uint<32> p01 = rij_buffer_0[x+1];
            ap_uint<32> p10 = rij_buffer_1[x];
            ap_uint<32> p11 = rij_buffer_1[x+1];

            ap_uint<32> res_pixel = 0;

            // Loop over de 3 kleurkanalen (R, G, B) afzonderlijk
            for (int c = 0; c < 3; c++) {
                #pragma HLS UNROLL // Optimalisatie uit Lab 3: unroll de kanaallus volledig

                int shift = c * 8;
                unsigned char val00 = (p00 >> shift) & 0xFF;
                unsigned char val01 = (p01 >> shift) & 0xFF;
                unsigned char val10 = (p10 >> shift) & 0xFF;
                unsigned char val11 = (p11 >> shift) & 0xFF;

                unsigned char final_val = 0;

                // Mode selectie logica
                if (mode == 0) { // MAX POOLING
                    unsigned char max1 = (val00 > val01) ? val00 : val01;
                    unsigned char max2 = (val10 > val11) ? val10 : val11;
                    final_val = (max1 > max2) ? max1 : max2;
                } 
                else if (mode == 1) { // AVERAGE POOLING
                    final_val = (val00 + val01 + val10 + val11) / 4;
                } 
                else { // MIN POOLING
                    unsigned char min1 = (val00 < val01) ? val00 : val01;
                    unsigned char min2 = (val10 < val11) ? val10 : val11;
                    final_val = (min1 < min2) ? min1 : min2;
                }

                // Stop de berekende byte terug op de juiste plek
                res_pixel |= ((ap_uint<32>)final_val) << shift;
            }
            // Behoud alpha kanaal (volledig dekkend)
            res_pixel |= (0xFF000000);

            // Schrijf het resultaat naar de gehalveerde output-afbeelding
            int out_breedte = breedte / 2;
            uitvoer_pixels[output_y * out_breedte + output_x] = res_pixel;
            output_x++;
        }
        output_y++;
    }
}