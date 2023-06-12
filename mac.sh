#!/usr/bin/env bash
echo Installing Homebrew...
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo Installing Starship...
curl -sS https://starship.rs/install.sh | sh

echo Copying Starship Config...
mkdir -p ~/.config
cp -r -f ./.config/starship.toml ~/.config/starship.toml

echo Instaling PowerShell...
brew install --cask powershell

echo Running PowerShell Script...
mkdir -p ~/.config/powershell
pwsh -ExecutionPolicy Bypass -Command "./script.ps1"
