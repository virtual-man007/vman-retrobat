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

rem 5. 2021-01-04 - Fix red smudges in Amiga and PS2 bezels - reported by bilu
copy /Y V:\_tools\vman-retrobat-master\RetroBat\system\decorations\default_unglazed\amiga.png V:\RetroBat\decorations\default\systems\amiga.png
copy /Y V:\_tools\vman-retrobat-master\RetroBat\system\decorations\default_unglazed\ps2.png V:\RetroBat\decorations\default\systems\ps2.png

echo.
echo Update Completed. Enjoy! :)
echo.
echo Press any key to continue . . .
pause >nul
 