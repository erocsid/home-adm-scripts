#!/bin/bash

SAMBA_MOUNTS="/maze-d
/home/discore/dropbox
/home/discore/maze-discore"

for MOUNT_POINT in $SAMBA_MOUNTS
	do
	if [ ! -e "$MOUNT_POINT/.mounted" ]
		then
		mount $MOUNT_POINT
	fi
done

/usr/bin/rsync -av --delete /home/discore/backups/maze/dropbox/. /home/discore/backups/maze/dropbox.1/.
/usr/bin/rsync -av --delete /home/discore/dropbox/. /home/discore/backups/maze/dropbox/.

/usr/bin/rsync -av --delete --exclude-from=/root/adm/backup-maze.exclude --ignore-errors /home/discore/maze-discore/. /home/discore/backups/maze/maze-discore/.

echo done!
