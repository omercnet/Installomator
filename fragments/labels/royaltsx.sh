royaltsx)
    name="Royal TSX"
    type="dmg"
    vendor="royal"
    product="royaltsx"
    downloadURL=$(curl -fs https://royaltsx-v6.royalapps.com/updates_stable | xpath '//rss/channel/item[1]/enclosure/@url'  2>/dev/null | cut -d '"' -f 2)
    appNewVersion=$(curl -fs https://royaltsx-v6.royalapps.com/updates_stable | xpath '//rss/channel/item[1]/enclosure/@sparkle:shortVersionString'  2>/dev/null | cut -d '"' -f 2)
    expectedTeamID="VXP8K9EDP6"
    ;;
