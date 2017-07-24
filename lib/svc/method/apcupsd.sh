#! /bin/sh
#
# apcupsd      This shell script takes care of starting and stopping
#	             the apcupsd UPS monitoring daemon.
#
# chkconfig: 2345 20 99
# description: apcupsd monitors power and takes action if necessary
#
#  Update October 7th, 2001 - CPE
#
###
###	This is the standard apcupsd startup scrip thats been
###	modified to work with Solaris/SMF and should be placed in
###	"/lib/svc/method/" chmod 0555 & chown root:bin
###
###     Modified for use with SMF  15 December 2008, Robert Hartzell
###	Comments/Feedback:	<[hidden email]>
###
### Removed lock file

set -o xtrace

. /lib/svc/share/smf_include.sh

APCPID=/var/run/apcupsd.pid
POWERFAILDIR=/opt/local/etc/apcupsd
SBINDIR=/opt/local/sbin

case "$1" in
    start)
        rm -f ${POWERFAILDIR}/powerfail
        ${SBINDIR}/apcupsd || exit $SMF_EXIT_ERR_FATAL
    ;;
    stop)
        ctid=`svcprop -p restarter/contract $SMF_FMRI`
        if [ -n "$ctid" ]; then
            smf_kill_contract $ctid TERM
        fi
        rm -f ${APCPID}
    ;;
    *)
    echo "Usage: $0 {start|stop}"
    exit $SMF_EXIT_ERR_CONFIG
esac

exit $SMF_EXIT_OK
