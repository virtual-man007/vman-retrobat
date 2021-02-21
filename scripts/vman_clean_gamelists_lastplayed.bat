@echo off
echo ** VMAN Retro-Bliss LevelUp! gamelist.xml cleaner v1.0 by Bilu **
echo.
echo Cleaning gamelist.xml statistics in all ROM folders... 
powershell -Command "Invoke-Command -scriptblock {$ErrorActionPreference = 'SilentlyContinue';Get-Childitem V:\RetroBat\roms\gamelist.xml -depth 1 | ForEach {Set-Content -Path $_ -Value(get-content -Path $_ | Select-String -Pattern '^.*</playcount>$|^.*</lastplayed>|^.*</gametime>$' -NotMatch)}}"
echo.
echo Complete.
echo.
pause