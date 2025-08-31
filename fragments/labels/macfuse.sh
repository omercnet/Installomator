macfuse)
    name="FUSE for macOS"
    type="pkgInDmg"
    vendor="fuse"
    product="macfuse"
    pkgName="Install macFUSE.pkg"
    downloadURL=$(downloadURLFromGit osxfuse osxfuse)
    appNewVersion=$(versionFromGit osxfuse osxfuse)
    expectedTeamID="3T5GSNBU6W"
    ;;
