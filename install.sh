#!/bin/bash

PREFIX=/opt/local

mkdir -p /opt/custom/smf $PREFIX/lib/svc/method $PREFIX/sbin \
$PREFIX/etc $PREFIX/man/man5 $PREFIX/man/man8  2>/dev/null

echo "Copying files..."

cp custom/smf/apcupsd.xml /opt/custom/smf/
cp custom/smf/smartos-setup.xml /opt/custom/smf/
cp lib/svc/method/apcupsd.sh $PREFIX/lib/svc/method/
cp lib/svc/method/smartos-setup.sh $PREFIX/lib/svc/method/
cp sbin/apcupsd $PREFIX/sbin/
cp sbin/apctest $PREFIX/sbin/
cp sbin/apcaccess $PREFIX/sbin/
cp sbin/smtp $PREFIX/sbin/
cp -a etc/apcupsd $PREFIX/etc/
cp man/man5/apcupsd.conf.5 $PREFIX/man/man5/
cp man/man8/apcaccess.8 $PREFIX/man/man8/
cp man/man8/apccontrol.8 $PREFIX/man/man8/
cp man/man8/apctest.8 $PREFIX/man/man8/
cp man/man8/apcupsd.8 $PREFIX/man/man8/

echo "Install complete"
