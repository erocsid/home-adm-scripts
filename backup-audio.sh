#!/bin/sh

if [ ! -e "/maze-d/.mounted" ]
	then
	mount /maze-d
fi

/usr/bin/rsync -a --delete /archive/Audio/. /maze-d/Audio\ Backup/.
