// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAPPLY_HARDWARE_POOLING_H
#define XAPPLY_HARDWARE_POOLING_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xapply_hardware_pooling_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
    u64 Control_bus_BaseAddress;
} XApply_hardware_pooling_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u64 Control_bus_BaseAddress;
    u32 IsReady;
} XApply_hardware_pooling;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XApply_hardware_pooling_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XApply_hardware_pooling_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XApply_hardware_pooling_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XApply_hardware_pooling_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XApply_hardware_pooling_Initialize(XApply_hardware_pooling *InstancePtr, UINTPTR BaseAddress);
XApply_hardware_pooling_Config* XApply_hardware_pooling_LookupConfig(UINTPTR BaseAddress);
#else
int XApply_hardware_pooling_Initialize(XApply_hardware_pooling *InstancePtr, u16 DeviceId);
XApply_hardware_pooling_Config* XApply_hardware_pooling_LookupConfig(u16 DeviceId);
#endif
int XApply_hardware_pooling_CfgInitialize(XApply_hardware_pooling *InstancePtr, XApply_hardware_pooling_Config *ConfigPtr);
#else
int XApply_hardware_pooling_Initialize(XApply_hardware_pooling *InstancePtr, const char* InstanceName);
int XApply_hardware_pooling_Release(XApply_hardware_pooling *InstancePtr);
#endif

void XApply_hardware_pooling_Start(XApply_hardware_pooling *InstancePtr);
u32 XApply_hardware_pooling_IsDone(XApply_hardware_pooling *InstancePtr);
u32 XApply_hardware_pooling_IsIdle(XApply_hardware_pooling *InstancePtr);
u32 XApply_hardware_pooling_IsReady(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_EnableAutoRestart(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_DisableAutoRestart(XApply_hardware_pooling *InstancePtr);

void XApply_hardware_pooling_Set_invoer_pixels(XApply_hardware_pooling *InstancePtr, u64 Data);
u64 XApply_hardware_pooling_Get_invoer_pixels(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_Set_uitvoer_pixels(XApply_hardware_pooling *InstancePtr, u64 Data);
u64 XApply_hardware_pooling_Get_uitvoer_pixels(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_Set_breedte(XApply_hardware_pooling *InstancePtr, u32 Data);
u32 XApply_hardware_pooling_Get_breedte(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_Set_hoogte(XApply_hardware_pooling *InstancePtr, u32 Data);
u32 XApply_hardware_pooling_Get_hoogte(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_Set_mode(XApply_hardware_pooling *InstancePtr, u32 Data);
u32 XApply_hardware_pooling_Get_mode(XApply_hardware_pooling *InstancePtr);

void XApply_hardware_pooling_InterruptGlobalEnable(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_InterruptGlobalDisable(XApply_hardware_pooling *InstancePtr);
void XApply_hardware_pooling_InterruptEnable(XApply_hardware_pooling *InstancePtr, u32 Mask);
void XApply_hardware_pooling_InterruptDisable(XApply_hardware_pooling *InstancePtr, u32 Mask);
void XApply_hardware_pooling_InterruptClear(XApply_hardware_pooling *InstancePtr, u32 Mask);
u32 XApply_hardware_pooling_InterruptGetEnabled(XApply_hardware_pooling *InstancePtr);
u32 XApply_hardware_pooling_InterruptGetStatus(XApply_hardware_pooling *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
