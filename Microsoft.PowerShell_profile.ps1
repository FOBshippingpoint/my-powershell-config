function Go-Home {Set-Location -Path ~}
Set-Alias -Name home -Value Go-Home

function Open-Here {Invoke-Expression "explorer ."}
Set-Alias -Name here -Value Open-Here

function Copy-Path-To-Clipboard {(pwd).Path | Set-Clipboard}
Set-Alias -Name cpath -Value Copy-Path-To-Clipboard

function Go-Repo {Set-Location -Path "~/Repo"}
Set-Alias -Name rr -Value Go-Repo

function Go-Download {Set-Location -Path "~/Downloads"}
Set-Alias -Name dd -Value Go-Download

function Git-Add-And-Commit {
    param (
        [Parameter(Mandatory = $true)]
        [string]$CommitMessage
    )

    Invoke-Expression "git add --all"
    Invoke-Expression "git commit -m '$CommitMessage'"
}
Set-Alias -Name gac -Value Git-Add-And-Commit

function Git-Add-And-Commit-And-Push {
    param (
        [Parameter(Mandatory = $true)]
        [string]$CommitMessage
    )

    Invoke-Expression "git add --all"
    Invoke-Expression "git commit -m '$CommitMessage'"
    Invoke-Expression "git push"
}
Set-Alias -Name gacp -Value Git-Add-And-Commit-And-Push
