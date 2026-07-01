:: zip.exe - Info-ZIP - https://infozip.sourceforge.net/

:: clean up zip file before zip
cd "C:\git_projects" && FOR /F "token=*" %%i IN ('dir /b *.zip') DO del "%%i"

:: zip all project folders (including all hidden subfolder e.g. .git)
cd "C:\git_projects" && FOR /F "token=*" %%i IN ('dir /b') DO zip -rS "%%i.zip" "%%i"

:: copy zip to onedrive sync folder
::robocopy /xo /eta "C:\git_projects" "C:\OneDrive\GIT Project Backup" *.zip
cd "C:\git_projects" && FOR /F "token=*" %%i IN ('dir /b *.zip') DO copy /Y "%%i" "C:\OneDrive\GIT Project Backup\%%i"

:: clean up zip file after copy to onedrive sync folder
cd "C:\git_projects" && FOR /F "token=*" %%i IN ('dir /b *.zip') DO del "%%i"