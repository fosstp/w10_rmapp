@echo Off
cd /d %~dp0
:askapp
set /P input="�O�_�������� App ? (Y/N)?"
if /I "%input%"=="Y" goto rmapp
if /I "%input%"=="N" goto askone
echo �п� Y �� N
goto askapp

:askone
set /P input="�O�_���� OneDrive ? (Y/N)?"
if /I "%input%"=="Y" goto rmone
if /I "%input%"=="N" goto end
echo �п� Y �� N
goto askone

:rmapp
@powershell -NoProfile -ExecutionPolicy Bypass .\scripts\w10_rmapp.ps1
goto askone

:rmone
@powershell -NoProfile -ExecutionPolicy Bypass .\scripts\remove-onedrive.ps1
goto end

:end
pause
