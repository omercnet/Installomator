sketch)
    name="Sketch"
    type="zip"
    vendor="sketch"
    product="sketch"
    downloadURL=$(curl -sf https://www.sketch.com/downloads/mac/ | grep 'href="https://download.sketch.com' | tr '"' "\n" | grep -E "https.*.zip")
    appNewVersion=$( grep -oE '\d+\.\d+' <<< $downloadURL)
    expectedTeamID="WUGMZZ5K46"
    ;;
