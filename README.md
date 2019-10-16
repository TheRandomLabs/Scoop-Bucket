# Scoop Bucket

My personal [Scoop](https://github.com/lukesampson/scoop) bucket.

	$ scoop bucket add TheRandomLabs https://github.com/TheRandomLabs/Scoop-Bucket.git

## Notes

* The installer for AOMEI Partition Assistant opens a webpage upon installation and uninstallation.
* While the installer for Corsair iCUE must be run as administrator, `scoop uninstall corsair-icue`
should not be run as administrator until
[this](https://github.com/lukesampson/scoop/issues/2952#issuecomment-542531849) is resolved.
* Spotify should be installed locally so that Scoop can prevent it from attempting to update, which
causes Spotify to fail to start.
* The installer for QTTabBar shows a dialog that requires user interaction.
* The installer for QTTabBar may show an error related to start menu items. This can be ignored.
