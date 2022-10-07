function Go-Home {Set-Location -Path ~}
Set-Alias -Name home -Value Go-Home

function Open-Here {Invoke-Expression "explorer ."}
Set-Alias -Name here -Value Open-Here

function Copy-Path-To-Clipboard {(pwd).Path | Set-Clipboard}
Set-Alias -Name cpath -Value Copy-Path-To-Clipboard
