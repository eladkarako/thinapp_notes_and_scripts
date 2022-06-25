::@echo off

::cleanup old stuff
::if exist  .\in\*.txt    del /f /q  .\in\*.txt     >nul
::if exist  .\out\*.tvr   del /f /q  .\out\*.tvr    >nul
::if exist  .\out\*.reg   del /f /q  .\out\*.reg    >nul

::this created a tvr in out folder, importing all txt files from in folder.
call ..\..\vregtool.exe .\out\reg.tvr ImportDir .\in\

::this import just the tvr and export the registry-keys into one windows registry file.
call ..\..\vregtool.exe .\out\reg.tvr ExportReg .\out\registry.reg

pause