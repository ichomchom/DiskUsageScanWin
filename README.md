# PowerShell Script

This is the simple script to get disk space of student. The script will prompt a message box when student log on the computer. If student use between 2GB - 4.9GB, it will promt the message to let student how much they have use and there the option to launch the program WinDirStat to clean up disk space. If student use more than 5GB the script will automaticly launch WinDirStat to clean up disk space.

## Getting Started

1. Put the script logon.ps1 in \\\samba\netlogon.
2. Put the bat file in C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp.


### Prerequisites

In other to clean up disk space, computer must have WinDirStat installed.

[Download WinDirStat here] (https://windirstat.net/download.html/)


### Changing PowerShell Script Location

Open batch.bat file

```
@echo off
mode con: cols=50 lines=10
Powershell.exe -executionpolicy remotesigned -File  \\samba\netlogon\logon.ps1
pause
```
Change ```\\samba\netlogon\``` as your desire location where you put the script logon.ps1.