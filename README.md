<!-- markdownlint-disable MD010 -->
<!-- markdownlint-disable MD014 -->
<!-- markdownlint-disable MD037 -->
<!-- markdownlint-disable MD046 -->

# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

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

### FFmpeg for Audacity

* This version (2.2.11) is more up-to-date than the one found in
[rasa's bucket](https://github.com/rasa/scoops) (2.2.2).
* It should also be noted that LAME now comes packaged with Audacity and therefore no longer has
to be installed separately.

### Microsoft Edge Dev/Canary

* Microsoft Edge Dev and Microsoft Edge Canary's versions are defined as `nightly`. This means that
`scoop update microsoft-edge-[dev|canary] --force --no-cache` or
`scoop update microsoft-edge-[dev|canary] -kf` should be used to update it.

### Minecraft Launcher

* The Minecraft launcher's version is defined as `nightly`. This means that
`scoop update minecraft-launcher --force --no-cache` or `scoop update minecraft-launcher -kf`
should be used to update it.

### MultiMC Development Version

* MultiMC's version is defined as `nightly`. This means that
`scoop update multimc-dev --force --no-cache` or `scoop update multimc-dev -kf`
should be used to update it.

### Spotify with BlockTheSpot

* `scoop install spotify-blockthespot` must be run as administrator,
which can be done most easily using `sudo`.
* However, `scoop uninstall spotify-blockthespot` does not have to be run as administrator.

### QTTabBar

* The installer shows a dialog that requires user interaction.
* The installer may show an error related to start menu items. This can be safely ignored.

### VirtualBox with Extension Pack

* I'll submit this as a pull request to the
[nonportable](https://github.com/oltolm/scoop-nonportable) bucket once
[lukesampson/scoop#3518](https://github.com/lukesampson/scoop/pull/3518) is merged.

### youtube-dl No Depends

* This is the same as `youtube-dl` from the main bucket, but instead of depending on `ffmpeg`, it
suggests either `ffmpeg` or `ffmpeg-nightly`.
* Nightly builds work well virtually all of the time and are constantly improved upon, so it can
make sense to prefer `ffmpeg-nightly`.
