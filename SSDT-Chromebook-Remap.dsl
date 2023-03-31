DefinitionBlock ("", "SSDT", 2, "cbOSX", "croskb", 0)
{
    External (_SB_.PCI0.PS2K, DeviceObj)
    
    Name(_SB.PCI0.PS2K.RMCF, Package()
    {
        "Keyboard", Package()
        {
            "Custom ADB Map", Package()
            {
                Package(){},
                "3b=4d",    // F1 to previous track
                "3c=42",    // F2 to next track
                "3d=34",    // F3 to play/pause
                "40=6b",    // F6 to display brightness down
                "41=71",    // F7 to display brightness up
                "42=4a",    // F8 to mute
                "43=49",    // F9 to volume down
                "44=48",    // F10 to volume up
            },
        },
    })
}

// Credits:
// isi95010 for writing this
// RehabMan for the PS2 scan codes
