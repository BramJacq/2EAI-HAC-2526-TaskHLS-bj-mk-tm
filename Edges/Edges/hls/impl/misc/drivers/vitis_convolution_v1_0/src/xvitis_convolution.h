// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XVITIS_CONVOLUTION_H
#define XVITIS_CONVOLUTION_H

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
#include "xvitis_convolution_hw.h"

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
    u32 Control_BaseAddress;
    u32 Control_r_BaseAddress;
} XVitis_convolution_Config;
#endif

typedef struct {
    u32 Control_BaseAddress;
    u32 Control_r_BaseAddress;
    u32 IsReady;
} XVitis_convolution;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVitis_convolution_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVitis_convolution_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVitis_convolution_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVitis_convolution_ReadReg(BaseAddress, RegOffset) \
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
int XVitis_convolution_Initialize(XVitis_convolution *InstancePtr, UINTPTR BaseAddress);
XVitis_convolution_Config* XVitis_convolution_LookupConfig(UINTPTR BaseAddress);
#else
int XVitis_convolution_Initialize(XVitis_convolution *InstancePtr, u16 DeviceId);
XVitis_convolution_Config* XVitis_convolution_LookupConfig(u16 DeviceId);
#endif
int XVitis_convolution_CfgInitialize(XVitis_convolution *InstancePtr, XVitis_convolution_Config *ConfigPtr);
#else
int XVitis_convolution_Initialize(XVitis_convolution *InstancePtr, const char* InstanceName);
int XVitis_convolution_Release(XVitis_convolution *InstancePtr);
#endif

void XVitis_convolution_Start(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_IsDone(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_IsIdle(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_IsReady(XVitis_convolution *InstancePtr);
void XVitis_convolution_EnableAutoRestart(XVitis_convolution *InstancePtr);
void XVitis_convolution_DisableAutoRestart(XVitis_convolution *InstancePtr);

void XVitis_convolution_Set_input_img(XVitis_convolution *InstancePtr, u32 Data);
u32 XVitis_convolution_Get_input_img(XVitis_convolution *InstancePtr);
void XVitis_convolution_Set_output_img(XVitis_convolution *InstancePtr, u32 Data);
u32 XVitis_convolution_Get_output_img(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Get_kernel_BaseAddress(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Get_kernel_HighAddress(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Get_kernel_TotalBytes(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Get_kernel_BitWidth(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Get_kernel_Depth(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_Write_kernel_Words(XVitis_convolution *InstancePtr, int offset, word_type *data, int length);
u32 XVitis_convolution_Read_kernel_Words(XVitis_convolution *InstancePtr, int offset, word_type *data, int length);
u32 XVitis_convolution_Write_kernel_Bytes(XVitis_convolution *InstancePtr, int offset, char *data, int length);
u32 XVitis_convolution_Read_kernel_Bytes(XVitis_convolution *InstancePtr, int offset, char *data, int length);

void XVitis_convolution_InterruptGlobalEnable(XVitis_convolution *InstancePtr);
void XVitis_convolution_InterruptGlobalDisable(XVitis_convolution *InstancePtr);
void XVitis_convolution_InterruptEnable(XVitis_convolution *InstancePtr, u32 Mask);
void XVitis_convolution_InterruptDisable(XVitis_convolution *InstancePtr, u32 Mask);
void XVitis_convolution_InterruptClear(XVitis_convolution *InstancePtr, u32 Mask);
u32 XVitis_convolution_InterruptGetEnabled(XVitis_convolution *InstancePtr);
u32 XVitis_convolution_InterruptGetStatus(XVitis_convolution *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
