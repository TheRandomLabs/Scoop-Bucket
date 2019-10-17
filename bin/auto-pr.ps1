param([String]$upstream = "ScoopInstaller/Main:master")

if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path(Split-Path(Split-Path(scoop which scoop))) 
}

$auto_pr = "$Env:SCOOP_HOME\bin\auto-pr.ps1"
$dir = "$psscriptroot\..\bucket"
Invoke-Expression -Command "& '$auto_pr' -dir '$dir' -upstream $upstream $($args | ForEach-Object { "$_ " })"
