#!/bin/sh

FILE_NUM="4"

if [ $(cat /proc/scsi/rr2310_00/$FILE_NUM | egrep Normal | wc -l) != 5 ]; then
	cat /proc/scsi/rr2310_00/$FILE_NUM | mail -s "circles.chalkdust.org HPT RAID5 alert" discore@gmail.com
fi
