keeperpasswordmanager)
    name="Keeper Password Manager"
    type="dmg"
    vendor="keeper"
    product="keeperpasswordmanager"
    downloadURL="https://www.keepersecurity.com/desktop_electron/Darwin/KeeperSetup.dmg"
    appNewVersion=$(getJSONValue "$(curl -fsL 'https://keepersecurity.com/desktop_electron/desktop_electron_version.txt')" "version" )
    expectedTeamID="234QNB7GCA"
    blockingProcess=( "Keeper Password Manager" )
    ;;
