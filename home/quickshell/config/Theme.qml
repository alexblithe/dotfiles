pragma Singleton
import QtQuick

QtObject {
    id: palette

    // Backgrounds & Foreground
    readonly property color bg_dim: "#232A2E"
    readonly property color bg0: "#2D353B"
    readonly property color bg1: "#343F44"
    readonly property color bg2: "#3D484D"
    readonly property color bg3: "#475258"
    readonly property color bg4: "#4F585E"
    readonly property color bg5: "#56635F"
    readonly property color fg: "#D3C6AA"

    // Tinted Backgrounds
    readonly property color bg_red: "#514045"
    readonly property color bg_yellow: "#4D4C43"
    readonly property color bg_green: "#425047"
    readonly property color bg_blue: "#3A515D"
    readonly property color bg_purple: "#4A444E"
    readonly property color bg_visual: "#543A48"

    // Core Syntax & Accent Colors
    readonly property color red: "#E67E80"
    readonly property color yellow: "#DBBC7F"
    readonly property color green: "#A7C080"
    readonly property color blue: "#7FBBB3"
    readonly property color purple: "#D699B6"
    readonly property color aqua: "#83C092"
    readonly property color orange: "#E69875"

    // Greys & Statuslines
    readonly property color grey0: "#7A8478"
    readonly property color grey1: "#859289"
    readonly property color grey2: "#9DA9A0"
    readonly property color statusline1: "#A7C080"
    readonly property color statusline2: "#D3C6AA"
    readonly property color statusline3: "#E67E80"
}