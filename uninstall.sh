#!/bin/bash

PREFIX=/opt/local

echo "Removing files..."

rm opt/custom/smf/apcupsd.xml
rm opt/custom/smf/smartos-setup.xml
rm $PREFIX/lib/svc/method/apcupsd.sh
rm $PREFIX/lib/svc/method/smartos-setup.sh
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

echo "Uninstall complete"
