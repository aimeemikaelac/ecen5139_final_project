#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/michael/Documents/CAV_Midterm_PriorityQueue/solution1/.autopilot/db/a.g.bc ${1+"$@"}
