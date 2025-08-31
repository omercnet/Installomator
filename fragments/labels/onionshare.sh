onionshare)
    # credit: Søren Theilgaard (@theilgaard)
    name="OnionShare"
    type="dmg"
    vendor="onionshare"
    product="onionshare"
    downloadURL="https://onionshare.org$(curl -fs https://onionshare.org | grep "button.*dmg" | tr '"' '\n' | grep ".dmg")"
    appNewVersion=$( echo "${downloadURL}" | sed -E 's/.*\/[a-zA-Z]*-([0-9.]*)\..*/\1/g' )
    expectedTeamID="N9B95FDWH4"
    ;;
