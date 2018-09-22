/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Macros and functions used commonly used in tests.
 * Common for APU and RPU.
 *********************************************************************/

#include <libeswpm/test_aux.h>
#include <libeswpm/pm_ipi.h>
#include <string.h>
#include <xil_cache.h>
#include <libeswpm/config.h>

#define PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3	0xFFD8005C

/**
 * PmTestInit - Initialize GIC, IPIs, and Xilpm
 * @GicInst	Pointer to GIC driver instance
 * @XIpiPsu	Pointer to IPI driver instance
 */
void PmTestInit(XScuGic *const GicInst, XIpiPsu *const IpiInst)
{
	XStatus status;

	status = GicSetupInterruptSystem(GicInst);
	HALT_IF_ERR(status, "in setting up GIC\n");

	status  = PmIpiInit(GicInst, IpiInst);
	HALT_IF_ERR(status, "in configuring IPI\n");

	status = XPm_InitXilpm(IpiInst);
	HALT_IF_ERR(status, "in initializing xilpm\n");

	status = PmSetConfig();
	if (XST_SUCCESS != status) {
		pm_print("Configuration is not set\n");
	}

	status = XPm_InitFinalize();
	if (XST_SUCCESS != status) {
		pm_print("Failed to finalize init\n");
	}
}

/**
 * SyncDeclareReady() - Set the flag to inform other PUs that this PU is ready
 *
 * @note	PU sets flag corresponding to its unique ipi mask into global
 *		sync register to declare it is ready to perform the test. Other
 *		PUs can poll this sync register to check whether some PU is
 *		ready/booted. To be used only for initial boot sync.
 */
void SyncDeclareReady(void)
{
	u32 val = pm_read(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3);
	pm_write(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3, val |
		 primary_master->ipi->Config.BitMask);
}

/**
 * SyncWaitForReady() - PU polls ready flags from global sync register to wait
 *		for other PUs to become ready
 * @mask	IPI masks encoding all masters whose ready flags are polled
 *
 * @note	Function returns when all bitfields from mask are set, otherwise
 *		it blocks the flow. This is ok since sync is used only for
 *		testing and testing script counts for the timeout.
 */
void SyncWaitForReady(const u32 mask)
{
	u32 val;

	do
		val = pm_read(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3) & mask;
	while (val != mask);
}

/**
 * SyncWaitForValue() - Poll global sync register for the expected value
 * @value	Value expected to be found in sync register
 */
void SyncWaitForValue(const u32 value)
{
	u32 reg;

	do {
		reg = pm_read(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3);
	} while (value != reg);
}

/**
 * SyncClearReady() - Clear ready flags from global sync register
 * @mask	IPI masks encoding all masters whose ready flags are cleared
 */
void SyncClearReady(const u32 mask)
{
	u32 val = pm_read(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3);

	val &= ~mask;
	pm_write(PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3, val);
}

/**
 * LoadImage() - Start loading the image for another PU
 * @startAddr	Start address where the image should be loaded
 *
 * @note	The image contains the code to store a key into global
 *		synchronization register. After the target processor executes
 *		store it branches in place (infinite loop).
 */
#ifdef __aarch64__
void LoadImage(const u64 startAddr)
{
	static u32 binary[] = {
		0xe59f0008,	// ldr r0, PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3
		0xe3a01000 | SYNC_KEY,	// mov r1, =SYNC_KEY
		0xe5801000,	// str r1, [r0]
		0xeafffffe,	// b .
		PMU_GLOBAL_PERS_GLOB_GEN_STORAGE3,
	};

	pm_print("Loading image at address 0x%08x...\n", startAddr);
	memcpy((void*)startAddr, binary, sizeof(binary));
	Xil_DCacheFlushRange(startAddr, sizeof(binary));
}
#endif

/**
 * RequestFpdSlaves() - Request FPD slaves
 */
void RequestFpdSlaves(void)
{
	XStatus status;

	status = XPm_RequestNode(NODE_SATA, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_SATA");

	status = XPm_RequestNode(NODE_DP, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_DP");

	status = XPm_RequestNode(NODE_GDMA, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_GDMA");

	status = XPm_RequestNode(NODE_GPU, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_GPU");

	status = XPm_RequestNode(NODE_GPU_PP_0, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_GPU_PP_0");

	status = XPm_RequestNode(NODE_GPU_PP_1, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_GPU_PP_1");

	status = XPm_RequestNode(NODE_PCIE, PM_CAP_ACCESS, MAX_QOS, REQUEST_ACK_BLOCKING);
	HALT_IF_ERR(status, "request NODE_PCIE")
}

/**
 * ReleaseFpdSlaves() - Release FPD slaves
 */
void ReleaseFpdSlaves(void)
{
	XStatus status;

	status = XPm_ReleaseNode(NODE_SATA);
	HALT_IF_ERR(status, "release NODE_SATA");

	status = XPm_ReleaseNode(NODE_DP);
	HALT_IF_ERR(status, "release NODE_DP");

	status = XPm_ReleaseNode(NODE_GDMA);
	HALT_IF_ERR(status, "release NODE_GDMA");

	status = XPm_ReleaseNode(NODE_GPU);
	HALT_IF_ERR(status, "release NODE_GPU");

	status = XPm_ReleaseNode(NODE_GPU_PP_0);
	HALT_IF_ERR(status, "release NODE_GPU_PP_0");

	status = XPm_ReleaseNode(NODE_GPU_PP_1);
	HALT_IF_ERR(status, "release NODE_GPU_PP_1");

	status = XPm_ReleaseNode(NODE_PCIE);
	HALT_IF_ERR(status, "release NODE_PCIE");
}
