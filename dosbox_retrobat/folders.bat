echo Run this only once, else you might need to manually rename all your folders!
pause
v:
cd v:\roms
ren pc dos
cd dos
del *.sh
del *.OFF
move /Y dosbox-SVN.conf %localappdata%\DOSBox\dosbox-SVN.conf
FOR /R %f IN (AUTOEXEC.BAT) DO REN %f dosbox.bat
FOR /D %f IN (*) DO REN %f %f.pc
copy /Y V:\roms\dos\Tomb_Raider_Gold.pc\TOMBPATH\dosbox.bat V:\roms\dos\Tomb_Raider_Gold.pc
ren Tools.pc Tools
ren snap.pc snap
ren wheel.pc wheel
ren mixart.pc mixart
pause