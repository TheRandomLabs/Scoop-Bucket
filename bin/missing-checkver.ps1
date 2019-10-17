if (!$Env:SCOOP_HOME) {
    $Env:SCOOP_HOME = Resolve-Path(Split-Path(Split-Path(scoop which scoop))) 
}

$missing_checkver = "$Env:SCOOP_HOME\bin\missing-checkver.ps1"
$dir = "$psscriptroot\..\bucket"
Invoke-Expression -Command "& '$missing_checkver' -dir '$dir' $($args | ForEach-Object { "$_ " })"
