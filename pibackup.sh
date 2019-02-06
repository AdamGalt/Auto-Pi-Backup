#!/bin/bash
#
# ---------- Auto RasPi Backups ------------
# --------------------------------------------------
# This script will create images that can be burned
# onto the sdcard in the event of a card failure
# --------------------------------------------------
# --------------------------------------------------
#
# Change the values below for your setup:
#
# "backuppath" sets the location for your backups to be stored.
#
# "daystokeep" sets the number of days that files will be kept
#              before being deleted.
#
#
backuppath=/media/blackbox/UPLOADS/Adam/raspibackups
daystokeep=14

if [[ ! $(whoami) =~ "root" ]]; then
echo "***********************"
echo "* FAILED: I NEED ROOT *"
echo "***********************"
echo "** RUN AGAIN AS ROOT **"
echo "***********************"
exit
fi

# Check FS if image is restored
touch /boot/forcefsck

# Backup
dd if=/dev/mmcblk0 of=$backuppath/$HOSTNAME.$(date +%d%m%Y).img bs=1M

# Remove Check
rm /boot/forcefsck

# Clean up
find $backuppath/$HOSTNAME.*.img -mtime +$daystokeep -type f -delete
