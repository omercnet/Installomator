appleprovideoformats)
    name="ProVideoFormats"
    type="pkgInDmg"
    vendor="apple"
    product="prores_video_formats"
    downloadURL=$(curl -s "https://support.apple.com/en-us/106396" | grep -Eo 'https://updates\.cdn-apple\.com[^"]+ProVideoFormats\.dmg' | head -n 1)
    packageID="com.apple.pkg.ProVideoFormats"
    expectedTeamID="Software Update"
    ;;
