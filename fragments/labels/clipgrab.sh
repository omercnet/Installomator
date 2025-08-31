clipgrab)
    name="ClipGrab"
    type="dmg"
    vendor="clipgrab"
    product="clipgrab"
    expectedTeamID="E8BJ3ZV5W8"
    downloadURL="$( curl -s 'https://clipgrab.org' | tr '"' '\n' | grep dmg )"
    appNewVersion="$( echo "$downloadURL" | sed -E 's/.*-([0-9.]*).dmg/\1/' )"
    ;;
