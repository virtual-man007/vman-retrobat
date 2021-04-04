@echo off
cls
echo ** VMAN Retro-Bliss LevelUp! videosnaps trimmer v1.0 by Bilu **
echo.
echo.
echo Press Ctlr-C to exit, any other key to continue.
pause
echo Trimming video snaps in all ROM folders... 
echo.
rem setlocal enableDelayedExpansion
set ENC=V:\_tools\ffmpeg\ffmpeg.exe
set TMPFILE=V:\temp.mp4
set LOGFILE=V:\videosnaps_log.txt
del /q %LOGFILE%
cd V:\RetroBat\roms\
FOR /R %%I IN (snap\*.mp4) DO (
ECHO %%I
%ENC% -ss 00:00:00 -y -i "%%I" -to 00:00:30 -c copy %TMPFILE% -loglevel error 2>> %LOGFILE%  
move /y %TMPFILE% "%%I" 1> nul
)
echo.
echo Complete.
echo.
:Abort
pause