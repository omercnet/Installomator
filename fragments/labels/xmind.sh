xmind)
    name="Xmind"
    type="dmg"
    vendor="xmind"
    product="xmind"
    downloadURL="https://xmind.app/zen/download/mac/"
    appNewVersion="$(curl -fsIL $downloadURL | grep -i "^location" | grep -oE 'Xmind-for-macOS-(.+?)-[0-9]+\.dmg' | sed -E 's/Xmind-for-macOS-(.+)-[0-9]+\.dmg/\1/')"
    expectedTeamID="4WV38P2X5K"
    ;;

