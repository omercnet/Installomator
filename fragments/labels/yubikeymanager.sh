yubikeymanager)
    name="YubiKey Manager"
    type="pkg"
    vendor="yubikey"
    product="yubikeymanager"
    appCustomVersion(){/usr/local/ykman/ykman -v | awk '{print $5}'}
	downloadURL=$(downloadURLFromGit Yubico yubikey-manager)
    appNewVersion=$(versionFromGit Yubico yubikey-manager)
    expectedTeamID="LQA3CS5MM7"
    #CLI for YubikeyManager which is not installed via the QT version.
    ;;
