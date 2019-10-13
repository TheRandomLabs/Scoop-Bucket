Set-Location -Path $(Split-Path $MyInvocation.MyCommand.Path)
.\bin\checkver.ps1 * -u

git add .
git commit -m "Update"
git push origin

Set-Location -Path $Env:SCOOP_GLOBAL\buckets\TheRandomLabs
git fetch --all
git reset --hard origin/master
git pull
