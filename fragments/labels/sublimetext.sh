sublimetext)
    # credit: Søren Theilgaard (@theilgaard)
    name="Sublime Text"
    type="zip"
    vendor="sublime"
    product="sublimetext"
    downloadURL="$(curl -fs "https://www.sublimetext.com/download_thanks?target=mac#direct-downloads" | grep -io "https://download.*_mac.zip" | head -1)"
    appNewVersion=$(curl -fs https://www.sublimetext.com/download | grep -i -A 4 "id.*changelog" | grep -io "Build [0-9]*")
    expectedTeamID="Z6D26JE4Y4"
    ;;
