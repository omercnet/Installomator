oktaverify)
    name="Okta Verify"
    type="pkg"
    vendor="okta"
    product="oktaverify"
    downloadURL="https://okta.okta.com/api/v1/artifacts/OKTA_VERIFY_MACOS/download?releaseChannel=GA&packageType=PKG"
    appNewVersion=$(curl -fsLIXGET "$downloadURL" | grep -i "^location" | sed -e 's/location\: //' | sed -e 's/.*OktaVerify-\(.*\).pkg/\1/' | sed -e 's/-.*$//')
    expectedTeamID="B7F62B65BN"
    ;;
