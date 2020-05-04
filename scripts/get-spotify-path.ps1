$spotify_path = scoop which Spotify
if (-not $spotify_path) { $spotify_path = "$(Split-Path(Split-Path (Split-Path $PSScriptRoot)))\spotify-latest" }
if (-not $spotify_path) { $spotify_path = "$(Split-Path(Split-Path (Split-Path $PSScriptRoot)))\spotify-with-blockthespot" }
if (-not $spotify_path) { $spotify_path = "$env:APPDATA\Spotify\Spotify.exe" }
if (Test-Path $spotify_path) { return $spotify_path }
