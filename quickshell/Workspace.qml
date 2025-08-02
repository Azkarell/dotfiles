import Quickshell
import QtQuick
import Quickshell.Hyprland

Variants {
    model: Hyprland.workspaces.values
    delegate: Component {

        StyledText {
            required property var modelData
            text: modelData.active ? "yay" : "nay"
        }
    }
}
