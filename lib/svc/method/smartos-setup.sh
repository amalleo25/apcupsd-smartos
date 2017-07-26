#!/bin/bash
# Simple Ad Hoc SmartOS Setup Service

set -o xtrace

. /lib/svc/share/smf_include.sh

cd /

case "$1" in
'start')
    #### Insert code to execute on startup here.
    #hostname "smartos01" && hostname > /etc/nodename
    svcadm enable apcupsd
    ;;

'stop')
    ### Insert code to execute on shutdown here.
    ;;

*)
    echo "Usage: $0 { start | stop }"
    exit $SMF_EXIT_ERR_FATAL
    ;;
esac
exit $SMF_EXIT_OK
