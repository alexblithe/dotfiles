import QtQuick
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

Row {
    id: workspaces

    spacing: 4

    function windowIcon(toplevel) {
        const title = toplevel.title || ""
        const clientClass = toplevel.lastIpcObject?.class || ""

        if (/youtube/.test(title))
            return ""
        if (clientClass === "firefox" && /github/.test(title))
            return ""
        if (clientClass === "firefox")
            return ""
        if (clientClass.includes("foot") || title.includes("foot"))
            return ""
        if (clientClass.includes("code") || title.includes("code"))
            return "󰨞"
        if (clientClass.includes("discord") || title.includes("discord"))
            return ""
        if (clientClass.includes("kitty") || title.includes("kitty"))
            return ""
        if (clientClass.includes("zathura") || title.includes("zathura"))
            return "󰌱"
        if (clientClass.includes("calibri") || title.includes("calibri"))
            return ""
        if (clientClass.includes("spotify") || title.includes("spotify"))
            return ""

        const vscodiumTitle = title.match(/.* - (.*) - VSCodium/)
        if (vscodiumTitle)
            return `codium ${vscodiumTitle[1]}`

        return ""
    }

    Repeater {
        model: Hyprland.workspaces

        Rectangle {
            id: workspaceButton

            required property var modelData

            property var windows: Hyprland.toplevels.values.filter(
                toplevel => toplevel.workspace && toplevel.workspace.id === modelData.id
            )
            property bool hovered: mouseArea.containsMouse

            implicitWidth: workspaceLabel.implicitWidth + 16
            width: implicitWidth
            height: 27
            radius: 6
            color: modelData.focused ? Theme.bg1 :
                   modelData.urgent ? Theme.bg_red :
                   hovered ? Theme.bg2 : "transparent"

            Text {
                id: workspaceLabel

                anchors.centerIn: parent
                text: `${workspaceButton.modelData.name}:${workspaceButton.windows.map(toplevel => workspaces.windowIcon(toplevel)).join(":")}`
                color: workspaceButton.modelData.focused ? Theme.blue :
                       workspaceButton.modelData.urgent ? Theme.red : Theme.grey1
                font.family: "JetBrainsMono Nerd Font"
                font.pixelSize: 13
            }

            MouseArea {
                id: mouseArea

                anchors.fill: parent
                hoverEnabled: true
                onClicked: workspaceButton.modelData.activate()
            }
        }
    }
}
