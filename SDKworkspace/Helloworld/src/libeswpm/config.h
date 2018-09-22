/*********************************************************************
 * 2017 Xilinx, Inc.
 *
 * CONTENT
 * For testing the power management framework, a configuration object
 * needs to be provided to the PFW in order to enable the power management.
 * The configuration object used for the testing is defined in the
 * config.h/c files.
 *********************************************************************/

#ifndef LIBESWPM_CONFIG_H_
#define LIBESWPM_CONFIG_H_

#include <xstatus.h>

XStatus PmSetConfig(void);

#endif
