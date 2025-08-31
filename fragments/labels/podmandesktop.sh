podmandesktop)
    name="Podman Desktop"
    type="dmg"
    vendor="podman"
    product="podmandesktop"
    downloadURL=$(downloadURLFromGit containers podman-desktop)
    appNewVersion=$(versionFromGit containers podman-desktop)
    archiveName=" podman-desktop-$appNewVersion-universal.dmg"
    expectedTeamID="HYSCB8KRL2"
    ;;
