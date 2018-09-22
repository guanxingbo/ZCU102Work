/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Code used by the power management framework to bind the callbacks
 * implemented in xilpm with the custom IPI handling.
 * Code is common for APU and RPU.
 *********************************************************************/

#include <libeswpm/ipi.h>
#include <libeswpm/pm_ipi.h>
#include <libeswpm/gic_setup.h>
#include <pm_api_sys.h>
#include <pm_client.h>

/**
 * @PmIpiCallback() - Wrapper for the PM callbacks to be called from IPI
 *			interrupt handler
 * @IpiInst	Pointer to the IPI data structure
 */
static void PmIpiCallback(XIpiPsu *const InstancePtr)
{
	XStatus status;
	u32 pl[PAYLOAD_ARG_CNT];

	status = XIpiPsu_ReadMessage(InstancePtr, IPI_PMU_PM_INT_MASK, pl,
				     PAYLOAD_ARG_CNT, XIPIPSU_BUF_TYPE_MSG);
	if (status != XST_SUCCESS) {
		pm_print("ERROR #%d while reading IPI buffer\n", status);
		return;
	}

	/*
	 * Call callback function if first argument in payload matches
	 * some of the callbacks id.
	 */
	switch (pl[0]) {
	case PM_ACKNOWLEDGE_CB:
		XPm_AcknowledgeCb(pl[1], pl[2], pl[3]);
		break;
	case PM_NOTIFY_CB:
		XPm_NotifyCb(pl[1], pl[2], pl[3]);
		break;
	case PM_INIT_SUSPEND_CB:
		XPm_InitSuspendCb(pl[1], pl[2], pl[3], pl[4]);
		break;
	default:
		pm_print("%s ERROR, unrecognized PM-API ID: %d\n", __func__, pl[0]);
		break;
	}
}

/**
 * PmIpiInit() - Initialize IPI for receiving power management callbacks
 * @IpiInst	Ipi Data structure to initialize
 * @GicInst	GIC in which the reception of the interrupt should be enabled
 * @return	Status of the init procedure (XST_SUCCESS or XST_FAILURE)
 */
XStatus PmIpiInit(XScuGic *const GicInst, XIpiPsu *const InstancePtr)
{
	XStatus Status;

	Status = IpiConfigure(GicInst, InstancePtr);
	if (XST_SUCCESS != Status)
		return Status;

	Status = IpiRegisterCallback(InstancePtr, XPAR_XIPIPS_TARGET_PSU_PMU_0_CH1_MASK,
				     PmIpiCallback);

	return Status;
}

/**
 * IpiWaitForAck() - Wait to receive acknowledge from the PMU
 *
 * @note	Acknowledge handlers are part of the power management framework.
 * The callbacks execute in interrupt context, and in this bare-bone example
 * the main flow of the test "knows" that the handler has happened by polling
 * the appropriate flag, which is set in a callback handler. In multithreading
 * enviroment, a thread could be blocked while waiting for a callback and upon
 * its reception, that thread should be unblocked.
 */
void IpiWaitForAck(void)
{
	pm_print("Waiting for acknowledge callback...\n");

	/* Wait for acknowledge - received flag is set from IPI's IrqHandler*/
	while (false == pm_ack.received);

	pm_print("Received acknowledge: Node=%d, Status=%d, OPP=%d\n",
		pm_ack.node, pm_ack.status, pm_ack.opp);

	/* Clear the flag to state that acknowledge is processed */
	pm_ack.received = false;
}

/**
 * IpiWaitForInitSuspend() - Wait for init suspend request from the PMU
 *
 * @note	The same logic applies as for any callback, e. g. acknowledge.
 */
void IpiWaitForInitSuspend(void)
{
	pm_print("Waiting for init_suspend callback...\n");

	/* Wait for init suspend - received flag is set from IPI's IrqHandler */
	while (false == pm_susp.received);

	pm_print("Received init suspend request: Reason=%d, Latency=%d, "
		 "State=%d, Timeout=%d\n", pm_susp.reason, pm_susp.latency,
		 pm_susp.state, pm_susp.timeout);

	/* Clear the flag to state that init suspend is processed */
	pm_susp.received = false;
}
