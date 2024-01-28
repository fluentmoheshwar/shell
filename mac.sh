#!/usr/bin/env bash

echo Installing Homebrew...
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo Installing Starship...
curl -sS https://starship.rs/install.sh | sh

echo Copying Starship Config...
mkdir -p ~/.config
cp -r -f ./starship.toml ~/.config/starship.toml

echo Instaling PowerShell...
brew install --cask powershell

echo Installing PowerShell Modules...
pwsh -NoProfile -Command "Install-Module PSReadLine -AllowPrerelease -Force -Scope CurrentUser"
pwsh -NoProfile -Command "Install-Module PowerType -AllowPrerelease -Force -Scope CurrentUser"
pwsh -NoProfile -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force -Scope CurrentUser"

echo Copying PowerShell Profile...
mkdir -p ~/.config/powershell
cp -r -f ./Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1

echo Installation Successful!
echo Please configure your terminal to use PowerShell as the default shell and set any nerd font as fonts.
