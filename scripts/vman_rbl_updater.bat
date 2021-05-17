@echo off
echo.
set VERSION=** VMAN Retro-Bliss LevelUp! Updater v1.3 by Bilu **
IF EXIST %TEMP%\vman_update.tmp (
echo %VERSION%
echo.
echo Starting updates, logs available at V:\_tools 
powershell -command "$ErrorActionPreference= 'silentlycontinue' ; V:\_tools\vman-retrobat-master\apply_updates.bat 2>&1 | tee ('V:\_tools\vman-update-{0}.log' -f (Get-Date -format 'yyyyMMddHHmm'))"
) ELSE (
cls
echo %VERSION%
echo.
echo Fetching latest updates...
echo Updating script...
cd V:\_tools
powershell -Command "$ErrorActionPreference= 'silentlycontinue' ; Remove-Item -Path '.\vman-retrobat-master' -Recurse;Invoke-Command -scriptblock {wget https://github.com/virtual-man007/vman-retrobat/archive/master.zip -Outfile vman-retrobat.zip;Expand-Archive -Path 'vman-retrobat.zip' -DestinationPath '.';Remove-Item -Path 'vman-retrobat.zip'}"
copy /y V:\_tools\vman-retrobat-master\scripts\vman_rbl_updater.bat V:\_tools > nul
type NUL > %TEMP%\vman_update.tmp
echo Script updated.
V:\_tools\vman-retrobat-master\scripts\vman_rbl_updater.bat
)