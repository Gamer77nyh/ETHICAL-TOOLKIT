@echo off
title LEGEND USB Toolkit
:menu
cls
echo ================================
echo      LEGEND USB TOOLKIT
echo ================================
echo 1. System Info
echo 2. Network Info
echo 3. Drives Info
echo 4. Processes Running
echo 5. Exit
set /p choice=Choose option: 

if "%choice%"=="1" goto sys
if "%choice%"=="2" goto net
if "%choice%"=="3" goto drives
if "%choice%"=="4" goto proc
if "%choice%"=="5" exit

:sys
systeminfo
pause
goto menu

:net
ipconfig /all
netstat -ano
pause
goto menu

:drives
wmic diskdrive get model,serialnumber,size
wmic logicaldisk get name,description
pause
goto menu

:proc
tasklist
pause
goto menu
