@echo off
set PACKAGE_FILE=%1
if "%PACKAGE_FILE%"=="" set /P PACKAGE_FILE=Input package file: 

where adbd.exe >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
setlocal enabledelayedexpansion
path %~dp0platform-tools;!PATH!
)

echo Uploading...
adb push "%PACKAGE_FILE%" /update.zip
if %ERRORLEVEL% NEQ 0 (
    goto END
)

echo Unpacking...
adb shell unzip -oq update.zip -x README.md
if %ERRORLEVEL% NEQ 0 (
    goto END
)
adb shell rm /update.zip

echo Installing...
adb shell chmod +x /install.sh
adb shell /install.sh
if %ERRORLEVEL% NEQ 0 (
    goto END
)
adb reboot
:END
pause
