#!/bin/bash

SAMBA_MOUNTS="/home/discore/maze-discore"

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

/usr/bin/rsync -av --delete --exclude-from=/root/adm/backup-maze.exclude --delete-excluded --ignore-errors /home/discore/maze-discore/. /home/discore/backups/maze/maze-discore/.

echo done!
