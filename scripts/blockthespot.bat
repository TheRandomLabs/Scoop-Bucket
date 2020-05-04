@cd %~dp0
@powershell.exe -ExecutionPolicy Bypass -Command "$_=((Get-Content \"%~f0\") -join \"`n\");iex $_.Substring($_.IndexOf(\"goto :\"+\"EOF\")+9)"
@goto :EOF

$spotify_path = scoop which Spotify

if (-not $spotify_path) {
    return
}

$spotify_dir = Split-Path $spotify_path

if ((Split-Path (Split-Path $spotify_dir) -leaf) -ne "spotify-latest") {
    Write-Error "The `spotify-latest` package is not installed."
    return
}

$spotify_running = Get-Process -ErrorAction Ignore -Name Spotify
Stop-Process -ErrorAction Ignore -Name Spotify | Out-Null

Move-Item -Force "$spotify_dir\chrome_elf.dll" -Destination "$spotify_dir\chrome_elf.dll.original"
Copy-Item ".\chrome_elf.dll" -Destination "$spotify_dir"
if (-not (Get-Content -ErrorAction Ignore "$spotify_dir\config.ini")) { Copy-Item ".\config.ini" -Destination "$spotify_dir" }

if ($spotify_running) { Start-Process "$spotify_path" }
