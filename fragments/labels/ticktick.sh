ticktick)
    # TickTick is a x-platform ToDo-app for groups/teams, see https://ticktick.com
    name="TickTick"
    type="dmg"
    vendor="ticktick"
    product="ticktick"
    downloadURL="https://ticktick.com/down/getApp/download?type=mac"
    vendor="ticktick"
    product="ticktick"
    appNewVersion="$(curl -fsIL "$downloadURL" | grep -Ei "^location" | cut -d "_" -f2)"
    expectedTeamID="75TY9UT8AY"
    ;;
