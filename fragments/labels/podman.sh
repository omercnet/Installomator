podman)
    name="Podman"
    type="pkg"
    vendor="podman"
    product="podman"
    downloadURL=$(downloadURLFromGit containers podman)
    appNewVersion=$(versionFromGit containers podman)
    archiveName="podman-installer-macos-universal.pkg"
    expectedTeamID="HYSCB8KRL2"
    ;;
