for /F "delims=" %%L in ('call "vpn.exe" -info ^| more +8 /S /T1 ^| cut -d " " -f 1') do (
    set OUTPUT=%%L
    goto :CONTINUE
)
:CONTINUE
"vpn.exe" -stop /s %OUTPUT%
"vpn.exe" -start /h https://<domain> /u <username> /p "<password>"
