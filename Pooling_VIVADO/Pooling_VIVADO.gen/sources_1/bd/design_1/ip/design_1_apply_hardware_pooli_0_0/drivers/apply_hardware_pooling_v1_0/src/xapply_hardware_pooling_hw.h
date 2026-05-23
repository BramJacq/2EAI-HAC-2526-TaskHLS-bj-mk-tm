// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
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

#define XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_INVOER_PIXELS_DATA  0x10
#define XAPPLY_HARDWARE_POOLING_CONTROL_BITS_INVOER_PIXELS_DATA  64
#define XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_UITVOER_PIXELS_DATA 0x1c
#define XAPPLY_HARDWARE_POOLING_CONTROL_BITS_UITVOER_PIXELS_DATA 64

// CONTROL_BUS
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
// 0x10 : Data signal of breedte
//        bit 31~0 - breedte[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of hoogte
//        bit 31~0 - hoogte[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of mode
//        bit 31~0 - mode[31:0] (Read/Write)
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL      0x00
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_GIE          0x04
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER          0x08
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_ISR          0x0c
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_BREEDTE_DATA 0x10
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_BITS_BREEDTE_DATA 32
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_HOOGTE_DATA  0x18
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_BITS_HOOGTE_DATA  32
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_MODE_DATA    0x20
#define XAPPLY_HARDWARE_POOLING_CONTROL_BUS_BITS_MODE_DATA    32

