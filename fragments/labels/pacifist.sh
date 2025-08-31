pacifist)
    name="Pacifist"
    type="dmg"
    vendor="pacifist"
    product="pacifist"
    downloadURL="https://charlessoft.com/cgi-bin/pacifist_download.cgi?type=dmg"
    vendor="pacifist"
    product="pacifist"
    appNewVersion="$(curl -fsL "https://www.charlessoft.com/cgi-bin/pacifist_sparkle.cgi" | xpath 'string(//rss/channel/item[last()]/enclosure/@sparkle:shortVersionString)' 2>/dev/null)"
    expectedTeamID="HRLUCP7QP4"
    ;;
