# Auto-Pi-Backup
An easy solution to automate backing up Raspberry Pi SD Cards to a writeable image while they are still running.

These images can be restored in the event of a card failure, meaning you don't have to go through all the hassle of installing and configuring everything from scratch!

## How to use:

Download the pibackup.sh file:

`wget https://github.com/AdamGalt/Auto-Pi-Backup/raw/master/pibackup.sh`

Make it executable:

`sudo chmod +x pibackup.sh`

> -- Optional --
>
> Move the file to your scripts folder or an attached drive/network share you are using for backups. 

`mv pibackup.sh /media/storage/location/pibackup.sh`

Now edit the file and replace the values of:

"backuppath="  and  "daystokeep="

with your own location and days you wish to retain the backup images for. 

`nano pibackup.sh`

Then save and exit your editor.

You can now run the script using:

`sudo ./media/storage/location/pibackup.sh`

If you have moved the file, replace the location with your own.    
Once you have confirmed that it is working as expected you can automate this process using cron!

Edit the crontab for root:

`sudo crontab -e`

and add the entry:

`0 4 * * 0 /media/storage/location/pibackup.sh`

This will run the backup at 0400hrs every Sunday. If you are not familiar with cron then https://crontab.guru is a great site to help you work out how to set the values you want.
