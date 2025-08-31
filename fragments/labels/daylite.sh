daylite)
    name="Daylite"
    type="zip"
    vendor="daylite"
    product="daylite"
    downloadURL="https://www.marketcircle.com/downloads/latest-daylite"
    appNewVersion="$(curl -fs https://www.marketcircle.com/appcasts/daylite.xml | xpath '(//rss/channel/item/enclosure/@sparkle:shortVersionString)[1]' 2>/dev/null | cut -d '"' -f 2)"
    expectedTeamID="GR26KTJYTV"
    ;;
