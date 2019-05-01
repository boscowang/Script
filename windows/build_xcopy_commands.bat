@echo off
SETLOCAL  ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

:: FILE WITH LIST OF FILES TO BE COPIED
SET INPUT=C:\tmp\xcopy_in.txt
:: C:\tmp\root\file1.txt
:: C:\tmp\root\folder2\file2.txt
:: C:\tmp\root\folder3\file3.txt
:: C:\tmp\root\folder4\file4.txt
:: ROOT OF INPUT PATH
SET INPUT_ROOT=C:\tmp\root\
:: TARGET LOCATION OF FILES TO BE COPIED TO
SET TARGET_ROOT=C:\tmp\target\
:: FILE WITH LIST OF XCOPY COMMANDS BASED ON INPUT
SET OUTPUT=C:\tmp\out.cmd
:: C:\tmp\target\file1.txt
:: C:\tmp\target\folder2\file2.txt
:: C:\tmp\target\folder3\file3.txt
:: C:\tmp\target\folder4\file4.txt

IF EXIST %OUTPUT% DEL %OUTPUT%
FOR /F "TOKENS=* DELIMS=" %%E IN ('TYPE %INPUT%') DO (
	SET "INPUT_PATH=%%E"
	SET "TARGET_PATH=!INPUT_PATH:%INPUT_ROOT%=%TARGET_ROOT%!"
	ECHO XCOPY /F /Y "%%E" "!TARGET_PATH!*" >> %OUTPUT%
)
ENDLOCAL
