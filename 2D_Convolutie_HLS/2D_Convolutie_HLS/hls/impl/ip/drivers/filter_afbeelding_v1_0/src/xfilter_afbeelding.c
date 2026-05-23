// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfilter_afbeelding.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFilter_afbeelding_CfgInitialize(XFilter_afbeelding *InstancePtr, XFilter_afbeelding_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Vitis_control_BaseAddress = ConfigPtr->Vitis_control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFilter_afbeelding_Start(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFilter_afbeelding_IsDone(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFilter_afbeelding_IsIdle(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFilter_afbeelding_IsReady(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFilter_afbeelding_EnableAutoRestart(XFilter_afbeelding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFilter_afbeelding_DisableAutoRestart(XFilter_afbeelding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_AP_CTRL, 0);
}

void XFilter_afbeelding_Set_invoer_pixels(XFilter_afbeelding *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_INVOER_PIXELS_DATA, (u32)(Data));
    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_INVOER_PIXELS_DATA + 4, (u32)(Data >> 32));
}

u64 XFilter_afbeelding_Get_invoer_pixels(XFilter_afbeelding *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_INVOER_PIXELS_DATA);
    Data += (u64)XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_INVOER_PIXELS_DATA + 4) << 32;
    return Data;
}

void XFilter_afbeelding_Set_uitvoer_pixels(XFilter_afbeelding *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_UITVOER_PIXELS_DATA, (u32)(Data));
    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_UITVOER_PIXELS_DATA + 4, (u32)(Data >> 32));
}

u64 XFilter_afbeelding_Get_uitvoer_pixels(XFilter_afbeelding *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_UITVOER_PIXELS_DATA);
    Data += (u64)XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_UITVOER_PIXELS_DATA + 4) << 32;
    return Data;
}

void XFilter_afbeelding_Set_breedte(XFilter_afbeelding *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_BREEDTE_DATA, Data);
}

u32 XFilter_afbeelding_Get_breedte(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_BREEDTE_DATA);
    return Data;
}

void XFilter_afbeelding_Set_hoogte(XFilter_afbeelding *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_HOOGTE_DATA, Data);
}

u32 XFilter_afbeelding_Get_hoogte(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_HOOGTE_DATA);
    return Data;
}

void XFilter_afbeelding_Set_kanalen(XFilter_afbeelding *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_KANALEN_DATA, Data);
}

u32 XFilter_afbeelding_Get_kanalen(XFilter_afbeelding *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_KANALEN_DATA);
    return Data;
}

void XFilter_afbeelding_InterruptGlobalEnable(XFilter_afbeelding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_GIE, 1);
}

void XFilter_afbeelding_InterruptGlobalDisable(XFilter_afbeelding *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_GIE, 0);
}

void XFilter_afbeelding_InterruptEnable(XFilter_afbeelding *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER);
    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER, Register | Mask);
}

void XFilter_afbeelding_InterruptDisable(XFilter_afbeelding *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER);
    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFilter_afbeelding_InterruptClear(XFilter_afbeelding *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFilter_afbeelding_WriteReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_ISR, Mask);
}

u32 XFilter_afbeelding_InterruptGetEnabled(XFilter_afbeelding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_IER);
}

u32 XFilter_afbeelding_InterruptGetStatus(XFilter_afbeelding *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFilter_afbeelding_ReadReg(InstancePtr->Vitis_control_BaseAddress, XFILTER_AFBEELDING_VITIS_CONTROL_ADDR_ISR);
}

