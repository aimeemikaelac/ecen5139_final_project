// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2014.1
// Copyright (C) 2014 Xilinx Inc. All rights reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xrunqueue.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XRunqueue_CfgInitialize(XRunqueue *InstancePtr, XRunqueue_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axi4lites_BaseAddress = ConfigPtr->Axi4lites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XRunqueue_Start(XRunqueue *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL) & 0x80;
    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XRunqueue_IsDone(XRunqueue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XRunqueue_IsIdle(XRunqueue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XRunqueue_IsReady(XRunqueue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XRunqueue_EnableAutoRestart(XRunqueue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL, 0x80);
}

void XRunqueue_DisableAutoRestart(XRunqueue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_CTRL, 0);
}

u32 XRunqueue_GetReturn(XRunqueue *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_AP_RETURN);
    return Data;
}
void XRunqueue_InterruptGlobalEnable(XRunqueue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_GIE, 1);
}

void XRunqueue_InterruptGlobalDisable(XRunqueue *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_GIE, 0);
}

void XRunqueue_InterruptEnable(XRunqueue *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_IER);
    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_IER, Register | Mask);
}

void XRunqueue_InterruptDisable(XRunqueue *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_IER);
    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_IER, Register & (~Mask));
}

void XRunqueue_InterruptClear(XRunqueue *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XRunqueue_WriteReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_ISR, Mask);
}

u32 XRunqueue_InterruptGetEnabled(XRunqueue *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_IER);
}

u32 XRunqueue_InterruptGetStatus(XRunqueue *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XRunqueue_ReadReg(InstancePtr->Axi4lites_BaseAddress, XRUNQUEUE_AXI4LITES_ADDR_ISR);
}

