<!-- markdownlint-disable MD010 -->
<!-- markdownlint-disable MD014 -->
<!-- markdownlint-disable MD037 -->
<!-- markdownlint-disable MD046 -->

# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

## Customizing Spotify

A slightly outdated version of Spotify (1.1.4.197.g92d52c4f) can be installed with
[BlockTheSpot](https://github.com/master131/BlockTheSpot) to block ads:

	$ sudo scoop install spotify-blockthespot

On the other hand, if you have Spotify Premium or do not care about ads, you can install the latest
version of Spotify:

    $ scoop install spotify-latest

Note that Spotify should not be installed globally, as it stores files in user-specific directories.

Once Spotify is installed, [spicetify-cli](https://github.com/khanhas/spicetify-cli) can be
installed to customize the Spotify client:

    $ scoop install spicetify-cli

Again, spicetify-cli should be installed locally, as it also stores files in a user-specific
location.

[spicetify-themes](https://github.com/morpheusthewhite/spicetify-themes) can be installed for
a collection of community-created themes for Spicetify. Obviously, this should also be installed
locally:

	$ scoop install spicetify-themes

I can recommend the [Nord](https://github.com/morpheusthewhite/spicetify-themes/tree/master/Nord)
theme, which can be applied by running the following:

	$ spicetify config current_theme Nord
	$ spicetify apply

To install spicetify-cli and apply a theme silently, the theme can be configured before installing
spicetify-themes, and Spotify will automatically be killed after spicetify-themes is installed and
the theme is applied:

	$ scoop install spicetify-cli
	$ spicetify config current_theme Nord
	$ scoop install spicetify-themes

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

### spicetify-cli

* spicetify-cli should be installed locally and not globally.
* spicetify-cli requires either `spotify-blockthespot` or `spotify-latest` to be installed.
* Installing or updating spicetify-cli automatically applies the spicetify configuration.

### spicetify-themes

* spicetify-themes should be installed locally and not globally.
* Installing or updating spicetify-themes automatically applies the spicetify configuration.

### Spotify with BlockTheSpot

* Spotify with BlockTheSpot should be installed locally and not globally.
* `scoop install spotify-blockthespot` must be run as administrator,
which can be done most easily using `sudo`.
* However, `scoop uninstall spotify-blockthespot` does not have to be run as administrator.
* This cannot be installed concurrently with `spotify-latest`.

### Spotify (latest)

* This is the latest version of Spotify.
* Unlike [Ash258's version](https://github.com/Ash258/scoop-Ash258/blob/master/bucket/Spotify.json),
this version installs completely silently and to the Scoop directory.
* Spotify should be installed locally and not globally.
* This cannot be installed concurrently with `spotify-blockthespot`.

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
