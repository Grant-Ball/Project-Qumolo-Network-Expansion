#!/bin/bash

#Create backup
sudo borg create --stats /media/osint/BACKUP/home_backup::backup-$(date '+%Y-%m-%d-%S') /home

#List Borg Backups
#sudo borg list /media/osint/BACKUP/home_backup

#Delete Backup archive
#sudo borg delete /media/osint/home_backup:: (Archive Name)