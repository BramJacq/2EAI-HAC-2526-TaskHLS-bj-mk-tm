// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 ~
// 0x1f : Memory 'kernel' (9 * 8b)
//        Word n : bit [ 7: 0] - kernel[4n]
//                 bit [15: 8] - kernel[4n+1]
//                 bit [23:16] - kernel[4n+2]
//                 bit [31:24] - kernel[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL     0x00
#define XVITIS_CONVOLUTION_CONTROL_ADDR_GIE         0x04
#define XVITIS_CONVOLUTION_CONTROL_ADDR_IER         0x08
#define XVITIS_CONVOLUTION_CONTROL_ADDR_ISR         0x0c
#define XVITIS_CONVOLUTION_CONTROL_ADDR_KERNEL_BASE 0x10
#define XVITIS_CONVOLUTION_CONTROL_ADDR_KERNEL_HIGH 0x1f
#define XVITIS_CONVOLUTION_CONTROL_WIDTH_KERNEL     8
#define XVITIS_CONVOLUTION_CONTROL_DEPTH_KERNEL     9

// control_r
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of input_img
//        bit 31~0 - input_img[31:0] (Read/Write)
// 0x14 : Data signal of input_img
//        bit 31~0 - input_img[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of output_img
//        bit 31~0 - output_img[31:0] (Read/Write)
// 0x20 : Data signal of output_img
//        bit 31~0 - output_img[63:32] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVITIS_CONVOLUTION_CONTROL_R_ADDR_INPUT_IMG_DATA  0x10
#define XVITIS_CONVOLUTION_CONTROL_R_BITS_INPUT_IMG_DATA  64
#define XVITIS_CONVOLUTION_CONTROL_R_ADDR_OUTPUT_IMG_DATA 0x1c
#define XVITIS_CONVOLUTION_CONTROL_R_BITS_OUTPUT_IMG_DATA 64

