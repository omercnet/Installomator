kdrive)
    name="kDrive"
    type="pkg"
    vendor="kdrive"
    product="kdrive"
    packageID="com.infomaniak.drive.desktopclient"
    jsonData=$(curl -sf https://www.infomaniak.com/drive/latest)
    downloadURL=$(getJSONValue "$jsonData" "macos.downloadurl")
    appNewVersion=$(getJSONValue "$jsonData" "macos.version")
    expectedTeamID="864VDCS2QY"
    ;;
