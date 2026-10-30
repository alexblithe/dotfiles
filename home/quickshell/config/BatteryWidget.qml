import QtQuick
import Quickshell
import Quickshell.Services.UPower
import Quickshell.Widgets

Rectangle {
    id: root

    readonly property real percentage: UPower.displayDevice.percentage
    readonly property bool charging:
        UPower.displayDevice.state === UPowerDeviceState.Charging
        || UPower.displayDevice.state === UPowerDeviceState.PendingCharge
    readonly property color statusColor: charging
        ? Theme.green
        : percentage <= 0.10
            ? Theme.red
            : percentage <= 0.20
                ? Theme.yellow
                : Theme.fg

    visible: UPower.displayDevice.ready && UPower.displayDevice.isLaptopBattery
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
                var iconName = "battery"
                iconName += "-" + Math.round(root.percentage * 10) * 10 // Set to nearest 10%
                iconName += root.charging ? "-charging" : ""
                Quickshell.iconPath(iconName)
            }
            implicitSize: 18
        }

        Text {
            text: `${Math.round(root.percentage * 100)}%`
            color: root.statusColor
            font.pixelSize: 13
        }
    }
}
