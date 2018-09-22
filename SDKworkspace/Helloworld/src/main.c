/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * Hello World example 
 *********************************************************************/

#include <libeswpm/test_aux.h>
#include "pm_client.h"

static XScuGic GicInst;
static XIpiPsu IpiInst;

int main(void)
{
	/* Initialize GIC, IPIs, and Xilpm */
	PmTestInit(&GicInst, &IpiInst);

	pm_print("Hello World!\n");

	return 0;
}
