#!/bin/bash

SAMBA_MOUNTS="/maze-d"

for MOUNT_POINT in $SAMBA_MOUNTS
	do
	if [ ! -e "$MOUNT_POINT/.mounted" ]
		then
		mount $MOUNT_POINT
		sleep 5
	fi
	if [ ! -e "$MOUNT_POINT/.mounted" ]
		then
		echo $MOUNT_POINT seems to not be mounted! exiting
		exit
	fi
done

/usr/bin/rsync -avH --delete --delete-excluded --exclude=Dropbox/ --exclude=maze-discore/ --ignore-errors /home/discore/. /maze-d/backups/.

echo done!
