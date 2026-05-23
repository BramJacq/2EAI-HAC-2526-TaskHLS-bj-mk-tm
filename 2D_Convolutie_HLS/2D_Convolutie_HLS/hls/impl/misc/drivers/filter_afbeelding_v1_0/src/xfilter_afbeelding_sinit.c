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
#include "xfilter_afbeelding.h"

extern XFilter_afbeelding_Config XFilter_afbeelding_ConfigTable[];

#ifdef SDT
XFilter_afbeelding_Config *XFilter_afbeelding_LookupConfig(UINTPTR BaseAddress) {
	XFilter_afbeelding_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFilter_afbeelding_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFilter_afbeelding_ConfigTable[Index].Vitis_control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFilter_afbeelding_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilter_afbeelding_Initialize(XFilter_afbeelding *InstancePtr, UINTPTR BaseAddress) {
	XFilter_afbeelding_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilter_afbeelding_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilter_afbeelding_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFilter_afbeelding_Config *XFilter_afbeelding_LookupConfig(u16 DeviceId) {
	XFilter_afbeelding_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFILTER_AFBEELDING_NUM_INSTANCES; Index++) {
		if (XFilter_afbeelding_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFilter_afbeelding_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFilter_afbeelding_Initialize(XFilter_afbeelding *InstancePtr, u16 DeviceId) {
	XFilter_afbeelding_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFilter_afbeelding_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFilter_afbeelding_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

