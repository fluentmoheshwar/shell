$env:VIRTUAL_ENV_DISABLE_PROMPT = 1
Import-Module PSReadLine
Enable-PowerType
Set-PSReadLineOption -PredictionSource HistoryAndPlugin -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Import-Module -Name Terminal-Icons
Invoke-Expression (&starship init powershell)
