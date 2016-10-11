@echo Off
cd /d %~dp0
:askapp
set /P input="是否移除內建 App ? (Y/N)?"
if /I "%input%"=="Y" goto rmapp
if /I "%input%"=="N" goto askone
echo 請選 Y 或 N
goto askapp

:askone
set /P input="是否移除 OneDrive ? (Y/N)?"
if /I "%input%"=="Y" goto rmone
if /I "%input%"=="N" goto end
echo 請選 Y 或 N
goto askone

:rmapp
@powershell -NoProfile -ExecutionPolicy Bypass .\scripts\w10_rmapp.ps1
goto askone

:rmone
@powershell -NoProfile -ExecutionPolicy Bypass .\scripts\remove-onedrive.ps1
goto end

:end
pause
