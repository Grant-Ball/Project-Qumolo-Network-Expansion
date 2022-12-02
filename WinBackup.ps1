# Check Update & Security Settings, For Developers, PowerShell, "Change execution policy to allow local PowerShell" is enabled!
# https://winbuzzer.com/2020/07/10/how-to-enable-powershell-scripts-in-windows-10-via-powershell-execution-policy-xcxwbt/

# Script: GigaRhino Win OS Backup
# Author: Scott Vipond
# Date: 1 Dec 22
# Purpose: User OS Backup

# Copies OS files from C:\ to E:\, will use Task Scheduler for frequency
ROBOCOPY.EXE "C:\Windows" "E:\OS_Backup"

#Script: GigaRhino Win User Backup
#Author: Scott Vipond
# Date: 1 Dec 22
# Purpose: User OS Backup

# Copies OS files from C:\ to E:\, will use Task Scheduler for frequency
# Need to change the User\ path to match the machine!
ROBOCOPY.EXE "C:\Users\UserName" "E:\User_Backup"

#Script: GigaRhino Win OS Backup
#Author: Scott Vipond
# Date: 2 Dec 22
# Purpose: User OS Backup

$Trigger= New-ScheduledTaskTrigger -Weekly -DaysofWeek Sunday -At 2am
$User= “"NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "ROBOCOPY.EXE C:\Windows 'E:\OS_Backup' /s > OSBackupLog.txt"
Register-ScheduledTask -TaskName "OSBackup1" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force

#Script: GigaRhino Win User Backup
#Author: Scott Vipond
# Date: 2 Dec 22
# Purpose: User Profile Backup

$Trigger= New-ScheduledTaskTrigger -Daily -At 12am
$User= "NT AUTHORITY\SYSTEM"
$Action= New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "ROBOCOPY.EXE C:\Users\SaleRep 'E:\User_Backup' /s > UserLog.txt"
Register-ScheduledTask -TaskName "UserBackup1" -Trigger $Trigger -User $User -Action $Action -RunLevel Highest -Force
