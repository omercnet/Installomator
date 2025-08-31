beyondcomparepro)
    name="Beyond Compare"
    type="zip"
    vendor="beyond"
    product="beyondcomparepro"
    downloadURL="https://www.scootersoftware.com"$(curl -fsL 'https://www.scootersoftware.com/download' | sed -nE 's/.*"(.*OSX-[^"]*)".*/\1/p')
    appNewVersion=$( grep -oE '(\d+\.){2}(\d+)' <<< $downloadURL )
    expectedTeamID="BS29TEJF86"
    ;;
