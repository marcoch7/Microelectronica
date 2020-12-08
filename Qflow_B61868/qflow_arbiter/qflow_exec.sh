#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/marcoch7/Microelectronica/qflow_arbiter
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
/usr/lib/qflow/scripts/vesta.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
# /usr/lib/qflow/scripts/router.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
# /usr/lib/qflow/scripts/placement.sh -f -d /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
# /usr/lib/qflow/scripts/router.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1 $status
# /usr/lib/qflow/scripts/cleanup.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
# /usr/lib/qflow/scripts/display.sh /home/marcoch7/Microelectronica/qflow_arbiter arbiter || exit 1
