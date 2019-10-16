# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

## Notes

### AOMEI Partition Assistant

* The installer and uninstaller open a webpage upon completion.

### Corsair iCUE

* `scoop install corsair-icue` must be run as administrator,
which can be done most easily using `sudo`.
* However, `scoop uninstall corsair-icue` should not be run as administrator until
[this](https://github.com/lukesampson/scoop/issues/2952#issuecomment-542531849) is resolved.

### Icaros

* Both `scoop install icaros` and `scoop uninstall icaros` must be run as administrator,
which can be done most easily using `sudo`.

### Logitech Gaming Software

* Both `scoop install logitech-gaming-software` and `scoop uninstall logitech-gaming-software`
must be run as administrator, which can be done most easily using `sudo`.

### Spotify with BlockTheSpot

* `scoop install spotify-blockthespot` must be run as administrator,
which can be done most easily using `sudo`.
* However, `scoop uninstall spotify-blockthespot` does not have to be run as administrator.

### QTTabBar

* The installer shows a dialog that requires user interaction.
* The installer may show an error related to start menu items. This can be safely ignored.
