@echo off
title Multi-Tool - by Kristaps
chcp 65001
:menu
cls
echo.
echo.     
echo			███╗   ███╗██╗   ██╗████████╗██╗     ██╗    ████████╗ ██████╗  ██████╗ ██╗     
echo			████╗ ████║██║   ██║╚══██╔══╝██║     ██║    ╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo			██╔████╔██║██║   ██║   ██║   ██║     ██║       ██║   ██║   ██║██║   ██║██║     
echo			██║╚██╔╝██║██║   ██║   ██║   ██║     ██║       ██║   ██║   ██║██║   ██║██║     
echo			██║ ╚═╝ ██║╚██████╔╝   ██║   ███████╗██║       ██║   ╚██████╔╝╚██████╔╝███████╗
echo			╚═╝     ╚═╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo.
echo.                                                                               
                                                                               
                                                                               

echo 1. Display IP Address
echo 2. Display System Info
echo 3. Check Network Connectivity
echo 4. Get Weather Information
echo 5. Exit
echo.
set /p choice="Choose an option (1-5): "

if "%choice%"=="1" goto ip
if "%choice%"=="2" goto systeminfo
if "%choice%"=="3" goto pingtest
if "%choice%"=="4" goto weather
if "%choice%"=="5" goto exit

echo Invalid choice. Please choose a number from 1 to 5.
pause
goto menu

:ip
echo.
echo "Your IP Address:"
ipconfig | findstr /i "IPv4"
pause
goto menu

:systeminfo
echo.
echo "System Information:"
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" /C:"System Type"
pause
goto menu

:pingtest
echo.
echo "Checking Network Connectivity to Google:"
ping google.com
pause
goto menu

:weather
set /p location="Enter a city or location for weather info: "
echo.
echo "Fetching weather information for %location%..."
curl -s "wttr.in/%location%?format=3"
echo.
pause
goto menu

:exit
exit
