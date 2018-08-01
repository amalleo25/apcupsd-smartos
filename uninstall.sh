#!/bin/bash

SMF_PREFIX=/opt/custom/smf
PREFIX=/opt/local

echo "Removing files..."

rm $SMF_PREFIX/apcupsd.xml
rm $PREFIX/lib/svc/method/apcupsd.sh
rm $PREFIX/sbin/apcupsd
rm $PREFIX/sbin/apctest
rm $PREFIX/sbin/apcaccess
rm $PREFIX/sbin/smtp
rm -r $PREFIX/etc/apcupsd
rm $PREFIX/man/man5/apcupsd.conf.5
rm $PREFIX/man/man8/apcaccess.8
rm $PREFIX/man/man8/apccontrol.8
rm $PREFIX/man/man8/apctest.8
rm $PREFIX/man/man8/apcupsd.8

svcadm disable apcupsd
svccfg delete apcupsd

echo "Uninstall complete"
