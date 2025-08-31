textmate)
    name="TextMate"
    type="tbz"
    vendor="textmate"
    product="textmate"
    #downloadURL="https://api.textmate.org/downloads/release?os=10.12"
    downloadURL=$(downloadURLFromGit "textmate" "textmate")
    appNewVersion=$(versionFromGit "textmate" "textmate")
    expectedTeamID="45TL96F76G"
    ;;
