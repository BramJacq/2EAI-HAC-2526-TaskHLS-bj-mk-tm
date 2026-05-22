// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xvitis_convolution.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVitis_convolution_CfgInitialize(XVitis_convolution *InstancePtr, XVitis_convolution_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVitis_convolution_Start(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL) & 0x80;
    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVitis_convolution_IsDone(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVitis_convolution_IsIdle(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVitis_convolution_IsReady(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVitis_convolution_EnableAutoRestart(XVitis_convolution *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XVitis_convolution_DisableAutoRestart(XVitis_convolution *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_AP_CTRL, 0);
}

void XVitis_convolution_Set_input_img(XVitis_convolution *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_r_BaseAddress, XVITIS_CONVOLUTION_CONTROL_R_ADDR_INPUT_IMG_DATA, Data);
}

u32 XVitis_convolution_Get_input_img(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_r_BaseAddress, XVITIS_CONVOLUTION_CONTROL_R_ADDR_INPUT_IMG_DATA);
    return Data;
}

void XVitis_convolution_Set_output_img(XVitis_convolution *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_r_BaseAddress, XVITIS_CONVOLUTION_CONTROL_R_ADDR_OUTPUT_IMG_DATA, Data);
}

u32 XVitis_convolution_Get_output_img(XVitis_convolution *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVitis_convolution_ReadReg(InstancePtr->Control_r_BaseAddress, XVITIS_CONVOLUTION_CONTROL_R_ADDR_OUTPUT_IMG_DATA);
    return Data;
}

void XVitis_convolution_InterruptGlobalEnable(XVitis_convolution *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_GIE, 1);
}

void XVitis_convolution_InterruptGlobalDisable(XVitis_convolution *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_GIE, 0);
}

void XVitis_convolution_InterruptEnable(XVitis_convolution *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_IER);
    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_IER, Register | Mask);
}

void XVitis_convolution_InterruptDisable(XVitis_convolution *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_IER);
    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_IER, Register & (~Mask));
}

void XVitis_convolution_InterruptClear(XVitis_convolution *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVitis_convolution_WriteReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_ISR, Mask);
}

u32 XVitis_convolution_InterruptGetEnabled(XVitis_convolution *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_IER);
}

u32 XVitis_convolution_InterruptGetStatus(XVitis_convolution *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVitis_convolution_ReadReg(InstancePtr->Control_BaseAddress, XVITIS_CONVOLUTION_CONTROL_ADDR_ISR);
}

