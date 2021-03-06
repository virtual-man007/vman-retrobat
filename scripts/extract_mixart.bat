@echo off
cls
echo ** VMAN Retro-Bliss LevelUp! mixart extractor v1.0 by Bilu **
echo.
echo.
echo Press Ctlr-C to exit, any other key to continue.
pause
echo Extracting mixart from video snaps ... 
echo.
rem setlocal enableDelayedExpansion
set ENC=V:\_tools\ffmpeg\ffmpeg.exe
set LOGFILE=V:\mixart_extract_log.txt
del /q %LOGFILE%
cd V:\RetroBat\roms\fpinball
FOR /R %%I IN (snap\*.mp4) DO (
ECHO %%I
rem %ENC% -y -ss 00:00:05 -i "%%I" -vframes 1 ".\mixart\%%~nI.png" -loglevel error 2
%ENC% -y -ss 00:00:05 -i "%%I" -vframes 1 ".\mixart\%%~nI.png" -loglevel error 2>> %LOGFILE%  
)
echo.
echo Complete.
echo.
:Abort
pause