@echo off
echo.
echo Starting VMAN-Retro-Bliss_LevelUP! Enjoy! :)
powershell -Command "gci "V:\RetroBat\emulationstation\.emulationstation\video\*" -include *.mp4 -recurse | Get-Random -Count 1 | ForEach { Start-Process -NoNewWindow  "V:\_tools\ffmpeg\mplayer.exe `-nofontconfig` `-ontop` `-really-quiet` `-fs` `-ao` `sdl` $_" };Start-Sleep -s 42; V:\RetroBat\retrobat.exe"