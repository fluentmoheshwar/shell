#!/usr/bin/env bash

echo Installing Starship...
sudo dnf copr enable atim/starship
sudo dnf install starship

echo Copying Starship Config...
mkdir -p ~/.config
cp -r -f ./starship.toml ~/.config/starship.toml

echo Instaling PowerShell...
# Get version of RHEL
source /etc/os-release
if [ $(bc<<<"$VERSION_ID < 8") = 1 ]
then majorver=7
elif [ $(bc<<<"$VERSION_ID < 9") = 1 ]
then majorver=8
else majorver=9
fi

# Register the Microsoft RedHat repository
curl -sSL -O https://packages.microsoft.com/config/rhel/$majorver/packages-microsoft-prod.rpm

# Register the Microsoft repository keys
sudo rpm -i packages-microsoft-prod.rpm

# Delete the repository keys after installing
rm packages-microsoft-prod.rpm

# RHEL 7.x uses yum and RHEL 8+ uses dnf
if [ $(bc<<<"$majorver < 8") ]
then
    # Update package index files
    sudo yum update
    # Install PowerShell
    sudo yum install powershell -y
else
    # Update package index files
    sudo dnf update
    # Install PowerShell
    sudo dnf install powershell -y
fi

echo Installing PowerShell Modules...
pwsh -NoProfile -Command "Install-Module PSReadLine -AllowPrerelease -Force -Scope CurrentUser"
pwsh -NoProfile -Command "Install-Module PowerType -AllowPrerelease -Force -Scope CurrentUser"
pwsh -NoProfile -Command "Install-Module -Name Terminal-Icons -AllowPrerelease -Force -Scope CurrentUser"

echo Copying PowerShell Profile...
mkdir -p ~/.config/powershell
cp -r -f ./Microsoft.PowerShell_profile.ps1 ~/.config/powershell/Microsoft.PowerShell_profile.ps1
