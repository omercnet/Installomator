whatsapp)
    name="WhatsApp"
    type="dmg"
    vendor="whatsapp"
    product="whatsapp"
    downloadURL="https://web.whatsapp.com/desktop/mac_native/release/?configuration=Release"
    appNewVersion=$(curl -fsLIXGET "https://web.whatsapp.com/desktop/mac_native/release/?configuration=Release" | grep -i "^location" | grep -m 1 -o "WhatsApp-.*dmg" | sed 's/.*WhatsApp-2.//g' | sed 's/.dmg//g')
    expectedTeamID="57T9237FN3"
    ;;
