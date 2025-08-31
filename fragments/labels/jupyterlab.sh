jupyterlab)
    name="JupyterLab"
    type="dmg"
    vendor="jupyterlab"
    product="jupyterlab"
    if [[ $(arch) == arm64 ]]; then
        archiveName="JupyterLab-Setup-macOS-arm64.dmg"
		downloadURL="$(downloadURLFromGit jupyterlab jupyterlab-desktop)"
		appNewVersion="$(versionFromGit jupyterlab jupyterlab-desktop)"
	elif [[ $(arch) == i386 ]]; then
		archiveName="JupyterLab-Setup-macOS-x64.dmg"
		downloadURL="$(downloadURLFromGit jupyterlab jupyterlab-desktop)"
		appNewVersion="$(versionFromGit jupyterlab jupyterlab-desktop)"
 	fi
    expectedTeamID="2YJ64GUAVW"
    ;;
