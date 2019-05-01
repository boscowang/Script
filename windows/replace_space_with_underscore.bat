@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

SET "TARGET=*.pdf"
SET "PATTERN= "
SET "REPLACE=_"

For %%a in (%TARGET%) Do (
    Set "FILE=%%~a"
    Ren "%%a" "!FILE:%PATTERN%=%REPLACE%!"
)

Exit