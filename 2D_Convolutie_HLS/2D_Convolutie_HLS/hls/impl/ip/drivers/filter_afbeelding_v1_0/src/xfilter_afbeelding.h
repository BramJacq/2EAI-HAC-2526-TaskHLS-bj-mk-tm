// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XFILTER_AFBEELDING_H
#define XFILTER_AFBEELDING_H

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
#include "xfilter_afbeelding_hw.h"

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
    u64 Vitis_control_BaseAddress;
} XFilter_afbeelding_Config;
#endif

typedef struct {
    u64 Vitis_control_BaseAddress;
    u32 IsReady;
} XFilter_afbeelding;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFilter_afbeelding_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFilter_afbeelding_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFilter_afbeelding_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFilter_afbeelding_ReadReg(BaseAddress, RegOffset) \
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
int XFilter_afbeelding_Initialize(XFilter_afbeelding *InstancePtr, UINTPTR BaseAddress);
XFilter_afbeelding_Config* XFilter_afbeelding_LookupConfig(UINTPTR BaseAddress);
#else
int XFilter_afbeelding_Initialize(XFilter_afbeelding *InstancePtr, u16 DeviceId);
XFilter_afbeelding_Config* XFilter_afbeelding_LookupConfig(u16 DeviceId);
#endif
int XFilter_afbeelding_CfgInitialize(XFilter_afbeelding *InstancePtr, XFilter_afbeelding_Config *ConfigPtr);
#else
int XFilter_afbeelding_Initialize(XFilter_afbeelding *InstancePtr, const char* InstanceName);
int XFilter_afbeelding_Release(XFilter_afbeelding *InstancePtr);
#endif

void XFilter_afbeelding_Start(XFilter_afbeelding *InstancePtr);
u32 XFilter_afbeelding_IsDone(XFilter_afbeelding *InstancePtr);
u32 XFilter_afbeelding_IsIdle(XFilter_afbeelding *InstancePtr);
u32 XFilter_afbeelding_IsReady(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_EnableAutoRestart(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_DisableAutoRestart(XFilter_afbeelding *InstancePtr);

void XFilter_afbeelding_Set_invoer_pixels(XFilter_afbeelding *InstancePtr, u64 Data);
u64 XFilter_afbeelding_Get_invoer_pixels(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_Set_uitvoer_pixels(XFilter_afbeelding *InstancePtr, u64 Data);
u64 XFilter_afbeelding_Get_uitvoer_pixels(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_Set_breedte(XFilter_afbeelding *InstancePtr, u32 Data);
u32 XFilter_afbeelding_Get_breedte(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_Set_hoogte(XFilter_afbeelding *InstancePtr, u32 Data);
u32 XFilter_afbeelding_Get_hoogte(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_Set_kanalen(XFilter_afbeelding *InstancePtr, u32 Data);
u32 XFilter_afbeelding_Get_kanalen(XFilter_afbeelding *InstancePtr);

void XFilter_afbeelding_InterruptGlobalEnable(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_InterruptGlobalDisable(XFilter_afbeelding *InstancePtr);
void XFilter_afbeelding_InterruptEnable(XFilter_afbeelding *InstancePtr, u32 Mask);
void XFilter_afbeelding_InterruptDisable(XFilter_afbeelding *InstancePtr, u32 Mask);
void XFilter_afbeelding_InterruptClear(XFilter_afbeelding *InstancePtr, u32 Mask);
u32 XFilter_afbeelding_InterruptGetEnabled(XFilter_afbeelding *InstancePtr);
u32 XFilter_afbeelding_InterruptGetStatus(XFilter_afbeelding *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
