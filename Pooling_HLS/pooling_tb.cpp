#include <iostream>
#include <vector>
#include "pooling.h"

int main() {
    const int w = 4;
    const int h = 4;
    
    // Testmatrix (4x4 pixels) gevuld met dummy data
    ap_uint<32> in_mat[16] = {
        0xFF00000C, 0xFF000014, 0xFF00001E, 0xFF000000, // Rij 0 (Rood kanaal: 12, 20, 30, 0)
        0xFF000008, 0xFF00000C, 0xFF000002, 0xFF000000, // Rij 1 (Rood kanaal: 8,  12, 2,  0)
        0xFF000022, 0xFF000046, 0xFF000025, 0xFF000004, // Rij 2 (Rood kanaal: 34, 70, 37, 4)
        0xFF000070, 0xFF000064, 0xFF000019, 0xFF00000C  // Rij 3 (Rood kanaal: 112,100,25, 12)
    };
    
    ap_uint<32> out_mat[4] = {0};

    std::cout << "--- Start HLS Pooling Testbench ---" << std::endl;
    
    // Test Max Pooling (mode = 0)
    apply_hardware_pooling(in_mat, out_mat, w, h, 0);
    
    std::cout << "Top-Left Max: " << (out_mat[0] & 0xFF) << " (Verwacht: 20)" << std::endl;
    std::cout << "Top-Right Max: " << (out_mat[1] & 0xFF) << " (Verwacht: 30)" << std::endl;
    std::cout << "Bottom-Left Max: " << (out_mat[2] & 0xFF) << " (Verwacht: 112)" << std::endl;
    std::cout << "Bottom-Right Max: " << (out_mat[3] & 0xFF) << " (Verwacht: 37)" << std::endl;

    return 0;
}