alfred)
    # credit: AP Orlebeke (@apizz)
    name="Alfred"
    type="dmg"
    vendor="running_with_crayons"
    product="alfred"
    downloadURL=$(curl -fs https://www.alfredapp.com | awk -F '"' "/dmg/ {print \$2}" | head -1)
    appNewVersion=$(echo "${downloadURL}" | sed -E 's/.*Alfred_([0-9.]*)_.*/\1/')
    appName="Alfred 5.app"
    expectedTeamID="XZZXE9SED4"
    ;;
