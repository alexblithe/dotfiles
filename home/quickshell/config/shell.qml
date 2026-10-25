import QtQuick
import Quickshell
import Quickshell.Wayland

PanelWindow {
    id: bar
    // Anchor to the top of the screen
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 35
    color: "#1e1e2e" // Background color (e.g., Catppuccin dark)

    Rectangle {
        anchors.fill: parent
        color: "transparent"

        Text {
            text: "Hello Quickshell"
            color: "#cdd6f4"
            anchors.centerIn: parent
        }
    }

}
// import Quickshell
// import QtQuick

// ShellRoot {
//   // Empty shell - quickshell is running but no widgets yet
//   // Add panels/windows here as you build them
// }
