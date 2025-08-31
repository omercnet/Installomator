jamfpppcutility)
    # credit: Mischa van der Bent
    name="PPPC Utility"
    type="zip"
    vendor="jamf"
    product="pppcutility"
    downloadURL=$(downloadURLFromGit jamf PPPC-Utility)
    appNewVersion=$(versionFromGit jamf PPPC-Utility)
    expectedTeamID="483DWKW443"
    ;;
