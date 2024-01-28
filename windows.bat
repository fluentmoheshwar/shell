@echo off

echo Installing Starship...
winget install starship

echo Copying Starship Config...
mkdir %USERPROFILE%\.config
copy starship.toml %USERPROFILE%\.config\starship.toml /Y

echo Installing PowerShell...
winget install --id Microsoft.Powershell --source winget

echo Installing gsudo...
winget install gsudo

SET path=%path%;"C:\Program Files\PowerShell\7\";"C:\Program Files\starship\bin\";"C:\Program Files\gsudo\Current"

echo Installing PowerShell Modules...
pwsh.exe -NoProfile -Command "Install-Module PSReadLine -AllowPrerelease -Force -Scope CurrentUser"
pwsh.exe -NoProfile -Command "Install-Module PowerType -AllowPrerelease -Force -Scope CurrentUser"
pwsh.exe -NoProfile -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force -Scope CurrentUser"


echo Copying PowerShell Profile...
:start
SET choice=
SET /p choice=Are you syncing Documents Folder with OneDrive? :
IF NOT "%choice%"=="" SET choice=%choice:~0,1%
IF "%choice%"=="Y" GOTO yes
IF "%choice%"=="y" GOTO yes
IF "%choice%"=="Yes" GOTO yes
IF "%choice%"=="yes" GOTO yes
IF "%choice%"=="N" GOTO no
IF "%choice%"=="n" GOTO no
IF "%choice%"=="No" GOTO no
IF "%choice%"=="no" GOTO no
IF "%choice%"=="" GOTO no
echo "%choice%" is not valid
echo.
GOTO start

:no
mkdir %USERPROFILE%\Documents\PowerShell
copy Microsoft.PowerShell_profile.ps1 %USERPROFILE%\Documents\PowerShell

:yes
mkdir %USERPROFILE%\OneDrive\Documents\PowerShell
copy Microsoft.PowerShell_profile.ps1 %USERPROFILE%\OneDrive\Documents\Microsoft.PowerShell_profile.ps1

echo Installation Successful!
echo Please configure your terminal to use PowerShell as the default shell and set any nerd font as fonts.
