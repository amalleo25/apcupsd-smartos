# apcupsd-smartos

This script will setup apcupsd in the global zone as a network slave.

Tested on joyent_20180719T001436Z

At the time of this write up, 3.14.14 is the latest version of apcupsd.

http://www.apcupsd.org/

Configured with the following options:
```
./configure --prefix=/opt/local --sbindir=/opt/local/sbin --sysconfdir=/opt/local/etc/apcupsd \
--mandir=/opt/local/man --with-log-dir=/var/log --without-lock-dir --with-pwrfail-dir=/opt/local/etc/apcupsd \
--disable-cgi --without-cgi-bin --disable-apcsmart --disable-dumb --disable-modbus --with-nisip=127.0.0.1 \
--with-upscable=ether --with-upstype=net
```
## Installation
Copy repo to global zone with scp or rsync
```
cd apcupsd-smartos-master
./install.sh
```
Edit apcupsd.conf and change DEVICE to apcupsd master (e.g., DEVICE 192.168.1.1:3551)
```
vi /opt/local/etc/apcupsd/apcupsd.conf
```
Manaully start the service or reboot SmartOS
```
svcadm enable apcupsd
```

Run apcaccess command to test for proper connectivity.
```
APC      : 001,035,0847
DATE     : 2017-07-24 04:03:39 +0000  
HOSTNAME : XXXXXXXX
VERSION  : 3.14.14 (31 May 2016) sun
UPSNAME  : APCUPS
CABLE    : Ethernet Link
DRIVER   : NETWORK UPS Driver
UPSMODE  : Stand Alone
STARTTIME: 2017-07-07 23:50:41 +0000  
MASTERUPD: 2017-07-24 04:03:39 +0000  
MASTER   : XXXXX:3551
MODEL    : Smart-UPS 750
STATUS   : ONLINE SLAVE 
LINEV    : 120.9 Volts
LOADPCT  : 26.6 Percent
BCHARGE  : 100.0 Percent
TIMELEFT : 43.0 Minutes
MBATTCHG : 65 Percent
MINTIMEL : 30 Minutes
MAXTIME  : 0 Seconds
OUTPUTV  : 120.9 Volts
ITEMP    : 33.3 C
BATTV    : 27.0 Volts
LINEFREQ : 60.0 Hz
NUMXFERS : 0
TONBATT  : 0 Seconds
CUMONBATT: 0 Seconds
XOFFBATT : N/A
SELFTEST : OK
STATFLAG : 0x05000408
SERIALNO : XXXXXXXXXXXX
BATTDATE : 2015-08-02
NOMOUTV  : 120 Volts
NOMPOWER : 500 Watts
FIRMWARE : UPS 09.3 / 00.4
END APC  : 2017-07-24 04:04:10 +0000
```
