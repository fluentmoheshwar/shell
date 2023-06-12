#!/usr/bin/env bash
echo Installing Starship...
apt update && apt install -y curl
curl -sS https://starship.rs/install.sh | sh

echo Copying Starship Config...
mkdir -p ~/.config
cp -r -f ./.config/starship.toml ~/.config/starship.toml

echo Instaling PowerShell...
# Update the list of packages
apt update
# Install pre-requisite packages.
apt install -y wget apt-transport-https software-properties-common
# Download the Microsoft repository GPG keys
wget -q "https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb"
# Register the Microsoft repository GPG keys
dpkg -i packages-microsoft-prod.deb
# Delete the the Microsoft repository GPG keys file
rm packages-microsoft-prod.deb
# Update the list of packages after we added packages.microsoft.com
apt update
# Install PowerShell
apt install -y powershell

echo Running PowerShell Script...
mkdir -p ~/.config/powershell
pwsh -ExecutionPolicy Bypass -Command "./script.ps1"
