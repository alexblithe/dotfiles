import Quickshell
import Quickshell.Io
import QtQuick

import Quickshell.Services.Pipewire
import Quickshell.Widgets

Rectangle {
    id: root

    PwObjectTracker {
        objects: [Pipewire.defaultAudioSink]
    }

    color: Theme.bg1
    radius: 8
    implicitWidth: content.implicitWidth + 16
    implicitHeight: content.implicitHeight + 8
    Row {
        id: content
        anchors.centerIn: parent
        spacing: 6

        IconImage {
            source: {
                if(!Pipewire.defaultAudioSink) {
                    return Quickshell.iconPath("audio-volume-off")
                }
                if(Pipewire.defaultAudioSink?.audio.muted) {
                    return Quickshell.iconPath("audio-volume-muted")
                }
                if(Pipewire.defaultAudioSink?.audio.volume <= 0.33) {
                    return Quickshell.iconPath("audio-volume-low")
                }
                if(Pipewire.defaultAudioSink?.audio.volume <= 0.66) {
                    return Quickshell.iconPath("audio-volume-medium")
                }
                return Quickshell.iconPath("audio-volume-high")
            }
            implicitSize: 18
        }

        Text {
            color: Theme.fg
            font.bold: true
            anchors.verticalCenter: parent.verticalCenter
            text: {
                if(!Pipewire.defaultAudioSink) {
                    return "Loading..."
                }
                if(Pipewire.defaultAudioSink?.audio.muted) {
                    return "Muted"
                }
                return Math.round(Pipewire.defaultAudioSink?.audio.volume * 100) + "%"
            }
        }

    }
      MouseArea {
                id: mouseArea
                cursorShape: Qt.PointingHandCursor
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    if(Pipewire.defaultAudioSink) {
                        Pipewire.defaultAudioSink.audio.muted = !Pipewire.defaultAudioSink.audio.muted
                    }
                }
            }
}
