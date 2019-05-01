@echo off
setlocal
:PROMPT
SET AREYOUSURE=N
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
@echo on

C:\_tools\wget --http-user=username --http-passwd=password http://domain/en/index.html -P C:\temp\en


:END
@echo on
endlocal