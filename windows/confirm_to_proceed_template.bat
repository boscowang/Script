@echo off
setlocal
:PROMPT
SET AREYOUSURE=N
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
@echo on

::task to be done after confirmation
::start


::end


:END
@echo on
endlocal