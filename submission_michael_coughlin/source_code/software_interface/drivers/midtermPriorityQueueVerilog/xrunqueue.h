// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XRUNQUEUE_H
#define XRUNQUEUE_H

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
#include "xrunqueue_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axi4lites_BaseAddress;
} XRunqueue_Config;
#endif

typedef struct {
    u32 Axi4lites_BaseAddress;
    u32 IsReady;
} XRunqueue;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XRunqueue_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XRunqueue_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XRunqueue_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XRunqueue_ReadReg(BaseAddress, RegOffset) \
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
int XRunqueue_Initialize(XRunqueue *InstancePtr, u16 DeviceId);
XRunqueue_Config* XRunqueue_LookupConfig(u16 DeviceId);
int XRunqueue_CfgInitialize(XRunqueue *InstancePtr, XRunqueue_Config *ConfigPtr);
#else
int XRunqueue_Initialize(XRunqueue *InstancePtr, const char* InstanceName);
int XRunqueue_Release(XRunqueue *InstancePtr);
#endif

void XRunqueue_Start(XRunqueue *InstancePtr);
u32 XRunqueue_IsDone(XRunqueue *InstancePtr);
u32 XRunqueue_IsIdle(XRunqueue *InstancePtr);
u32 XRunqueue_IsReady(XRunqueue *InstancePtr);
void XRunqueue_EnableAutoRestart(XRunqueue *InstancePtr);
void XRunqueue_DisableAutoRestart(XRunqueue *InstancePtr);
u32 XRunqueue_GetReturn(XRunqueue *InstancePtr);

u32 XRunqueue_GetFullout(XRunqueue *InstancePtr);
void XRunqueue_SetIterations(XRunqueue *InstancePtr, u32 Data);
u32 XRunqueue_GetIterations(XRunqueue *InstancePtr);
void XRunqueue_SetIterationsVld(XRunqueue *InstancePtr);
u32 XRunqueue_GetIterationsVld(XRunqueue *InstancePtr);
u32 XRunqueue_GetFinished(XRunqueue *InstancePtr);
u32 XRunqueue_GetFinishedVld(XRunqueue *InstancePtr);
u32 XRunqueue_GetCurrentiteration(XRunqueue *InstancePtr);
u32 XRunqueue_GetTotal(XRunqueue *InstancePtr);

void XRunqueue_InterruptGlobalEnable(XRunqueue *InstancePtr);
void XRunqueue_InterruptGlobalDisable(XRunqueue *InstancePtr);
void XRunqueue_InterruptEnable(XRunqueue *InstancePtr, u32 Mask);
void XRunqueue_InterruptDisable(XRunqueue *InstancePtr, u32 Mask);
void XRunqueue_InterruptClear(XRunqueue *InstancePtr, u32 Mask);
u32 XRunqueue_InterruptGetEnabled(XRunqueue *InstancePtr);
u32 XRunqueue_InterruptGetStatus(XRunqueue *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
