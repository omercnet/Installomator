microsoftofficefactoryreset)
    name="Microsoft Office Factory Reset"
    type="pkg"
    vendor="microsoft"
    product="officefactoryreset"
    packageID="com.microsoft.reset.Factory"
    downloadURL="https://office-reset.com"$(curl -fs https://office-reset.com/macadmins/ | grep -o -i "href.*\".*\"*Factory_Reset.*.pkg" | cut -d '"' -f2)
    expectedTeamID="QGS93ZLCU7"
    ;;
