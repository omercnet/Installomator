rawtherapee)
    name="RawTherapee"
    type="appInDmgInZip"
    vendor="rawtherapee"
    product="rawtherapee"
    downloadURL=$(curl -fs "https://rawtherapee.com/downloads/" | grep -oE "https.*/builds/mac/.*\.zip")
    appNewVersion=$(echo "$downloadURL" | sed -E 's/.*mac.*Universal_([0-9.]*).zip/\1/')
    expectedTeamID="5SJ86G6Q2R"
    ;;
