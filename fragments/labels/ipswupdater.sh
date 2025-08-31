ipswupdater)
    name="IPSW Updater"
    type="zip"
    vendor="ipsw"
    product="ipswupdater"
    ipswupdaterVersions=$(curl -fs "https://ipsw.app/download/updates.php?current_version=0.9.16")
    downloadURL=$(getJSONValue "$ipswupdaterVersions" "[0].url")
    appNewVersion=$(getJSONValue "$ipswupdaterVersions" "[0].version")
    expectedTeamID="YRW6NUGA63"
    ;;
