if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path(Split-Path(Split-Path(scoop which scoop))) 
}

$checkurls = "$Env:SCOOP_HOME\bin\checkurls.ps1"
$dir = "$psscriptroot\..\bucket"
Invoke-Expression -Command "& '$checkurls' -dir '$dir' $($args | ForEach-Object { "$_ " })"
