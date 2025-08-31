determinate)
    name="Determinate"
    type="pkg"
    vendor="determinate"
    product="determinate"
    packageID="systems.determinate.Determinate"
    downloadURL=$(curl -fsIL https://install.determinate.systems/determinate-pkg/stable/Universal | awk -F' ' '/^location:/ {print $2}')
    appNewVersion=$(echo "$downloadURL" | cut -d/ -f4)
    expectedTeamID="X3JQ4VPJZ6"
    ;;
