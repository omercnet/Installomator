gpgsuite)
    # credit: Micah Lee (@micahflee)
    name="GPG Suite"
    type="pkgInDmg"
    vendor="gpg"
    product="gpgsuite"
    pkgName="Install.pkg"
    downloadURL=$(curl -s https://gpgtools.com/ | grep https://releases.gpgtools.com/GPG_Suite- | grep Download | cut -d'"' -f4)
    appNewVersion=$(echo $downloadURL | cut -d "-" -f 2 | cut -d "." -f 1-2)
    expectedTeamID="PKV8ZPD836"
    blockingProcesses=( "GPG Keychain" )
    appCustomVersion(){ defaults read /Library/Application\ Support/GPGTools/version.plist CFBundleShortVersionString }
    ;;
