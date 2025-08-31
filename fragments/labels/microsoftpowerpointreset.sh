microsoftpowerpointreset)
    name="Microsoft PowerPoint Reset"
    type="pkg"
    vendor="microsoft"
    product="powerpointreset"
    packageID="com.microsoft.reset.PowerPoint"
    downloadURL="https://office-reset.com"$(curl -fs https://office-reset.com/macadmins/ | grep -o -i "href.*\".*\"*PowerPoint_Reset.*.pkg" | cut -d '"' -f2)
    expectedTeamID="QGS93ZLCU7"
    ;;
