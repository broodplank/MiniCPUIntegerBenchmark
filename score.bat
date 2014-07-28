@echo off
cls
cd /d %~dp0
echo Installing to phone...
echo.
echo Waiting for usb connection
files/adb wait-for-device
files/adb root
files/adb remount
files/adb push files/run /system/bin/run
files/adb shell "chmod 755 /system/bin/run"
files/adb push files/run2 /system/bin/run2
files/adb shell "chmod 755 /system/bin/run2"
files/adb push files/score /system/bin/score
files/adb shell "chmod 755 /system/bin/score"
echo.
echo Done!
echo Execute 'score' from Terminal Emulator on device to start benchmark