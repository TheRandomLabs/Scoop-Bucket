<!-- markdownlint-disable MD010 -->
<!-- markdownlint-disable MD014 -->
<!-- markdownlint-disable MD037 -->
<!-- markdownlint-disable MD040 -->
<!-- markdownlint-disable MD046 -->

# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket. I generally only keep manifests
here if there is something that is likely to make them unfit for any of the known buckets.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

**The Spotify/Spicetify packages have been moved to a
[separate bucket](https://github.com/TheRandomLabs/Scoop-Spotify). Sorry for the inconvenience!
Run the following command in PowerShell to migrate:**

	$ scoop bucket add spotify https://github.com/TheRandomLabs/Scoop-Spotify.git; "blockthespot", "genius-spicetify", "google-spicetify", "spicetify-cli", "spicetify-themes", "spotify-latest", "spotify-with-blockthespot" | ForEach-Object { $prefix = scoop prefix $_; if ($prefix) { (Get-Content "$prefix\install.json").Replace('TheRandomLabs', 'spotify') | Set-Content "$prefix\install.json" }}

## Notes

### AOMEI Partition Assistant Standard

* The installer and uninstaller open a webpage upon completion.

### Corsair iCUE

* `scoop uninstall corsair-icue` should not be run as administrator until
[this](https://github.com/lukesampson/scoop/issues/2952#issuecomment-542531849) is resolved.
* This means that `scoop update corsair-icue` also cannot be run as administrator and will show
two UAC dialogs.
* Alternatively, the following commands can be run prior to running
`scoop uninstall corsair-icue` or `scoop update corsair-icue` as administrator:

```powershell
$icue_path = "$(Split-Path(scoop prefix corsair-icue))\*"
Get-Process | Where-Object { $_.Path -Like "$icue_path" } | Stop-Process -Force
```

### Custom Resolution Utility

* This is the same as `cru` from the `extras` bucket, but it also has better shortcuts and shims.

### FFmpeg for Audacity

* This version (2.2.11) is more up-to-date than the one found in
[rasa's bucket](https://github.com/rasa/scoops) (2.2.2).
* It should also be noted that LAME now comes packaged with Audacity and therefore no longer has
to be installed separately.

### Luyten

* I'll PR this to the `extras` bucket once
[deathmarine/Luyten#175](https://github.com/deathmarine/Luyten/issues/175) is resolved.

### MuseScore Nightly with File Associations

* This is identical to `musescore-nightly` in the `versions` bucket, except that file associations
are automatically registered.
* This will most likely be rendered obsolete in a future version of Scoop.

### Neovim Dev

* This is the same as `neovim-nightly` in the `versions` bucket, except that autoupdate is enabled.

### QTTabBar

* The installer shows a dialog that requires user interaction.
* The installer may show an error related to start menu items. This can be safely ignored.

### raylib

* This is mainly here for the purpose of compiling rFXGen.

### rFXGen

* This downloads and builds the latest version of rFXGen ONE from the
[master branch](https://github.com/raysan5/rfxgen).

### scoop-completion

* If you're getting errors, [run](https://github.com/lukesampson/scoop/issues/3528):

```powershell
$ scoop config alias @{ }
```

* The module is only automatically appended to the local `$PROFILE`.

### ShellExView

* This manifest is a slightly improved version of `shellexview` from the `nirsoft` bucket.
* I've only added this to my bucket because I don't want to add the entire NirSoft bucket for one
package.

### Win10 Initial Setup Script

* This is a PowerShell script for the automation of routine setup tasks completed on fresh
installations of Windows.
* Default setup can be run via `default-win10-initial-setup`.
* See [here](https://github.com/Disassembler0/Win10-Initial-Setup-Script#advanced-usage)
for advanced usage.

### Windows SDK Signing Tools

* This is just `cert2spc.exe`, `makecat.exe` and `signtool.exe` extracted from the Windows SDK.
* This is useful for those who need to sign executables but have no need for the rest of the
Windows SDK.
