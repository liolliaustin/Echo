#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.g.bc ${1+"$@"}
