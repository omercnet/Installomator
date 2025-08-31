deon-onprem)
    name="Deon"
    type="zip"
    vendor="deon"
    product="deon_onprem"
    # beta channel for download is correct
    feedURL="https://download.deon.de/index.php?action=1&product=Mac&channel=beta"
    downloadURL=$(curl -fs $feedURL | jq -r '.uris[1]')
    appNewVersion=$(curl -fs $feedURL | jq -r '.version')
    expectedTeamID="EW9H238RWQ"
    ;;
