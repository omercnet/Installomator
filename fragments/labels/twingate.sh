twingate)
    name="Twingate"
    type="pkg"
    vendor="twingate"
    product="twingate"
    downloadURL="https://api.twingate.com/download/darwin?installer=pkg"
    appNewVersion=$(curl -fsIL "$downloadURL" | grep -i ^location | cut -d "/" -f6)
    expectedTeamID="6GX8KVTR9H"
    ;;
