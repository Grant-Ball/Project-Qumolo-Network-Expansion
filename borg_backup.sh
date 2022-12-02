#!/bin/bash

#Create backup (Change pathway to location of borg repository)
sudo borg create --stats /media/osint/BACKUP/home_backup::backup-$(date '+%Y-%m-%d-%S') /home

#List Borg Backups (Change pathway to location of borg repository)
#sudo borg list /media/osint/BACKUP/home_backup

#Delete Backup archive (Change pathway to location of borg repository nad archive name to be deleted)
#sudo borg delete /media/osint/BACKUP/home_backup:: (Archive Name)

#Extract Backup to Home directory 
#sudo borg extract --strip-components 2 /media/osint/BACKUP/home_backup:: (NAME OF BACKUP ARCHIVE) /home/osint/
