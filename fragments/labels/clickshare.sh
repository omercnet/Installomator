clickshare)
    name="ClickShare"
    type="zip"
    vendor="clickshare"
    product="clickshare"
    json_feed=$(curl -fsL "https://assets.cloud.barco.com/clickshare/release/release.mac")
    appNewVersion=$(getJSONValue "${json_feed}" 'version')
    file_name=$(getJSONValue "${json_feed}" 'name')
    downloadURL="https://assets.cloud.barco.com/clickshare/release/${file_name}"
    expectedTeamID="P6CDJZR997"
    ;;
