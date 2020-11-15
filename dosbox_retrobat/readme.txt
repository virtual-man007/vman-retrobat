***************************
****** IMPORTANT **********
***************************
Please follow instructions in sequential order and do not skip steps if you don't know the consequences! 


Reference
=========
https://www.reddit.com/r/OdroidGo/comments/ftk4ib/guide_how_to_run_dos_games_on_oga_batocera/

Instructions #1
===============
1) Copy dosbox.conf to V:\RetroBat\emulators\dosbox\

2) Copy gamelist.xml to V:\roms\dos\

3) Copy folders.bat to V:\roms and execute
NOTE: This step will rename folder V:\roms\pc to V:\roms\dos for RetroBat integration. 
NOTE2: Please execute only once as it add extension .pc to all folders, else you'll have to manually rename them from .pc.pc back to .pc !   

Intructions #2 Daggerfall specific issue
========================================
1) Edit and replace in V:\RetroBat\roms\dos\The_Elder_Scrolls_II_Daggerfall.pc\dosbox.bat the line:
mount D: /home/pi/RetroPie/roms/pc/The_Elder_Scrolls_II_Daggerfall/DF/DFCD -t cdrom -label Daggerfall
with the line:
mount D: V:\RetroBat\roms\dos\The_Elder_Scrolls_II_Daggerfall.pc\DF\DFCD -t cdrom -label Daggerfall

-----------------
Retrobat behavior
=================
- Scans files or folders with extension defined in es_systems.*.cfg templates, matches gamelist.xml when file/folder exists.
- Appends "/dosbox.bat" to results of previous step.

Dosbox setup
============
Retrobat uses standalone DOSBox-SVN, generates command lines like: 
V:\RetroBat\emulators\dosbox\dosbox.exe "V:\RetroBat\roms\dos\Alien_Carnage.pc\dosbox.bat" -conf "V:\RetroBat\emulators\dosbox\dosbox.conf" -fullscreen -noconsole -exit -c "set ROOT=V:\RetroBat\roms\dos\Alien_Carnage.pc"

The generated command line option -conf "V:\RetroBat\emulators\dosbox\dosbox.conf" points to a non-existing file.
As fallback Dosbox will generate and use C:\Users\youruser\AppData\Local\DOSBox\dosbox-SVN.conf instead.

Changes made
============
- Rename V:\RetroBat\roms\pc to V:\RetroBat\roms\dos 
- Append to all game folder the extension .pc 
- Removed unnecessary .sh and .OFF files 
- Updated paths in gamelist.xml based in the renamed folders
- Manually updated es_systems.*.cfg to scan for .pc extension  
  
