#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/michael/Documents/CAV_MinHeap/solution1/.autopilot/db/a.g.bc ${1+"$@"}
