/*
 * F1 to previous track
 * F2 to next track
 * F3 to play/pause
 * F6 to brightness down
 * F7 to brightness up
 * F8 to mute
 * F9 to volume down
 * F10 to volume up
*/

DefinitionBlock ("", "SSDT", 2, "nouu", "croskb", 0x00000000)
{
    External (_SB_.PCI0.PS2K, DeviceObj)

    Name (_SB.PCI0.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Custom ADB Map", 
            Package (0x09)
            {
                Package (0x00){}, 
                "3b=4d", 
                "3c=42", 
                "3d=34", 
                "40=6b", 
                "41=71", 
                "42=4a", 
                "43=49", 
                "44=48"
            }
        }
    })
}


