/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Code used by the power management framework to bind the callbacks
 * implemented in xilpm with the custom IPI handling.
 * Code is common for APU and RPU.
 *********************************************************************/

#ifndef LIBESWPM_PM_IPI_H_
#define LIBESWPM_PM_IPI_H_

#include <xstatus.h>
#include <xscugic.h>
#include <xipipsu.h>

XStatus PmIpiInit(XScuGic *const GicInst, XIpiPsu *const InstancePtr);

void IpiWaitForAck(void);
void IpiWaitForInitSuspend(void);

#endif
