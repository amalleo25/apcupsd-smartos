#!/bin/bash

#PREFIX=/opt/local
PREFIX=/tmp/test1

mkdir -p $PREFIX/sbin
mkdir -p $PREFIX/etc
mkdir -p $PREFIX/man/man5
mkdir -p $PREFIX/man/man8

echo "Copying files..."

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
