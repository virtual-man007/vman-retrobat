@echo off
echo Run this only once, required for some Teknoparrot games!
echo.
pause

mklink /J C:\FF V:\RetroBat\roms\teknoparrot\FNF.parrot
mklink /J C:\FNFSC V:\RetroBat\roms\teknoparrot\FNFSC.parrot
mklink /J C:\SCJC V:\RetroBat\roms\teknoparrot\SnoCross.parrot 

echo mklink created
pause