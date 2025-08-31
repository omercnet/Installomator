expressvpn)
    name="ExpressVPN"
    type="pkg"
    vendor="expressvpn"
    product="expressvpn"
    packageID="com.expressvpn.ExpressVPN"
    downloadURL="https://www.expressvpn.com/clients/latest/mac"
    appNewVersion="$(curl -fsIL https://www.expressvpn.com/clients/latest/mac | grep -i ^location | sed -n -e 's/^\(.*\)\(_release\)\(.*\)$/\3\2\1/p' | sed -n -e 's/^.*mac_//p')"
    expectedTeamID="VMES9GFUQJ"
    ;;
