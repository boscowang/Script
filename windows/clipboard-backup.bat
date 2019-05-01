::short date: dd/MM/yyyy
::long time: HH:mm:ss
::echo %time% -> 13:54:30.40

mkdir C:\temp\%date:~-4,4%%date:~-7,2%%date:~-10,2%
set currentTime=%time::=_%
set currentTime=%currentTime:.=_%
::echo %currentTime%
powershell -Command Get-Clipboard -Raw > C:\temp\%date:~-4,4%%date:~-7,2%%date:~-10,2%\clipboard-backup-%currentTime%.txt
start notepad C:\temp\%date:~-4,4%%date:~-7,2%%date:~-10,2%\clipboard-backup-%currentTime%.txt