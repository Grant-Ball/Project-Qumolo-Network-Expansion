# Script: GigaRhino Win OS Backup
# Author: Scott Vipond
# Date: 1 Dec 22
# Purpose: User OS Backup

# Copies OS files from C:\ to E:\, will use Task Scheduler for frequency
ROBOCOPY.EXE “C:\Windows” “E:\OS_Backup”

#Script: GigaRhino Win User Backup
#Author: Scott Vipond
# Date: 1 Dec 22
# Purpose: User OS Backup

# Copies OS files from C:\ to E:\, will use Task Scheduler for frequency
# Need to change the User\ path to match the machine!
ROBOCOPY.EXE “C:\Users\UserName” “E:\User_Backup”
