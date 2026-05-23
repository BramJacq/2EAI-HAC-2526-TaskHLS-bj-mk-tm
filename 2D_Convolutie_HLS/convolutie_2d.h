#ifndef CONVOLUTIE_2D_H
#define CONVOLUTIE_2D_H

#include <ap_int.h> // <--- Gefixt: '#' toegevoegd

// Maximale ondersteunde dimensies voor interne lijn- of vensterbuffers indien nodig
#define MAX_WIDTH 1920

// Hardware IP-core top-level functie
void filter_afbeelding(
    unsigned char* invoer_pixels,
    unsigned char* uitvoer_pixels,
    int breedte,
    int hoogte,
    int kanalen
);

#endif // CONVOLUTIE_2D_H