safeexambrowser)
    name="Safe Exam Browser"
    type="dmg"
    vendor="safe"
    product="safeexambrowser"
    packageID="org.safeexambrowser.SafeExamBrowser"
    downloadURL=$(downloadURLFromGit SafeExamBrowser seb-mac )
    appNewVersion=$(versionFromGit SafeExamBrowser seb-mac )
    expectedTeamID="6F38DNSC7X"
    blockingProcesses=( NONE )
    ;;
