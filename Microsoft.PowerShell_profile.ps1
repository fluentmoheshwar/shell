Import-Module PSReadLine
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Import-Module -Name Terminal-Icons
Invoke-Expression (&starship init powershell)
