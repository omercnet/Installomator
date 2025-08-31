cherryaudioeightvoice)
    name="Eight Voice"
    type="pkg"
    vendor="eight"
    product="cherryaudioeightvoice"
    packageID="com.cherryaudio.pkg.EightVoicePackage-StandAlone"
    appNewVersion="$(curl -fs https://cherryaudio.com/products/eight-voice/version-history | grep -A 6 "info" | grep -Eo "([0-9]+(\.[0-9]+)+)" | head -1 | xargs)"
    downloadURL="https://store.cherryaudio.com/downloads/eight-voice-macos-installer?file=Eight-Voice-Installer-macOS.pkg"
    expectedTeamID="A2XFV22B2X"
    ;;
