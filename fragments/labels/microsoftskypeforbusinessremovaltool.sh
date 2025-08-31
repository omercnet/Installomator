microsoftskypeforbusinessremovaltool)
    name="Skype for Business Removal"
    type="pkg"
    vendor="microsoft"
    product="skypeforbusinessremovaltool"
    packageID="com.microsoft.remove.SkypeForBusiness"
    downloadURL="https://office-reset.com"$(curl -fs https://office-reset.com/macadmins/ | grep -o -i "href.*\".*\"*SkypeForBusiness_Removal.*.pkg" | cut -d '"' -f2)
    expectedTeamID="QGS93ZLCU7"
    ;;
