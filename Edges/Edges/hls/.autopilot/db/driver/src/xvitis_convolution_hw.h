// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x0 : Control signals
//       bit 0  - ap_start (Read/Write/COH)
//       bit 1  - ap_done (Read/COR)
//       bit 2  - ap_idle (Read)
//       bit 3  - ap_ready (Read/COR)
//       bit 7  - auto_restart (Read/Write)
//       bit 9  - interrupt (Read)
//       others - reserved
// 0x4 : Global Interrupt Enable Register
//       bit 0  - Global Interrupt Enable (Read/Write)
//       others - reserved
// 0x8 : IP Interrupt Enable Register (Read/Write)
//       bit 0 - enable ap_done interrupt (Read/Write)
//       bit 1 - enable ap_ready interrupt (Read/Write)
//       others - reserved
// 0xc : IP Interrupt Status Register (Read/TOW)
//       bit 0 - ap_done (Read/TOW)
//       bit 1 - ap_ready (Read/TOW)
//       others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL 0x0
#define XVITIS_CONVOLUTION_CONTROL_ADDR_GIE     0x4
#define XVITIS_CONVOLUTION_CONTROL_ADDR_IER     0x8
#define XVITIS_CONVOLUTION_CONTROL_ADDR_ISR     0xc

// control_r
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

#define XVITIS_CONVOLUTION_CONTROL_R_ADDR_INPUT_IMG_DATA  0x10
#define XVITIS_CONVOLUTION_CONTROL_R_BITS_INPUT_IMG_DATA  32
#define XVITIS_CONVOLUTION_CONTROL_R_ADDR_OUTPUT_IMG_DATA 0x18
#define XVITIS_CONVOLUTION_CONTROL_R_BITS_OUTPUT_IMG_DATA 32

