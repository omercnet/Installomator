deon-cloud)
    name="Deon"
    type="zip"
    vendor="deon"
    product="deon_cloud"
    feedURL="https://download.deon.de/index.php?action=1&product=Mac&channel=cloud"
    downloadURL=$(curl -fs $feedURL | jq -r '.uris[1]')
    appNewVersion=$(curl -fs $feedURL | jq -r '.version')
    expectedTeamID="EW9H238RWQ"
    ;;
