#include <stdio.h>
#include <stdlib.h>
#include <jpeglib.h>

#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>

#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <asm/types.h>
#include <linux/videodev2.h>

#include <sys/time.h>
#include <sys/types.h>
#include <unistd.h>

#include <jpeglib.h>

#ifndef SRC_CAMREADER_H_
#define SRC_CAMREADER_H_

int readCam(char*, uint32_t, uint32_t);

#endif /* SRC_CAMREADER_H_ */
