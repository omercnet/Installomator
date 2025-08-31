smartsheet)
	name="Smartsheet"
	type="dmg"
    vendor="smartsheet"
    product="smartsheet"
	downloadURL="https://smartsheet-desktop-app-builds.s3.amazonaws.com/public/darwin/Smartsheet-setup.dmg"
	appNewVersion=$(curl -fsl 'https://smartsheet-desktop-app-builds.s3.amazonaws.com/public/darwin/latest-mac.yml' | sed -nE 's/^version: (.*)/\1/p')
	expectedTeamID="J89ET3PY68"
	;;
