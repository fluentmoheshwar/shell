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

refreshenv.bat

echo Installing PowerShell Modules...
pwsh.exe -Command "Install-Module PSReadLine -AllowPrerelease -Force"
pwsh.exe -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh.exe -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh.exe -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force"


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
