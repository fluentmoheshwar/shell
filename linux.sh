#!/usr/bin/env bash

echo Installing Starship...
sudo apt update && sudo apt install -y curl
curl -sS https://starship.rs/install.sh | sh

echo Copying Starship Config...
mkdir -p ~/.config
cp -r -f ./starship.toml ~/.config/starship.toml

echo Instaling PowerShell...
# Update the list of packages
sudo apt update
# Install pre-requisite packages.
sudo apt install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
sudo apt install ./packages-microsoft-prod.deb
# Delete the the Microsoft repository GPG keys file
rm ./packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
sudo apt update
# Install PowerShell
sudo apt install -y powershell

echo Installing PowerShell Modules...
pwsh -Command "Install-Module PSReadLine -AllowPrerelease -Force"
pwsh -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh -Command "Install-Module PowerType -AllowPrerelease -Force"
pwsh -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force"

echo Copying PowerShell Profile...
mkdir -p ~/.config/powershell
cp -r -f ./Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
