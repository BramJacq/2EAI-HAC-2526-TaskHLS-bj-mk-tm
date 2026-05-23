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
#include "xapply_hardware_pooling.h"

extern XApply_hardware_pooling_Config XApply_hardware_pooling_ConfigTable[];

#ifdef SDT
XApply_hardware_pooling_Config *XApply_hardware_pooling_LookupConfig(UINTPTR BaseAddress) {
	XApply_hardware_pooling_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XApply_hardware_pooling_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XApply_hardware_pooling_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XApply_hardware_pooling_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XApply_hardware_pooling_Initialize(XApply_hardware_pooling *InstancePtr, UINTPTR BaseAddress) {
	XApply_hardware_pooling_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XApply_hardware_pooling_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XApply_hardware_pooling_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XApply_hardware_pooling_Config *XApply_hardware_pooling_LookupConfig(u16 DeviceId) {
	XApply_hardware_pooling_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAPPLY_HARDWARE_POOLING_NUM_INSTANCES; Index++) {
		if (XApply_hardware_pooling_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XApply_hardware_pooling_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XApply_hardware_pooling_Initialize(XApply_hardware_pooling *InstancePtr, u16 DeviceId) {
	XApply_hardware_pooling_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XApply_hardware_pooling_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XApply_hardware_pooling_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

