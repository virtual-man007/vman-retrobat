@echo off
echo.
echo Apply Updates ~VMAN-Retro-Bliss_LevelUP! 1.0 ~ 
echo Terminating running Retrobat processes...
echo.
TASKKILL /F /IM retrobat.exe /IM emulationstation.exe /IM retroarch.exe 2>nul
DEL /F /Q %TEMP%\vman_update.tmp 2>nul
pushd V:\_tools
for /f "skip=3 eol=: delims=" %%F in ('dir /b /o-d vman-update-*.log') do @del "%%F" 2>nul
popd
echo Welcome to Virtualman Post-Fixes and Optimization Menu, By VMAN!
echo This script will update and optimize common Retrobat files to any other associated files for VMAN's build.
echo IMPORTANT! - RetroBat/Emulationstation will close automatically during the update process.
echo.
echo Refer to VMAN's github repo for all changes at https://github.com/virtual-man007/vman-retrobat
echo You also have option to run from cli v:\_tools\vman_rbl_updater.bat.
echo.
echo IMPORTANT! - Backup all your config files manually, however script will create backup of any existing files with extension of *.VM
echo.
echo Press any key to continue to start the update process - be patient . . .
pause >nul

powershell -Command "$ErrorActionPreference= 'silentlycontinue' ; (Get-Content 'V:\_tools\vman-retrobat-master\updates.txt') -notlike '#*' | ConvertFrom-Csv -Delimiter '|' | ForEach-Object {ForEach ($file in (Get-ChildItem -Path "$($_.Files)" -depth 0 -exclude *.VM)){Remove-Item -ErrorAction SilentlyContinue -Path $($file.fullname + '.VM');Copy-Item -Path $($file.fullname) -Destination $($file.fullname + '.VM');$filecontent = Get-Content -path $file ; if ($($_.LineNr)) {$filecontent[$($_.LineNr)] = $filecontent[$($_.LineNr)] -creplace $($_.SearchTxt),$($_.ReplaceTxt)} else {$filecontent = $filecontent -creplace $($_.SearchTxt),$($_.ReplaceTxt)} ; Set-Content $file.PSpath -Value $filecontent }}"

rem 1. 2021-07-11 - Fix Spider-Man The Video Game Arcade bezelproject decoration and for any other future missing overlays.- reported by Virtualman
robocopy V:\_tools\vman-retrobat-master\RetroBat\decorations\thebezelproject\games\ V:\RetroBat\decorations\thebezelproject\games\ /S /NFL /NDL /IS /MT:4
rem 2. 2021-07-18 - GameCube Controller mapping fix (x/y swap) and for any other future controller profiles for dolphin - reported by Virtualman
robocopy V:\_tools\vman-retrobat-master\RetroBat\emulators\dolphin-emu\ V:\RetroBat\emulators\dolphine-emu\ /S /NFL /NDL /IS /MT:4

echo.
echo Update Completed. Enjoy! :)
echo.
echo Press any key to continue . . .
pause >nul
 