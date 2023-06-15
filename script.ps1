Install-Module PSReadLine -AllowPrerelease -Force
Install-Module PowerType -AllowPrerelease -Force
Install-Module -Name Terminal-Icons -AllowPrerelease -Force
cat ./profile.ps1 > $PROFILE
