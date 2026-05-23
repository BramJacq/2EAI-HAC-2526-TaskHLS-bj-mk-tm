#include "convolutie_2d.h"

void filter_afbeelding(
    ap_uint<32>* invoer_pixels,
    ap_uint<32>* uitvoer_pixels,
    int breedte,
    int hoogte,
    int kanalen
) {
    #pragma HLS INTERFACE s_axilite port=return bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=breedte bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=hoogte bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=kanalen bundle=vitis_control

    #pragma HLS INTERFACE m_axi port=invoer_pixels  offset=slave bundle=gmem_invoer  depth=65536 max_read_burst_length=64
    #pragma HLS INTERFACE m_axi port=uitvoer_pixels offset=slave bundle=gmem_uitvoer depth=65536 max_write_burst_length=64
    #pragma HLS INTERFACE s_axilite port=invoer_pixels  bundle=vitis_control
    #pragma HLS INTERFACE s_axilite port=uitvoer_pixels bundle=vitis_control

    // Maak 3 lijn-buffers aan om de rijen van de afbeelding lokaal op te slaan in BRAM (max 512 pixels breed)
    ap_uint<32> line_buffer[3][512];
    #pragma HLS ARRAY_PARTITION variable=line_buffer complete dim=1

    // 3x3 schuifvensters voor de kleurcomponenten
    unsigned char win_R[3][3], win_G[3][3], win_B[3][3];
    #pragma HLS ARRAY_PARTITION variable=win_R complete dim=0
    #pragma HLS ARRAY_PARTITION variable=win_G complete dim=0
    #pragma HLS ARRAY_PARTITION variable=win_B complete dim=0

    const int kernel[3][3] = {
        {-1, 0, 1},
        {-1, 0, 1},
        {-1, 0, 1}
    };

    // We lezen de afbeelding in één enkele sequentiële stroom uit (cruciaal voor AXI Bursts!)
    Loop_Rows: for (int y = 0; y < hoogte; y++) {
        Loop_Cols: for (int x = 0; x < breedte; x++) {
            #pragma HLS PIPELINE II=1

            // Schuif de data in de lijn-buffers omhoog
            line_buffer[0][x] = line_buffer[1][x];
            line_buffer[1][x] = line_buffer[2][x];

            // Lees één nieuwe pixel sequentieel in uit het DDR RAM
            ap_uint<32> nieuwe_pixel = invoer_pixels[y * breedte + x];
            line_buffer[2][x] = nieuwe_pixel;

            // Schuif het 3x3 venster horizontaal op
            for (int r = 0; r < 3; r++) {
                win_R[r][0] = win_R[r][1]; win_R[r][1] = win_R[r][2];
                win_G[r][0] = win_G[r][1]; win_G[r][1] = win_G[r][2];
                win_B[r][0] = win_B[r][1]; win_B[r][1] = win_B[r][2];

                // Trek de data uit de lokale lijn-buffers
                ap_uint<32> buf_val = line_buffer[r][x];
                win_R[r][2] = buf_val.range(7, 0);
                win_G[r][2] = buf_val.range(15, 8);
                win_B[r][2] = buf_val.range(23, 16);
            }

            // Pas het filter alleen toe als het venster volledig gevuld is (omzeil de randen)
            if (y >= 2 && x >= 2) {
                int som_R = 0, som_G = 0, som_B = 0;

                for (int kr = 0; kr < 3; kr++) {
                    for (int kc = 0; kc < 3; kc++) {
                        int k_val = kernel[kr][kc];
                        som_R += win_R[kr][kc] * k_val;
                        som_G += win_G[kr][kc] * k_val;
                        som_B += win_B[kr][kc] * k_val;
                    }
                }

                if (som_R > 255) som_R = 255; else if (som_R < 0) som_R = 0;
                if (som_G > 255) som_G = 255; else if (som_G < 0) som_G = 0;
                if (som_B > 255) som_B = 255; else if (som_B < 0) som_B = 0;

                ap_uint<32> uit_pixel = 0;
                uit_pixel.range(7, 0)   = (unsigned char)som_R;
                uit_pixel.range(15, 8)  = (unsigned char)som_G;
                uit_pixel.range(23, 16) = (unsigned char)som_B;
                uit_pixel.range(31, 24) = 255;

                // Schrijf gecentreerd terug naar de uitvoer
                uitvoer_pixels[(y - 1) * breedte + (x - 1)] = uit_pixel;
            }
        }
    }
}