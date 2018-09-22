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

#ifndef LIBESWPM_IPI_H_
#define LIBESWPM_IPI_H_

#include <xstatus.h>
#include <xscugic.h>
#include <xipipsu.h>

typedef void (*IpiCallback)(XIpiPsu *const InstancePtr);

XStatus IpiConfigure(XScuGic *const GicInst, XIpiPsu *const IpiInst);

XStatus IpiRegisterCallback(XIpiPsu *const IpiInst, const u32 SrcMask,
			    const IpiCallback Callback);

#endif
