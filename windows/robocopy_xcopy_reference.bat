::xcopy /Y/D/S "C:\OneNote Notebooks\*" "H:\OneNote Notebooks\*"
robocopy /xo /s /eta "C:\OneNote Notebooks" "H:\OneNote Notebooks"
::xcopy /Y/D "C:\Software\*" "H:\software\*"
robocopy /xo /eta "C:\Software" "H:\software"
