import Quickshell
import QtQuick
import Quickshell.Io
import QtQuick.Layouts

Scope {

    Variants {
        model: Quickshell.screens
        delegate: Component {
            PanelWindow {
                color: "transparent"
                required property var modelData
                screen: modelData
                anchors {
                    top: true
                    left: true
                    right: true
                }
                implicitHeight: 30
                margins {
                    right: 16
                    left: 16
                    top: 4
                }
                RowLayout {
                   anchors.right: parent.right
                   VolumeControl {}
                   Clock {}
                }

               
            }
        }
    }
}
