# Script: GigaRhino Win OS Backup
# Author: Grant Ball
# Date: 12-2-22
# Purpose: User OS Backup

# Robocopy will copy the contents of the Sales account into the external hard drive E:
# /MIR will copy empty folders and delete folders in E: that have been deleted in C:
# If robocopy trys to copy a file thats in use it will stop and wait for the file to close.
# Robocopy will wait 30 seconds and retry for 1 million times by default.
# A million retries will take forever so thats where /R:5 and /W:15 come in.
# /R:5 means robo copy will try again only 5 times instead of a million.
# /W:15 means it will retry every 15 seconds instead of 30 seconds.

robocopy "C:\users\Sales" "E:\" /MIR /XJD /R:5 /W:15
