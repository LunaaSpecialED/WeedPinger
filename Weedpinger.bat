@echo off
mode con cols=65 lines=32
setlocal enabledelayedexpansion
color 0a
title Login Program
 
:start1
cls
echo Input a number and press enter...
echo.
echo 1) Login
echo 2) Create New Account
set /p loginx1=">> "
if not %loginx1% leq 2 goto start1
if %loginx1% equ 1 goto login
echo What do you want your username to be?
set /p username1=">>> "
set v1f=0
 
:findspaces
set x=!v1f!
set Letter%v1f%=!username1:~%x%,1!
if "!Letter%v1f%!" equ " " (
echo.
echo.
echo Sorry, no spaces allowed in your username...
pause >nul
goto start1
)
if NOT "!Letter%v1f%!" equ "" (
set /a v1f=%v1f%+1
goto findspaces
)
echo What do you want your password to be?
set /p password1=">>> "
goto save
 
:login
cls
set /p name1=Username:
if not exist "%name1%.bat" (
echo Invalid Username...
pause >nul
goto start1
)
set /p pass1=Password:
call %name1%.bat
if not %password1% equ %pass1% (
echo Invalid Password
pause >nul
goto start1
)
goto menu
 
:save
(
echo set username1=%username1%
echo set password1=%password1%
)>%username1%.bat
goto start1
 
:menu
echo Logged in!
pause >nul
 
title Luna Weed Pinger ~ Public
echo off & cls
color 0a
echo _________________0
echo ________________00
echo _______________0000
echo ___0__________000000___________0
echo ___00_________000000___________0
echo ____0000______000000__________00
echo ____000000____0000000_____00000
echo _0_____0000000_000000_00000000_____0
echo _00______000000_00000_0000000_____00
echo _0000_____000000_000_000000_____0000
echo __000000000__0000_0_000_0_000000000
echo ____000000000__0_0_0_00000000000
echo ________000000000000000000000
echo ______________000_0_0000
echo ____________00000_0__00000
echo __________00_______0_______00
echo ____________________0
echo ==================
echo Lunaa's Public Weed Pinger
echo ==================
set /p IP=Enter The IP:
:top
PING -n 1 %IP% | FIND "TTL="
title Hotboxing %IP%
IF ERRORLEVEL 1 (SET in=0c & echo They got high N Fell asleep.)
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top