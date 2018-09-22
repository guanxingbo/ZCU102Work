/******************************************************************************
*
* Copyright (C) 2015 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * CONTENT
 * Generic functions for gic initialization and interrupt enabling
 */

#include <libeswpm/gic_setup.h>
#include <xscugic_hw.h>

/**
 * GicIrqEntry - Struct used for GIC context save/restore
 * @CallBackRef	Used for saving information about registered handler.
 *		We need to save/restore this pointer if we want to reuse
 *		existing code for initializing GIC from XScuGic driver. In fact,
 *		XScuGic_CfgInitialize resets CallBackRef pointers, so we need
 *		to restore their values after the call.
 * @Enabled	Flag which states whether the associated interrupt is
 *		enabled upon suspend (interrupt should be enabled upon resume)
 */
typedef struct {
	void *CallBackRef;
	u8 Enabled;
} GicIrqEntry;

static GicIrqEntry GicIrqTable[XSCUGIC_MAX_NUM_INTR_INPUTS];

/**
 * GicSetupInterruptSystem() - configure the system to receive peripheral interrupt
 *
 * Does everything that is needed for enabling interrupts (gic setup, Handler connecting,
 * interrupt enabling on processor and gic level)
 *
 * @return:	status of operation success (XST_* from xstatus.h)
 */
s32 GicSetupInterruptSystem(XScuGic *GicInst)
{
	s32 Status;

	XScuGic_Config *GicCfgPtr = XScuGic_LookupConfig(INTC_DEVICE_ID);

	if (NULL == GicCfgPtr)
		return XST_FAILURE;

	Status = XScuGic_CfgInitialize(GicInst, GicCfgPtr, GicCfgPtr->CpuBaseAddress);
	if (XST_SUCCESS != Status)
		return Status;

	/*
	 * Connect the interrupt controller interrupt Handler to the
	 * hardware interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				    (Xil_ExceptionHandler)XScuGic_InterruptHandler,
				    GicInst);

	if (XST_SUCCESS != Status)
		return Status;

	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/**
 * GicSuspend() - Save the context of GIC upon the suspend
 * @GicInst	Pointer to the GIC instance
 */
void GicSuspend(XScuGic *const GicInst)
{
	u32 i;

	for (i = 0U; i < XSCUGIC_MAX_NUM_INTR_INPUTS; i++) {
		u32 Mask, Reg;

		GicIrqTable[i].CallBackRef = GicInst->Config->HandlerTable[i].CallBackRef;

		Mask = 0x00000001U << (i % 32U);
		Reg = XScuGic_DistReadReg(GicInst, XSCUGIC_ENABLE_SET_OFFSET +
					 ((i / 32U) * 4U));
		if (Mask & Reg)
			GicIrqTable[i].Enabled = 1U;
		else
			GicIrqTable[i].Enabled = 0U;
	}
}

/**
 * GicResume() - Called upon resume to restore GIC state
 * @GicInst	Pointer to the GIC instance
 *
 * @return	XST_SUCCESS if GIC context is restored properly, an error code
 *		otherwise
 */
XStatus GicResume(XScuGic *const GicInst)
{
	XScuGic_Config *GicCfgPtr;
	XStatus Status;
	u32 i;

	/* Clear the flag that GIC is ready */
	GicInst->IsReady = 0U;

	/* Initialize GIC using the GIC driver function */
	GicCfgPtr = XScuGic_LookupConfig(INTC_DEVICE_ID);

	if (NULL == GicCfgPtr)
		return XST_FAILURE;

	Status = XScuGic_CfgInitialize(GicInst, GicCfgPtr, GicCfgPtr->CpuBaseAddress);
	if (XST_SUCCESS != Status)
		return Status;

	/* Restore handler pointers and enable interrupt if it was enabled */
	for (i = 0U; i < XSCUGIC_MAX_NUM_INTR_INPUTS; i++) {
		GicInst->Config->HandlerTable[i].CallBackRef = GicIrqTable[i].CallBackRef;

		if (GicIrqTable[i].Enabled)
			XScuGic_Enable(GicInst, i);
	}

	return XST_SUCCESS;
}
