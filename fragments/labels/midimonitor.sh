midimonitor)
    name="MIDI Monitor"
    type="dmg"
    vendor="midi"
    product="midimonitor"
    downloadURL="https://www.snoize.com/MIDIMonitor/MIDIMonitor.dmg"
    appNewVersion=$(curl -fs "https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml" | xpath 'string(//rss/channel/item[1]/sparkle:version)' 2>/dev/null)
    expectedTeamID="YDJAW5GX9U"
    ;;
