#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/guan/Xilinx/Project/test/prj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
