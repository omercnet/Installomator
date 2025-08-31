xeroxphaser7800)
    name="XeroxPhaser"
    type="pkgInDmg"
    vendor="xeroxphaser"
    product="xeroxphaser"
    downloadURL=$(curl -fs "https://www.support.xerox.com/en-us/product/phaser-7800/downloads?platform=macOS14" | xmllint --html --format - 2>/dev/null | grep -o "https://.*XeroxDrivers.*.dmg")
    expectedTeamID="G59Y3XFNFR"
    ;;
