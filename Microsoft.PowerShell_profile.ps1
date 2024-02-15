# Autocomplete
Import-Module PSReadLine
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Icons for Get-ChildItem and it's aliases (dir or ls)
Import-Module -Name Terminal-Icons


# Initiate starship prompt
Invoke-Expression (&starship init powershell)
