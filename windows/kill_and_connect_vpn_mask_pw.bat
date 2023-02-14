for /F "delims=" %%L in ('call "vpn.exe" -info ^| more +8 /S /T1 ^| cut -d " " -f 1') do (
    set OUTPUT=%%L
    goto :CONTINUE
)
:CONTINUE
"vpn.exe" -stop /s %OUTPUT%

@echo off
::set /p password=
set "psCommand=powershell -Command "$pword = read-host 'Set' -AsSecureString ; ^
    $BSTR=[System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); ^
        [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)""
for /f "usebackq delims=" %%p in (`%psCommand%`) do set password=%%p
cls

"vpn.exe" -start /h https://<domain> /u <username> /p %password%
