import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.Pipewire
import Quickshell.Widgets
import Qt.labs.animation

Item {
    id: container
    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }
    width: 60
    height: 30
    MouseArea {
        anchors.fill: parent
        onWheel: event => {
            if (Pipewire.defaultAudioSink != null) {
                var val = Pipewire.defaultAudioSink.audio.volume + event.angleDelta.y / 120 * container.stepSize / 100;
                var n = val < 0 ? 0 : val;
                Pipewire.defaultAudioSink.audio.volume = n > 1 ? 1 : n;
            }
        }
    }
    property real stepSize: 5
    property real volume: (Pipewire.defaultAudioSink?.audio.volume ?? 0)
    Rectangle {
        anchors.fill: parent
        radius: height / 3
        color: "#70000000"
        RowLayout {
            anchors {
                fill: parent
                leftMargin: 10
                rightMargin: 5
            }
            IconImage {
                implicitSize: 15
                source: Quickshell.iconPath("audio-volume-high-symbolic")
            }
            Dial {
                id: slider
                from: 0
                to: 1
                value: container.volume
                stepSize: container.stepSize / 100
                inputMode: Dial.Horizontal
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.topMargin: 2 
                Layout.bottomMargin: 2
                background: Rectangle {
                    color: "transparent"
                   
                    radius: width / 2
                    border.color: slider.pressed ? "#17a81a" : "#21be2b"
                    opacity: slider.enabled ? 1 : 0.3
                }

                handle: Rectangle {
                    id: handleItem
                    x: slider.background.x + slider.background.width / 2 - width / 2
                    y: slider.background.y + slider.background.height / 2 - height / 2
                    width: 4
                    height:4 
                    color: slider.pressed ? "#17a81a" : "#21be2b"
                    radius: 8
                    antialiasing: true
                    opacity: slider.enabled ? 1 : 0.3
                    transform: [
                        Translate {
                            y: -Math.min(slider.background.width, slider.background.height) * 0.4 + handleItem.height / 2
                        },
                        Rotation {
                            angle: slider.angle
                            origin.x: handleItem.width / 2
                            origin.y: handleItem.height / 2
                        }
                    ]
                }
            }

            Connections {
                target: slider
                function onMoved() {
                    if (Pipewire.defaultAudioSink != null) {
                        Pipewire.defaultAudioSink.audio.volume = slider.value;
                    }
                }
            }
        }
    }
}
