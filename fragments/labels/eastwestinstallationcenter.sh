eastwestinstallationcenter)
    name="EW Installation Center"
    type="pkgInZip"
    vendor="eastwestinstallationcenter"
    product="eastwestinstallationcenter"
    packageID="com.eastwest.pkg.installationcenter"
    downloadXML="$(curl -fs 'http://s3.amazonaws.com/ic-resources/products/IC.xml')"
    downloadURL="$(echo "${downloadXML}" | xpath '(//product/files/file[@platform="mac"]/url/text())' 2>/dev/null)"
    appNewVersion="$(echo "${downloadXML}" | xpath '(//product/version/text())' 2>/dev/null)"
    expectedTeamID="TWK4WE76V9"
    ;;
