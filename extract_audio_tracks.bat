@echo off
set FFMPEG=ffmpeg.exe

echo Please enter the MKV filename (example: recording123.mkv):
set /p INPUT=

if not exist "%INPUT%" (
    echo File not found: %INPUT%
    pause
    exit /b
)

%FFMPEG% -i "%INPUT%" -map 0:a:0 "%INPUT%_audio_fullmix.wav" -map 0:a:1 "%INPUT%_audio_desktop.wav" -map 0:a:2 "%INPUT%_audio_mic.wav"

echo Done!
pause
