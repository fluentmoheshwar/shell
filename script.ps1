Install-Module PSReadLine -AllowPrerelease -Force
Install-Module PowerType -AllowPrerelease -Force
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
cat ./profile.ps1 > $PROFILE
