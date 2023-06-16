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
pwsh -Command "Install-Module PSReadLine -AllowPrerelease -Force"
pwsh -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force"

echo Copying PowerShell Profile...
mkdir -p ~/.config/powershell
cp -r -f ./Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
