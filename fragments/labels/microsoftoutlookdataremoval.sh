microsoftoutlookdataremoval)
    name="Microsoft Outlook Data Removal"
    type="pkg"
    vendor="microsoft"
    product="outlookdataremoval"
    packageID="com.microsoft.remove.Outlook.Data"
    downloadURL="https://office-reset.com"$(curl -fs https://office-reset.com/macadmins/ | grep -o -i "href.*\".*\"*Outlook_Data_Removal.*.pkg" | cut -d '"' -f2)
    expectedTeamID="QGS93ZLCU7"
    ;;
