#!/bin/bash


#Simple command to make a backup (exact replicate) of your data contained in /home/myuser directory
#Just specify the destination folder: e.g. a directory contained in an external disk drive
# e.g. /media/myuser/USB_device/Backup_myuser
#
#You can also specify one of more directories or files that you would like to skip for the backup
#Just include them in 'exclude.file' 	
#
#A bit more information
#-- delete option tells rsync to delete any files in the backup archive that have been deleted from the original location (/home/myuser)
#-v just tells rsync to show verbose output

rsync -av --exclude-from='exclude.file' --delete /home/myuser /media/myuser/USB_device/Backup_myuser


