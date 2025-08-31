plantronicshub)
    name="Plantronics Hub"
    type="pkgInDmg"
    vendor="plantronics"
    product="plantronicshub"
    downloadURL="https://www.poly.com/content/dam/www/software/PlantronicsHubInstaller.dmg"
    expectedTeamID="SKWK2Q7JJV"
    appNewVersion=$(curl -fs "https://www.poly.com/in/en/support/knowledge-base/kb-article-page?lang=en_US&urlName=Hub-Release-Notes&type=Product_Information__kav" | grep -o "(*.*<span>)" | head -1 | cut -d "(" -f2 | sed 's/\<\/span\>//g' | cut -d "<" -f1)
    vendor="plantronics"
    product="plantronicshub"
    ;;
