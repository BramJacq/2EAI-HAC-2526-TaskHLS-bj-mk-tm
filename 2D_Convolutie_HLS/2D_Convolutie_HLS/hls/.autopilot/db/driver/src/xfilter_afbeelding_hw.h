// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// vitis_control
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
// 0x28 : Data signal of breedte
//        bit 31~0 - breedte[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of hoogte
//        bit 31~0 - hoogte[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of kanalen
//        bit 31~0 - kanalen[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL             0x00
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_GIE                 0x04
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER                 0x08
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_ISR                 0x0c
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_INVOER_PIXELS_DATA  0x10
#define XFILTER_AFBEELDING_VITIS_CONTROL_BITS_INVOER_PIXELS_DATA  64
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_UITVOER_PIXELS_DATA 0x1c
#define XFILTER_AFBEELDING_VITIS_CONTROL_BITS_UITVOER_PIXELS_DATA 64
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_BREEDTE_DATA        0x28
#define XFILTER_AFBEELDING_VITIS_CONTROL_BITS_BREEDTE_DATA        32
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_HOOGTE_DATA         0x30
#define XFILTER_AFBEELDING_VITIS_CONTROL_BITS_HOOGTE_DATA         32
#define XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_KANALEN_DATA        0x38
#define XFILTER_AFBEELDING_VITIS_CONTROL_BITS_KANALEN_DATA        32

