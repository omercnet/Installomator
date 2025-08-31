jamfmigrator)
    name="jamf-migrator"
    type="zip"
    vendor="jamf"
    product="migrator"
    downloadURL=$(downloadURLFromGit jamf JamfMigrator)
    appNewVersion=$(versionFromGit jamf JamfMigrator)
    expectedTeamID="PS2F6S478M"
    ;;
