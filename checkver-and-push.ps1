Set-Location -Path $(Split-Path $MyInvocation.MyCommand.Path)
.\bin\auto-pr.ps1 -p

Set-Location -Path $Env:SCOOP_GLOBAL\buckets\TheRandomLabs
git fetch --all
git reset --hard origin/master
git pull
