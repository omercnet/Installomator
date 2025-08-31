discord)
    name="Discord"
    type="dmg"
    vendor="discord"
    product="discord"
    downloadURL="https://discordapp.com/api/download?platform=osx"
    appNewVersion="$(curl -fsL -o /dev/null -w %{url_effective} "${downloadURL}" | awk -F'/' '{print $(NF-1)}')"
    expectedTeamID="53Q6R32WPB"
    ;;
