code42)
    name="Code42"
    type="pkgInDmg"
    vendor="code42"
    product="code"
    if [[ $(arch) == i386 ]]; then
       downloadURL="https://download-preservation.code42.com/installs/agent/latest-mac.dmg"
    elif [[ $(arch) == arm64 ]]; then
       downloadURL="https://download-preservation.code42.com/installs/agent/latest-mac-arm64.dmg"
    fi
    expectedTeamID="9YV9435DHD"
    blockingProcesses=( NONE )
    ;;
