::echo %time%: 1:22:54.70
::it didn't handle next day scenario

@echo off
::set /p target="Enter target time (HH:MM): "
set target="23:59"
for /f "tokens=1,2 delims=:" %%a in ("%time%") do set /a now=%%a*3600+%%b*60
for /f "tokens=1,2 delims=:" %%a in ("%target%") do set /a then=%%a*3600+%%b*60
set /a diff=%then%-%now%
if %diff% lss 0 set /a diff=%diff%+86400
echo Hibernating in %diff% seconds...
timeout /t %diff% /nobreak && shutdown /h /f