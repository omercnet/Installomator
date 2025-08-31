abstract)
    name="Abstract"
    type="zip"
    vendor="abstract"
    product="abstract"
    downloadURL="https://api.goabstract.com/releases/latest/download"
    appNewVersion=$( curl -fsIL "${downloadURL}" | grep -i "^location" | awk '{print $2}' | sed -E 's/.*\/[a-zA-Z]*-([0-9.]*)\..*/\1/g' )
    expectedTeamID="77MZLZE47D"
    ;;
