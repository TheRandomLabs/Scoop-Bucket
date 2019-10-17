# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

## Notes

### AOMEI Partition Assistant Standard

* The installer and uninstaller open a webpage upon completion.

### Corsair iCUE

* `scoop install corsair-icue` must be run as administrator,
which can be done most easily using `sudo`.
* However, `scoop uninstall corsair-icue` should not be run as administrator until
[this](https://github.com/lukesampson/scoop/issues/2952#issuecomment-542531849) is resolved.

### FFmpeg for Audacity

* This version (2.2.11) is more up-to-date than the one found in
[rasa's bucket](https://github.com/rasa/scoops) (2.2.2).
* It should also be noted that LAME now comes packaged with Audacity and therefore no longer has
to be installed separately.

### Icaros

* Both `scoop install icaros` and `scoop uninstall icaros` must be run as administrator,
which can be done most easily using `sudo`.

### Logitech Gaming Software

* Both `scoop install logitech-gaming-software` and `scoop uninstall logitech-gaming-software`
must be run as administrator, which can be done most easily using `sudo`.

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
