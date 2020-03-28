#!/bin/bash
#Copies world files to another folder
DATE=$(date)
FILENAME=$(date +%F)
cp -r /home/froth/minecraft/world /home/froth/backup/mcbackups/$FILENAME
cd /home/froth/backup/mcbackups/
tar -czvf $FILENAME.tar.gz $FILENAME
echo Backup complete on: $DATE >> /home/froth/backup/mcbackups/log
