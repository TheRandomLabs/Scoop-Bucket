# TODO move to Docker container

$dir = $(Split-Path $MyInvocation.MyCommand.Path)

Set-Location -Path "$dir"
.\bin\auto-pr.ps1 -p

Set-Location -Path $env:SCOOP_GLOBAL\buckets\TheRandomLabs
git fetch --all
git reset --hard origin/master
git pull

Set-Location -Path "$dir"
