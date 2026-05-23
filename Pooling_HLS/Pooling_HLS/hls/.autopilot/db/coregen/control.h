// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of invoer_pixels
//        bit 31~0 - invoer_pixels[31:0] (Read/Write)
// 0x14 : Data signal of invoer_pixels
//        bit 31~0 - invoer_pixels[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of uitvoer_pixels
//        bit 31~0 - uitvoer_pixels[31:0] (Read/Write)
// 0x20 : Data signal of uitvoer_pixels
//        bit 31~0 - uitvoer_pixels[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_INVOER_PIXELS_DATA  0x10
#define CONTROL_BITS_INVOER_PIXELS_DATA  64
#define CONTROL_ADDR_UITVOER_PIXELS_DATA 0x1c
#define CONTROL_BITS_UITVOER_PIXELS_DATA 64
