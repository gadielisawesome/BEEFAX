@ECHO OFF
title BEEFAX
echo WAIT!
timeout /t 1 /nobreak >nul

REM ----- INIT -----
color 0F
mode con: cols=65 lines=14
set url1=https://raw.githubusercontent.com/gadielisawesome/BEEFAX/main/pages/msg1.txt
set url2=https://raw.githubusercontent.com/gadielisawesome/BEEFAX/main/pages/msg2.txt
set url3=https://raw.githubusercontent.com/gadielisawesome/BEEFAX/main/pages/msg3.txt
set url4=https://raw.githubusercontent.com/gadielisawesome/BEEFAX/main/pages/msg4.txt
set url5=https://raw.githubusercontent.com/gadielisawesome/BEEFAX/main/pages/msg5.txt
REM ----- DONE -----





:get
title BEEFAX - CACHING CONTENT
md C:\BEEFAX >nul
curl -L %url1% > C:\BEEFAX\msg1.log
curl -L %url2% > C:\BEEFAX\msg2.log
curl -L %url3% > C:\BEEFAX\msg3.log
curl -L %url4% > C:\BEEFAX\msg4.log
curl -L %url5% > C:\BEEFAX\msg5.log

title BEEFAX - CONTENT IN MEMORY
cks
mode con: cols=65 lines=14
type C:\BEEFAX\msg1.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=14
type C:\BEEFAX\msg2.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=14
type C:\BEEFAX\msg3.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=14
type C:\BEEFAX\msg4.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=14
type C:\BEEFAX\msg5.log
timeout /t 10 /nobreak >nul
mode con: cols=65 lines=14
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
echo PLEASE WAIT
echo ---------------------------------------------------------------
goto get