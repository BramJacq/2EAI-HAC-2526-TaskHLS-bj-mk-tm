#ifndef POOLING_H
#define POOLING_H

#include <ap_int.h>

#define MAX_WIDTH 256

// Prototype van de top-level functie voor C-synthesis
void apply_hardware_pooling(
    ap_uint<32>* invoer_pixels,
    ap_uint<32>* uitvoer_pixels,
    int breedte,
    int hoogte,
    int mode // 0 = Max, 1 = Average, 2 = Min
);

#endif // POOLING_H