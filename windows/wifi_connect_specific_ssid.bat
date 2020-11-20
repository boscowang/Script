@echo off
IF "%1"=="1" GOTO ACCESS_POINT_1
IF "%1"=="2" GOTO ACCESS_POINT_2
IF "%1"=="3" GOTO ACCESS_POINT_3
echo wrong parameter
pause
GOTO END

:ACCESS_POINT_1
@echo on
netsh wlan connect name="SSID1"
GOTO END

:ACCESS_POINT_2
@echo on
netsh wlan connect name="SSID2"
GOTO END

:ACCESS_POINT_3
@echo on
netsh wlan connect name="SSID3"
GOTO END

:END
@echo on
