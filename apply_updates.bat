@echo off
echo.
echo Apply Updates ~VMAN-Retro-Bliss_LevelUP! 1.0 ~ 
echo Terminating running Retrobat processes...
echo.
TASKKILL /F /IM retrobat.exe /IM emulationstation.exe /IM retroarch.exe 2>nul
DEL /F /Q %TEMP%\vman_update.tmp 2>nul
echo Welcome to Virtualman Post-Fixes and Optimization Menu, By VMAN!
echo This script will update and optimize common Retrobat files to any other associated files for VMAN's build.
echo.
echo Refer to VMAN's github repo for all changes at https://github.com/virtual-man007/vman-retropie
echo You can run from cli vman_rbl_updater.bat and it will close Retrobat/Emulationstation automatically.
echo.
echo IMPORTANT! - I suggest you backup all your config files manually, however script will create backup of any existing files with extension of *.VM
echo.
echo Press any key to continue . . .
pause >nul

rem #2020-11-21 - es_systems master cfg update for ports by @bilu
rem cd V:\_tools\vman-retrobat-master\
rem copy /y .\RetroBat\system\templates\emulationstation\*.cfg V:\RetroBat\system\templates\emulationstation\

echo.
echo Update Completed. Enjoy! :)
echo.
echo Press any key to continue . . .
pause >nul
 