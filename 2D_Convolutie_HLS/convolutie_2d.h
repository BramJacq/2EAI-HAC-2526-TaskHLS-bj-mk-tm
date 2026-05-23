#ifndef CONVOLUTIE_2D_H
#define CONVOLUTIE_2D_H

#include <ap_int.h>

// Hardware IP-core top-level functie met ap_uint<32> voor stabiele 32-bit AXI transfers
void filter_afbeelding(
    ap_uint<32>* invoer_pixels,
    ap_uint<32>* uitvoer_pixels,
    int breedte,
    int hoogte,
    int kanalen
);

#endif // CONVOLUTIE_2D_H