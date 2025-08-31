tom4aconverter)
     name="To M4A Converter"
     type="dmg"
    vendor="tom4aconverter"
    product="tom4aconverter"
     downloadURL="https://amvidia.com/downloads/to-m4a-converter-mac.dmg"
     appNewVersion=$(curl -sf "https://amvidia.com/to-m4a-converter" | grep -o -E '"softwareVersion":.'"{8}" | sed 's/\"//g' | awk -F ': ' '{print $2}')
     expectedTeamID="F2TH9XX9CJ"
     ;;
