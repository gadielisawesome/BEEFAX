@ECHO OFF
title BEEFAX
echo WAIT!
timeout /t 1 /nobreak >nul

REM ----- INIT -----
color F0
mode con: cols=65 lines=15
REM Replace this with your fork if you want too!
set url=gadielisawesome/BEEFAX
REM ----- DONE -----

:get
title BEEFAX - CACHING CONTENT
md C:\BEEFAX >nul
curl -L https://raw.githubusercontent.com/%url%/main/pages/msg1.txt > C:\BEEFAX\msg1.log
curl -L https://raw.githubusercontent.com/%url%/main/pages/msg2.txt > C:\BEEFAX\msg2.log
curl -L https://raw.githubusercontent.com/%url%/main/pages/msg3.txt > C:\BEEFAX\msg3.log
curl -L https://raw.githubusercontent.com/%url%/main/pages/msg4.txt > C:\BEEFAX\msg4.log
curl -L https://raw.githubusercontent.com/%url%/main/pages/msg5.txt > C:\BEEFAX\msg5.log
curl -L https://raw.githubusercontent.com/%url%/main/pages/off.air > C:\BEEFAX\off.air
type C:\BEEFAX\off.air | find /i "false"
if "%ERRORLEVEL%"=="1" goto offair

title BEEFAX - CONTENT IN MEMORY
cls
mode con: cols=65 lines=15
type C:\BEEFAX\msg1.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=15
type C:\BEEFAX\msg2.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=15
type C:\BEEFAX\msg3.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=15
type C:\BEEFAX\msg4.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=15
type C:\BEEFAX\msg5.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=15
echo ---------------------------------------------------------------
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo PLEASE WAIT
echo ---------------------------------------------------------------
goto get

:offair
title BEEFAX - OFF AIR
cls
echo ---------------------------------------------------------------
echo.
echo BEEFAX IS CURRENTLY OFF THE AIR
echo IT WILL BE BACK AS SOON AS POSSIBLE 
echo.
echo SORRY ABOUT THE DISRUPTION.
echo THIS SCREEN WILL REFRESH EVERY 30 SECONDS TO RETRY.
echo.
echo.
echo.
echo.
echo.
echo.
echo ---------------------------------------------------------------
timeout /t 30 /nobreak >nul
goto get