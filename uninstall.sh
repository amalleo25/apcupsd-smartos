#!/bin/bash

#PREFIX=/opt/local
PREFIX=/tmp/test1

echo "Removing files..."

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
