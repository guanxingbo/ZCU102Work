/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * For testing the power management framework, a configuration object
 * needs to be provided to the PFW in order to enable the power management.
 * The configuration object used for the testing is defined in this file.
 *********************************************************************/

#include <libeswpm/config.h>
#include <pm_api_sys.h>
#include <libeswpm/test_aux.h>
#include <xipipsu_hw.h>
#include <pm_cfg_obj.h>

#define PM_CONFIG_MASTER_SECTION_ID	0x101U
#define PM_CONFIG_SLAVE_SECTION_ID	0x102U
#define PM_CONFIG_PREALLOC_SECTION_ID	0x103U
#define PM_CONFIG_POWER_SECTION_ID	0x104U
#define PM_CONFIG_RESET_SECTION_ID	0x105U
#define PM_CONFIG_SHUTDOWN_SECTION_ID	0x106U
#define PM_CONFIG_SET_CONFIG_SECTION_ID	0x107U

#define PM_SLAVE_FLAG_IS_SHAREABLE	0x1U
#define PM_MASTER_USING_SLAVE_MASK	0x2U

#define SUSPEND_TIMEOUT	0xFFFFFFFF

#define CONFIG_IPI_BUFF	(XIPIPSU_MSG_RAM_BASE + 3 * XIPIPSU_BUFFER_OFFSET_GROUP)
#define CONFIG_OBJ_SINGLE	0x1U
#define CONFIG_OBJ_MULTI	0x2U

#define IPI_PMU_0_IER_RPU_0_MASK	 0x100 
#define IPI_PMU_0_IER_APU_MASK	 0x1 

static const u32 PmConfigObjectMulti[] = {
	/**********************************************************************/
	/* HEADER */
	0,	/* Number of remaining words in the header */
	/**********************************************************************/
	/* MASTER SECTION */
	PM_CONFIG_MASTER_SECTION_ID,	/* Section ID */
	2,				/* Number of masters */
					/* Master #1 */
	NODE_APU,			/* Node ID of the master */
	IPI_PMU_0_IER_APU_MASK,		/* IPI mask associated with master */
	SUSPEND_TIMEOUT,		/* Suspend timeout */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Suspend permissions */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Wake permissions */
					/* Master #2 */
	NODE_RPU,			/* Node ID of the master */
	IPI_PMU_0_IER_RPU_0_MASK,	/* IPI mask associated with master */
	SUSPEND_TIMEOUT,		/* Suspend timeout */
	IPI_PMU_0_IER_APU_MASK,		/* Suspend permissions */
	IPI_PMU_0_IER_APU_MASK,		/* Wake permissions */
	/**********************************************************************/
	/* SLAVE SECTION */
	PM_CONFIG_SLAVE_SECTION_ID,	/* Section ID */
	53,				/* Number of slaves */

	NODE_TCM_1_B,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_1_A,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_0_B,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_0_A,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_DDR,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_L2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_OCM_BANK_3,		/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_2,		/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_1,		/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_0,		/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_GPU_PP_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GPU_PP_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_USB_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_USB_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TTC_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TTC_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_TTC_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_TTC_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SATA,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_ETH_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_UART_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_UART_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SPI_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SPI_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_I2C_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_I2C_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SD_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SD_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_DP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GDMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ADMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_NAND,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_QSPI,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GPIO,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_CAN_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_CAN_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_EXTERN,			/* Node ID of the slave */
	PM_SLAVE_FLAG_IS_SHAREABLE,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_IPI_APU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_IPI_RPU_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_GPU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_PCIE,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_PCAP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_RTC,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_VCU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_IPI_RPU_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_IPI_PL_0,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_2,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_3,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_PL,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	/**********************************************************************/
	/* PREALLOC SECTION */
	PM_CONFIG_PREALLOC_SECTION_ID,	/* Section ID */
	2,				/* Number of masters */
					/* Master #1 */
	IPI_PMU_0_IER_APU_MASK,		/* IPI mask of the master */
	7,				/* Number of preallocated slaves */
					/* Slave #1 */
	NODE_IPI_APU,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS,			/* Current requirements */
	PM_CAP_ACCESS,			/* Default requirements */
					/* Slave #2 */
	NODE_DDR,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #3 */
	NODE_L2,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #4 */
	NODE_OCM_BANK_0,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #5 */
	NODE_OCM_BANK_1,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #6 */
	NODE_OCM_BANK_2,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #7 */
	NODE_OCM_BANK_3,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */

	IPI_PMU_0_IER_RPU_0_MASK,	/* IPI mask of the master */
	5,				/* Number of preallocated slaves */
					/* Slave #1 */
	NODE_IPI_RPU_0,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS,			/* Current requirements */
	PM_CAP_ACCESS,			/* Default requirements */
					/* Slave #2 */
	NODE_TCM_0_A,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #3 */
	NODE_TCM_0_B,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #4 */
	NODE_TCM_1_A,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #5 */
	NODE_TCM_1_B,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
	/**********************************************************************/
	/* POWER SECTION */
	PM_CONFIG_POWER_SECTION_ID,	/* Section ID */
	4,				/* Number of power nodes */
					/* Power #1 */
	NODE_APU,			/* Power node ID */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
					/* Power #2 */
	NODE_RPU,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK,		/* Force power down permissions */
					/* Power #3 */
	NODE_FPD,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
					/* Power #4 */
	NODE_PLD,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK |
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
	/**********************************************************************/
	/* RESET SECTION */
	PM_CONFIG_RESET_SECTION_ID,	/* Section ID */
	116,				/* Number of resets */
					/* Reset ID, permissions */
	XILPM_RESET_PCIE_CFG, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PCIE_BRIDGE, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PCIE_CTRL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DP, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SWDT_CRF, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM5, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM4, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM3, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GDMA, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU_PP1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU_PP0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GT, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SATA, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU3_PWRON, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU2_PWRON, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU1_PWRON, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU0_PWRON, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APU_L2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU3, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DDR, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APM_FPD, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SOFT, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM3, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_QSPI, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_UART0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_UART1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SPI0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SPI1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SDIO0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SDIO1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_CAN0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_CAN1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_I2C0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_I2C1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC3, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SWDT_CRL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_NAND, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ADMA, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPIO, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IOU_CC, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TIMESTAMP, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_R50, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_R51, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_AMBA, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_OCM, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_PGE, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_CORERESET, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_CORERESET, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_HIBERRESET, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_HIBERRESET, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_APB, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_APB, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IPI, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APM_LPD, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RTC, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SYSMON, 0,
	XILPM_RESET_AFI_FM6, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_LPD_SWDT, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_FPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_DBG1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_DBG0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DBG_LPD, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DBG_FPD, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APLL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DPLL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_VPLL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IOPLL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPLL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_0, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_1, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_2, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_3, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_4, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_5, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_6, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_7, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_8, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_9, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_10, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_11, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_12, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_13, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_14, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_15, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_16, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_17, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_18, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_19, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_20, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_21, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_22, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_23, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_24, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_25, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_26, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_27, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_28, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_29, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_30, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_31, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_LS, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PS_ONLY, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PL, IPI_PMU_0_IER_APU_MASK | IPI_PMU_0_IER_RPU_0_MASK,
	/**********************************************************************/
	/* SET CONFIG SECTION */
	PM_CONFIG_SET_CONFIG_SECTION_ID,	/* Section ID */
	0,					/* Permissions to set config */
	/**********************************************************************/
	/* SHUTDOWN SECTION */
	PM_CONFIG_SHUTDOWN_SECTION_ID,		/* Section ID */
	0,					/* Number of shutdown types */
};

static const u32 PmConfigObjectSingle[] = {
	/**********************************************************************/
	/* HEADER */
	0,	/* Number of remaining words in the header */
	/**********************************************************************/
#ifdef __aarch64__
	/* MASTER SECTION */
	PM_CONFIG_MASTER_SECTION_ID,	/* Section ID */
	1,				/* Number of masters */
					/* Master #1 */
	NODE_APU,			/* Node ID of the master */
	IPI_PMU_0_IER_APU_MASK,		/* IPI mask associated with master */
	SUSPEND_TIMEOUT,		/* Suspend timeout */
	0,	/* Suspend permissions */
	0,	/* Wake permissions */

	/**********************************************************************/
	/* SLAVE SECTION */
	PM_CONFIG_SLAVE_SECTION_ID,	/* Section ID */
	53,				/* Number of slaves */

	NODE_TCM_1_B,			/* Node ID of the slave */
	0,	/* Usage policy */
	0,	/* Usage permissions */

	NODE_TCM_1_A,			/* Node ID of the slave */
	0,	/* Usage policy */
	0,	/* Usage permissions */

	NODE_TCM_0_B,			/* Node ID of the slave */
	0,	/* Usage policy */
	0,	/* Usage permissions */

	NODE_TCM_0_A,			/* Node ID of the slave */
	0,	/* Usage policy */
	0,	/* Usage permissions */

	NODE_DDR,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_L2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_OCM_BANK_3,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_OCM_BANK_2,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_OCM_BANK_1,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_OCM_BANK_0,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_GPU_PP_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GPU_PP_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_USB_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_USB_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_TTC_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_TTC_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_TTC_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_TTC_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SATA,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_ETH_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ETH_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_UART_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_UART_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SPI_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SPI_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_I2C_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_I2C_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SD_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_SD_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_DP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GDMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_ADMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_NAND,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_QSPI,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_GPIO,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_CAN_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_CAN_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_EXTERN,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_IPI_APU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,	/* Usage permissions */

	NODE_IPI_RPU_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,	/* Usage permissions */

	NODE_GPU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_PCIE,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_PCAP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_RTC,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_VCU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_APU_MASK,		/* Usage permissions */

	NODE_IPI_RPU_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_0,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_2,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_3,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_PL,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	/**********************************************************************/
	/* PREALLOC SECTION */
	PM_CONFIG_PREALLOC_SECTION_ID,	/* Section ID */
	1,				/* Number of masters */
					/* Master #1 */
	IPI_PMU_0_IER_APU_MASK,		/* IPI mask of the master */
	7,				/* Number of preallocated slaves */
					/* Slave #1 */
	NODE_IPI_APU,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS,			/* Current requirements */
	PM_CAP_ACCESS,			/* Default requirements */
					/* Slave #2 */
	NODE_DDR,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #3 */
	NODE_L2,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #4 */
	NODE_OCM_BANK_0,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #5 */
	NODE_OCM_BANK_1,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #6 */
	NODE_OCM_BANK_2,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
					/* Slave #7 */
	NODE_OCM_BANK_3,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	0,				/* Default requirements */
	/**********************************************************************/
	/* POWER SECTION */
	PM_CONFIG_POWER_SECTION_ID,	/* Section ID */
	4,				/* Number of power nodes */
					/* Power #1 */
	NODE_APU,			/* Power node ID */
	0,	/* Force power down permissions */
					/* Power #2 */
	NODE_RPU,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK,		/* Force power down permissions */
					/* Power #3 */
	NODE_FPD,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK,	/* Force power down permissions */
					/* Power #4 */
	NODE_PLD,			/* Power node ID */
	IPI_PMU_0_IER_APU_MASK,	/* Force power down permissions */
	/**********************************************************************/
	/* RESET SECTION */
	PM_CONFIG_RESET_SECTION_ID,	/* Section ID */
	116,				/* Number of resets */
					/* Reset ID, permissions */
	XILPM_RESET_PCIE_CFG, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_PCIE_BRIDGE, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_PCIE_CTRL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_DP, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SWDT_CRF, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM5, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM4, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM3, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_AFI_FM0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GDMA, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPU_PP1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPU_PP0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPU, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GT, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SATA, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU3_PWRON, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU2_PWRON, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU1_PWRON, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU0_PWRON, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_APU_L2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU3, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ACPU0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_DDR, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_APM_FPD, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SOFT, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GEM0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GEM1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GEM2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GEM3, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_QSPI, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_UART0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_UART1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SPI0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SPI1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SDIO0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SDIO1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_CAN0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_CAN1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_I2C0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_I2C1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_TTC0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_TTC1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_TTC2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_TTC3, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SWDT_CRL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_NAND, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_ADMA, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPIO, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_IOU_CC, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_TIMESTAMP, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_R50, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_R51, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_AMBA, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_OCM, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_PGE, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB0_CORERESET, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB1_CORERESET, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB0_HIBERRESET, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB1_HIBERRESET, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB0_APB, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_USB1_APB, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_IPI, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_APM_LPD, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RTC, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_SYSMON, 0,
	XILPM_RESET_AFI_FM6, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_LPD_SWDT, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_FPD, 0,
	XILPM_RESET_RPU_DBG1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_DBG0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_DBG_LPD, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_DBG_FPD, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_APLL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_DPLL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_VPLL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_IOPLL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPLL, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_0, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_1, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_2, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_3, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_4, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_5, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_6, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_7, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_8, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_9, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_10, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_11, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_12, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_13, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_14, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_15, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_16, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_17, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_18, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_19, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_20, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_21, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_22, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_23, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_24, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_25, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_26, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_27, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_28, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_29, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_30, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_GPO3_PL_31, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_RPU_LS, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_PS_ONLY, IPI_PMU_0_IER_APU_MASK,
	XILPM_RESET_PL, IPI_PMU_0_IER_APU_MASK,
#else
	/* MASTER SECTION */
	PM_CONFIG_MASTER_SECTION_ID,	/* Section ID */
	1,				/* Number of masters */
					/* Master #1 */
	NODE_RPU,			/* Node ID of the master */
	IPI_PMU_0_IER_RPU_0_MASK,	/* IPI mask associated with master */
	SUSPEND_TIMEOUT,		/* Suspend timeout */
	0,		/* Suspend permissions */
	0,		/* Wake permissions */
	/**********************************************************************/
	/* SLAVE SECTION */
	PM_CONFIG_SLAVE_SECTION_ID,	/* Section ID */
	53,				/* Number of slaves */

	NODE_TCM_1_B,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_1_A,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_0_B,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TCM_0_A,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_DDR,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_L2,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_OCM_BANK_3,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_2,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_1,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_OCM_BANK_0,		/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_GPU_PP_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_GPU_PP_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_USB_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_USB_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TTC_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_TTC_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_TTC_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_TTC_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_SATA,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_ETH_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_ETH_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_ETH_2,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_ETH_3,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_UART_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_UART_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_SPI_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_SPI_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_I2C_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_I2C_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_SD_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_SD_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_DP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_GDMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_ADMA,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_NAND,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_QSPI,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_GPIO,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_CAN_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_CAN_1,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_EXTERN,			/* Node ID of the slave */
	0,	/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_IPI_APU,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,	/* Usage permissions */

	NODE_IPI_RPU_0,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Usage permissions */

	NODE_GPU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_PCIE,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_PCAP,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_RTC,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_VCU,			/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_IPI_RPU_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	IPI_PMU_0_IER_RPU_0_MASK,		/* Usage permissions */

	NODE_IPI_PL_0,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_1,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_2,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_IPI_PL_3,		/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	NODE_PL,			/* Node ID of the slave */
	0,				/* Usage policy */
	0,		/* Usage permissions */

	/**********************************************************************/
	/* PREALLOC SECTION */
	PM_CONFIG_PREALLOC_SECTION_ID,	/* Section ID */
	1,				/* Number of masters */
					/* Master #1 */
	IPI_PMU_0_IER_RPU_0_MASK,	/* IPI mask of the master */
	7,				/* Number of preallocated slaves */
					/* Slave #1 */
	NODE_IPI_RPU_0,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS,			/* Current requirements */
	PM_CAP_ACCESS,			/* Default requirements */
					/* Slave #2 */
	NODE_TCM_0_A,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #3 */
	NODE_TCM_0_B,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #4 */
	NODE_TCM_1_A,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
					/* Slave #5 */
	NODE_TCM_1_B,			/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Default requirements */
						/* Slave #6 */
	NODE_OCM_BANK_0,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,				/* Default requirements */
					/* Slave #7 */
	NODE_OCM_BANK_3,		/* Node ID of the slave */
	PM_MASTER_USING_SLAVE_MASK,	/* Flag (is the slave currently used) */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,	/* Current requirements */
	PM_CAP_ACCESS | PM_CAP_CONTEXT,				/* Default requirements */
	/**********************************************************************/
	/* POWER SECTION */
	PM_CONFIG_POWER_SECTION_ID,	/* Section ID */
	4,				/* Number of power nodes */
					/* Power #1 */
	NODE_APU,			/* Power node ID */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
					/* Power #2 */
	NODE_RPU,			/* Power node ID */
	0,		/* Force power down permissions */
					/* Power #3 */
	NODE_FPD,			/* Power node ID */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
					/* Power #4 */
	NODE_PLD,			/* Power node ID */
	IPI_PMU_0_IER_RPU_0_MASK,	/* Force power down permissions */
	/**********************************************************************/
	/* RESET SECTION */
	PM_CONFIG_RESET_SECTION_ID,	/* Section ID */
	116,				/* Number of resets */
					/* Reset ID, permissions */
	XILPM_RESET_PCIE_CFG, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PCIE_BRIDGE, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PCIE_CTRL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DP, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SWDT_CRF, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM5, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM4, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM3, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_AFI_FM0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GDMA, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU_PP1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU_PP0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPU, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GT, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SATA, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU3_PWRON, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU2_PWRON, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU1_PWRON, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU0_PWRON, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APU_L2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU3, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ACPU0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DDR, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APM_FPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SOFT, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GEM3, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_QSPI, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_UART0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_UART1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SPI0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SPI1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SDIO0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SDIO1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_CAN0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_CAN1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_I2C0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_I2C1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TTC3, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SWDT_CRL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_NAND, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_ADMA, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPIO, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IOU_CC, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_TIMESTAMP, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_R50, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_R51, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_AMBA, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_OCM, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_PGE, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_CORERESET, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_CORERESET, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_HIBERRESET, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_HIBERRESET, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB0_APB, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_USB1_APB, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IPI, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APM_LPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RTC, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_SYSMON, 0,
	XILPM_RESET_AFI_FM6, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_LPD_SWDT, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_FPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_DBG1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_DBG0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DBG_LPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DBG_FPD, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_APLL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_DPLL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_VPLL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_IOPLL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPLL, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_0, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_1, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_2, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_3, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_4, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_5, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_6, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_7, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_8, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_9, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_10, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_11, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_12, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_13, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_14, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_15, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_16, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_17, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_18, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_19, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_20, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_21, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_22, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_23, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_24, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_25, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_26, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_27, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_28, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_29, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_30, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_GPO3_PL_31, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_RPU_LS, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PS_ONLY, IPI_PMU_0_IER_RPU_0_MASK,
	XILPM_RESET_PL, IPI_PMU_0_IER_RPU_0_MASK,
#endif
	/**********************************************************************/
	/* SET CONFIG SECTION */
	PM_CONFIG_SET_CONFIG_SECTION_ID,	/* Section ID */
	0,					/* Permissions to set config */
	/**********************************************************************/
	/* SHUTDOWN SECTION */
	PM_CONFIG_SHUTDOWN_SECTION_ID,		/* Section ID */
	0,					/* Number of shutdown types */
};


/**
 * PmSetConfig() - Set configuration object
 *
 * @return	Status of setting the configuration object (XST_SUCCESS or error
 * 		code)
 */
XStatus PmSetConfig(void)
{
	XStatus status;
	u32 val;

	val = pm_read(CONFIG_IPI_BUFF);

	if (CONFIG_OBJ_SINGLE == val)
		status = XPm_SetConfiguration((uintptr_t)PmConfigObjectSingle);
	else if (CONFIG_OBJ_MULTI == val)
		status = XPm_SetConfiguration((uintptr_t)PmConfigObjectMulti);
	else
		status = XPm_SetConfiguration((uintptr_t)XPm_ConfigObject);

	return status;
}
