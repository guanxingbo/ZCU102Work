/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Code used by the testing framework as the wrapper for the IPI driver,
 * which does not currently implement infrastructure/binding which is
 * needed to implement callbacks when a PU communicates with multiple
 * other PUs.
 * Code is common for APU and RPU.
 *********************************************************************/

#include "pm_client.h"
#include "pm_api_sys.h"
#include <libeswpm/ipi.h>
#include <libeswpm/gic_setup.h>
#include <unistd.h>
#include <xipipsu_hw.h>
#include <xipipsu.h>

#define IPI_INT_ID	XPAR_XIPIPSU_0_INT_ID
#define TEST_CHANNEL_ID	XPAR_XIPIPSU_0_DEVICE_ID

/* Allocate one callback pointer for each bit in the register */
static IpiCallback IpiCallbacks[11];

static ssize_t ipimask2idx(u32 m)
{
	ssize_t idx;

	/* filter reserviced bits */
	if (m & 0xf0f0fcf7)
		return -1;

	/* check that only a single bit is set */
	if (__builtin_popcount(m) != 1)
		return -1;

	idx = __builtin_ctz(m);

	if (m < (1 << 8))
		return idx;
	if (m < (1 << 16))
		return idx - 7;
	if (m < (1 << 24))
		return idx - 13;

	return idx - 17;
}

/**
 * IpiIrqHandler() - Interrupt handler of IPI peripheral
 * @InstancePtr	Pointer to the IPI data structure
 */
static void IpiIrqHandler(XIpiPsu *InstancePtr)
{
	u32 Mask;

	/* Read status to determine the source CPU (who generated IPI) */
	Mask = XIpiPsu_GetInterruptStatus(InstancePtr);

	/* Handle all IPIs whose bits are set in the mask */
	while (Mask) {
		u32 IpiMask = Mask & (-Mask);
		ssize_t idx = ipimask2idx(IpiMask);

		/* If the callback for this IPI is registered execute it */
		if (idx >= 0 && IpiCallbacks[idx])
			IpiCallbacks[idx](InstancePtr);

		/* Clear the interrupt status of this IPI source */
		XIpiPsu_ClearInterruptStatus(InstancePtr, IpiMask);

		/* Clear this IPI in the Mask */
		Mask &= ~IpiMask;
	}
}

/**
 * IpiRegisterCallback() - Register callback for IPI
 * @IpiInst	Pointer to the IPI data structure (needed to enable irq)
 * @SrcMask	Mask that determines CPU source which is going to trigger IPI
 * @Callback	Callback to be executed when CPU identified by SrcMask triggers
 *		an IPI
 * @return	Status of registering a callback (XST_SUCCESS or XST_FAILURE)
 *
 * @note	The function enables IPI interrupt specified by the SrcMask if
 *		the registration is successful. The SrcMask shall be one-hot
 *		encoded (the set bit represents the IPI source).
 */
XStatus IpiRegisterCallback(XIpiPsu *const IpiInst, const u32 SrcMask,
			    IpiCallback Callback)
{
	ssize_t idx;

	if (!Callback)
		return XST_INVALID_PARAM;

	/* Get index into IpiChannels array */
	idx = ipimask2idx(SrcMask);
	if (idx < 0)
		return XST_INVALID_PARAM;

	/* Check if callback is already registered, return failure if it is */
	if (IpiCallbacks[idx])
		return XST_FAILURE;

	/* Entry is free, register callback */
	IpiCallbacks[idx] = Callback;

	/* Enable reception of IPI from the SrcMask/CPU */
	XIpiPsu_InterruptEnable(IpiInst, SrcMask);

	return XST_SUCCESS;
}

/**
 * IpiConfigure() - Call to configure IPI peripheral and enable its interrupt
 *		in both peripheral and at the GIC
 * @IpiInst	Ipi Data structure to initialize
 * @GicInst	GIC in which the reception of the interrupt should be enabled
 *
 * @return	Status of configuring the interrupt
 *
 * @note	This function does not enable any IPI interrupt, an interrupt is
 *		enabled when the associated callback is registered. The
 *		function can be called safely multiple times, the IPI will be
 *		effectively configured only the first time when a call is made.
 */
XStatus IpiConfigure(XScuGic *const GicInst, XIpiPsu *const IpiInst)
{
	XStatus Status;
	XIpiPsu_Config *IpiCfgPtr;
	static bool initialized = false;

	/* If IPI is already initialized return success */
	if (initialized)
		return XST_SUCCESS;

	/* Look Up the config data */
	IpiCfgPtr = XIpiPsu_LookupConfig(TEST_CHANNEL_ID);
	if (NULL == IpiCfgPtr) {
		Status = XST_FAILURE;
		pm_print("%s ERROR in getting CfgPtr\n", __func__);
		return Status;
	}

	/* Init with the Cfg Data */
	Status = XIpiPsu_CfgInitialize(IpiInst, IpiCfgPtr, IpiCfgPtr->BaseAddress);
	if (XST_SUCCESS != Status) {
		pm_print("%s ERROR #%d in configuring IPI\n", __func__, Status);
		return Status;
	}

	/* Clear Any existing Interrupts */
	XIpiPsu_ClearInterruptStatus(IpiInst, XIPIPSU_ALL_MASK);

	Status = XScuGic_Connect(GicInst, IPI_INT_ID,
				 (Xil_ExceptionHandler)IpiIrqHandler,
				 IpiInst);
	if (XST_SUCCESS != Status) {
		pm_print("%s ERROR #%d in GIC connect\n", __func__, Status);
		return Status;
	}

	/* Enable IPI interrupt at GIC */
	XScuGic_Enable(GicInst, IPI_INT_ID);

	initialized = true;

	return Status;
}
