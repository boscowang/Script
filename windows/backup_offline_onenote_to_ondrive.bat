:: zip.exe - Info-ZIP - https://infozip.sourceforge.net/
:: find.exe, cp.exe - GNU utilities for Win32 - https://unxutils.sourceforge.net/

:: recursively clean up zip file before zip
For /R "C:\OneNote Notebooks (Offline)" %%i IN (*.zip) do del "%%i"

:: recursively zip offline onenote (zip to prevent onedrive from processing the uploaded onenote)
For /R "C:\OneNote Notebooks (Offline)" %%i IN (*.*) do zip "%%i.zip" "%%i" 

:: copy zip to onedrive sync folder
::robocopy /xo /s /eta "C:\OneNote Notebooks (Offline)" "C:\OneDrive\OneNote Notebooks Backup" *.zip
cd "C:\OneNote Notebooks (Offline)" && FOR /F "token=*" %%i IN ('C:\UnxUtils\usr\local\wbin\find . -type f -name *.zip -printf "%%P\n"') DO cp --parents "%%i" "C:\OneDrive\OneNote Notebooks Backup"

:: recursively clean up zip file after copy to onedrive sync folder
For /R "C:\OneNote Notebooks (Offline)" %%i IN (*.zip) do del "%%i"
