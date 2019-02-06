# Auto-Pi-Backup
An easy solution to automate backing up Raspberry Pi SD Cards to a writeable image while they are still running.

These images can be restored in the event of a card failure, meaning you don't have to go through all the hassle of installing and configuring everything from scratch!

Guide to usage here: https://blog.galt.me/automatic-raspberry-pi-backups/

## Quick How to:

Download the pibackup.sh file.

Make it executable.

Edit the file and replace the values of:

"backuppath="  and  "daystokeep="

with your own location and days you wish to retain the backup images for. 

Test run.

If it's working as expected automate with cron or systemd.

