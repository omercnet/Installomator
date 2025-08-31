thunderbirdesr)
    name="Thunderbird"
    type="dmg"
    vendor="thunderbird"
    product="thunderbirdesr"
    appNewVersion=$(curl -fsL "https://www.thunderbird.net/en-US/thunderbird/releases/atom.xml" | grep "esr" | grep -m 5 "<title type=" | sed 's/<.*>\(.*\)<.*>/\1/' | awk '{ print $2 }' | awk '{$1=$1};1' | tr -d "esr" | sort -V | tail -n1 )
    vendor="thunderbird"
    product="thunderbirdesr"
    downloadURL="https://download.mozilla.org/?product=thunderbird-${appNewVersion}esr-SSL&os=osx&lang=en-US"
    expectedTeamID="43AQ936H96"
    ;;
