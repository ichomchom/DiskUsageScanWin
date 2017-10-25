
@echo off
mode con: cols=50 lines=10
Powershell.exe -executionpolicy remotesigned -File  \\samba\netlogon\logon.ps1
pause
