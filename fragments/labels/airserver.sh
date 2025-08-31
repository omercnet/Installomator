airserver)
    # credit: AP Orlebeke (@apizz)
    name="AirServer"
    type="dmg"
    vendor="airserver"
    product="airserver"
    downloadURL="https://www.airserver.com/download/mac/latest"
    appNewVersion=$(curl -fsIL "${downloadURL}" | grep -i "location" | sed -E 's/.*\/[a-zA-Z]*-([0-9.]*)\..*/\1/g')
    expectedTeamID="6C755KS5W3"
    ;;
