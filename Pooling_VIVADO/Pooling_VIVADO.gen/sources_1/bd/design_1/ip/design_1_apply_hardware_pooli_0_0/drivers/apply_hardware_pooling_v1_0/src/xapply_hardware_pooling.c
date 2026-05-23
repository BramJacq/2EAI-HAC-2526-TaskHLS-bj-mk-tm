// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xapply_hardware_pooling.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XApply_hardware_pooling_CfgInitialize(XApply_hardware_pooling *InstancePtr, XApply_hardware_pooling_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_bus_BaseAddress = ConfigPtr->Control_bus_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XApply_hardware_pooling_Start(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL) & 0x80;
    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL, Data | 0x01);
}

u32 XApply_hardware_pooling_IsDone(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XApply_hardware_pooling_IsIdle(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XApply_hardware_pooling_IsReady(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XApply_hardware_pooling_EnableAutoRestart(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL, 0x80);
}

void XApply_hardware_pooling_DisableAutoRestart(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_AP_CTRL, 0);
}

void XApply_hardware_pooling_Set_invoer_pixels(XApply_hardware_pooling *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_INVOER_PIXELS_DATA, (u32)(Data));
    XApply_hardware_pooling_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_INVOER_PIXELS_DATA + 4, (u32)(Data >> 32));
}

u64 XApply_hardware_pooling_Get_invoer_pixels(XApply_hardware_pooling *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_INVOER_PIXELS_DATA);
    Data += (u64)XApply_hardware_pooling_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_INVOER_PIXELS_DATA + 4) << 32;
    return Data;
}

void XApply_hardware_pooling_Set_uitvoer_pixels(XApply_hardware_pooling *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_UITVOER_PIXELS_DATA, (u32)(Data));
    XApply_hardware_pooling_WriteReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_UITVOER_PIXELS_DATA + 4, (u32)(Data >> 32));
}

u64 XApply_hardware_pooling_Get_uitvoer_pixels(XApply_hardware_pooling *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_UITVOER_PIXELS_DATA);
    Data += (u64)XApply_hardware_pooling_ReadReg(InstancePtr->Control_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_ADDR_UITVOER_PIXELS_DATA + 4) << 32;
    return Data;
}

void XApply_hardware_pooling_Set_breedte(XApply_hardware_pooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_BREEDTE_DATA, Data);
}

u32 XApply_hardware_pooling_Get_breedte(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_BREEDTE_DATA);
    return Data;
}

void XApply_hardware_pooling_Set_hoogte(XApply_hardware_pooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_HOOGTE_DATA, Data);
}

u32 XApply_hardware_pooling_Get_hoogte(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_HOOGTE_DATA);
    return Data;
}

void XApply_hardware_pooling_Set_mode(XApply_hardware_pooling *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_MODE_DATA, Data);
}

u32 XApply_hardware_pooling_Get_mode(XApply_hardware_pooling *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_MODE_DATA);
    return Data;
}

void XApply_hardware_pooling_InterruptGlobalEnable(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_GIE, 1);
}

void XApply_hardware_pooling_InterruptGlobalDisable(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_GIE, 0);
}

void XApply_hardware_pooling_InterruptEnable(XApply_hardware_pooling *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER);
    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER, Register | Mask);
}

void XApply_hardware_pooling_InterruptDisable(XApply_hardware_pooling *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER);
    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER, Register & (~Mask));
}

void XApply_hardware_pooling_InterruptClear(XApply_hardware_pooling *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XApply_hardware_pooling_WriteReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_ISR, Mask);
}

u32 XApply_hardware_pooling_InterruptGetEnabled(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_IER);
}

u32 XApply_hardware_pooling_InterruptGetStatus(XApply_hardware_pooling *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XApply_hardware_pooling_ReadReg(InstancePtr->Control_bus_BaseAddress, XAPPLY_HARDWARE_POOLING_CONTROL_BUS_ADDR_ISR);
}

