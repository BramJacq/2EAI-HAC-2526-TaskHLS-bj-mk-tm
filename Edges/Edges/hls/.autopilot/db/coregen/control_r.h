// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_img
//        bit 31~0 - input_img[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of output_img
//        bit 31~0 - output_img[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_R_ADDR_INPUT_IMG_DATA  0x10
#define CONTROL_R_BITS_INPUT_IMG_DATA  32
#define CONTROL_R_ADDR_OUTPUT_IMG_DATA 0x18
#define CONTROL_R_BITS_OUTPUT_IMG_DATA 32
