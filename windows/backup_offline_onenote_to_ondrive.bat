:: recursively zip offline onenote (zip to prevent onedrive from processing the uploaded onenote)
For /R "C:\OneNote Notebooks (Offline)" %%i IN (*.*) do zip "%%i.zip" "%%i" 

:: copy zip to onedrive sync folder
robocopy /xo /s /eta "C:\OneNote Notebooks (Offline)" "C:\OneDrive\OneNote Notebooks Backup" *.zip

:: recursively clean up zip file after copy to onedrive sync folder
For /R "C:\OneNote Notebooks (Offline)" %%i IN (*.zip) do del "%%i"
