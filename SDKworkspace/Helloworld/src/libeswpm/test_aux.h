/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Macros commonly used in tests
 *********************************************************************/

#ifndef LIBESWPM_TEST_AUX_H_
#define LIBESWPM_TEST_AUX_H_

#include <xstatus.h>
#include <stdlib.h>
#include <pm_client.h>
#include <pm_api_sys.h>
#include <libeswpm/gic_setup.h>
#include <libeswpm/pm_ipi.h>

#define XIL_FAIL(numErrors) xil_printf("\r\nREGRESSION TEST FAIL WITH %d ERRORS.\r\n", numErrors)

/*
 * We use halt (infinite while loop) instead of exiting with error code because
 * when test exits, test is re-run by the enviroment and it is hard/impossible
 * to capture error. When halting the test, check script in python will report
 * failure due to timeout expiration.
 */
#define HALT_IF_ERR(status, msg, ...)				\
		if (XST_SUCCESS != status) {			\
			pm_print("#%d " msg, status, ##__VA_ARGS__); \
			XIL_FAIL(1);				\
			exit(status);				\
		}

/* Stringify */
#define STR(x)   #x
/**
 * Stringify the result of expansion of a macro argument
 * (two level stringification)
 */
#define SHOW_DEFINE(x) STR(x)

/*
 * SRAM memory is used for saving context of bss and data sections while PU is
 * suspended. Except for this purpose, SRAM used for context saving is not used
 * in test-cases for other purposes. Linker file is not modified to allocate
 * memory in SRAM, although that suppose to be done in real-life (but it is not
 * done as linker file is common for all tests and we didn't want to mess it
 * up). For context saving, APU uses OCM (starting from bank 0), and RPU uses
 * TCM.
 */
/* FIXME: Migrate to defines from xparameters.h */
#define OCM_BASE	0xFFFC0000U
#define TCM_BASE	0x20000U

#ifdef __aarch64__
	#define CONTEXT_MEM_BASE	OCM_BASE
#elif __arm__
	#define CONTEXT_MEM_BASE	TCM_BASE
#endif

#define SYNC_KEY	0x5A

/* FIXME Address at which the APU sees TCM (replace with xparameters when available) */
#define APU_TCM_BASEADDR	0xFFE00000

/* Base addresses of RPU's exception vectors */
#define RPU_LOVEC		0x0
#define RPU_HIVEC		0xFFFF0000

/*********************************************************************
 * Function declarations
 ********************************************************************/
static inline void wfi(void)
{
	pm_print("Going to WFI...\n");
	__asm__("wfi");
	pm_print("WFI exit...\n");
};

void PmTestInit(XScuGic *const GicInst, XIpiPsu *const IpiInst);

void SyncDeclareReady(void);
void SyncWaitForReady(const u32 mask);
void SyncClearReady(const u32 mask);
void SyncWaitForValue(const u32 value);

#ifdef __aarch64__
void LoadImage(const u64 startAddr);
#endif

void RequestFpdSlaves(void);
void ReleaseFpdSlaves(void);

#endif
