// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xvitis_convolution.h"

extern XVitis_convolution_Config XVitis_convolution_ConfigTable[];

#ifdef SDT
XVitis_convolution_Config *XVitis_convolution_LookupConfig(UINTPTR BaseAddress) {
	XVitis_convolution_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XVitis_convolution_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XVitis_convolution_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XVitis_convolution_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVitis_convolution_Initialize(XVitis_convolution *InstancePtr, UINTPTR BaseAddress) {
	XVitis_convolution_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVitis_convolution_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVitis_convolution_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XVitis_convolution_Config *XVitis_convolution_LookupConfig(u16 DeviceId) {
	XVitis_convolution_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVITIS_CONVOLUTION_NUM_INSTANCES; Index++) {
		if (XVitis_convolution_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVitis_convolution_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVitis_convolution_Initialize(XVitis_convolution *InstancePtr, u16 DeviceId) {
	XVitis_convolution_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVitis_convolution_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVitis_convolution_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

