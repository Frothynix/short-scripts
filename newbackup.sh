#!/bin/bash
#This script copies and creates a tarball of the minecraft server world on the backup disk
DATE=$(date)
FILENAME=$(date +%F) #Date format YYYY-MM-DD
cp -r /home/froth/minecraft/world /home/froth/backup/mcbackups/$FILENAME
cd /home/froth/backup/mcbackups/
tar -czvf $FILENAME.tar.gz $FILENAME
rm -r /home/froth/backup/mcbackups/$FILENAME
echo Backup complete on: $DATE >> /home/froth/backup/mcbackups/log
