#!/bin/sh

if [ ! -e "/maze-d/.mounted" ]
	then
	mount /maze-d
fi

/usr/bin/rsync -av --delete /archive/Audio/. /maze-d/backups/Audio\ Backup/.
