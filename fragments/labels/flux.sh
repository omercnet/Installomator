flux)
    name="Flux"
    type="zip"
    vendor="flux"
    product="flux"
    appNewVersion=$(curl -fsL "https://justgetflux.com/mac/macflux.xml" | xpath 'string(//rss/channel/item/enclosure/@sparkle:version)' 2>/dev/null)
    downloadURL="https://justgetflux.com/mac/Flux.zip"
    expectedTeamID="VZKSA7H9J9"
    ;;
