if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path(Split-Path(Split-Path(scoop which scoop))) 
}

$checkver = "$Env:SCOOP_HOME\bin\checkver.ps1"
$dir = "$psscriptroot\..\bucket"
Invoke-Expression -Command "& '$checkver' -dir '$dir' $($args | ForEach-Object { "$_ " })"
