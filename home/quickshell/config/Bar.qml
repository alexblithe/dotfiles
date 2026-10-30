import Quickshell
import Quickshell.Io
import QtQuick

Scope {
    Variants {
        model: Quickshell.screens

        PanelWindow {
            required property var modelData
            screen: modelData
            anchors {
                top: true
                left: true
                right: true
            }
            implicitHeight: 35
            color: Theme.bg0
            ClockWidget {
                anchors.centerIn: parent
            }
            BatteryWidget {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}