# Autocomplete
Import-Module PSReadLine
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Icons for Get-ChildItem and it's aliases (dir or ls)
Import-Module -Name Terminal-Icons


# Initiate starship prompt
Invoke-Expression (&starship init powershell)

# Aliases (for windows)
# Set-Alias which where.exe
# Set-Alias bash "C:\Program Files\Git\bin\bash.exe"
# Set-Alias nano "C:\Program Files\Git\usr\bin\nano.exe"
# Set-Alias dos2unix "C:\Program Files\Git\usr\bin\dos2unix.exe"
# Set-Alias unix2dos "C:\Program Files\Git\usr\bin\unix2dos.exe"
